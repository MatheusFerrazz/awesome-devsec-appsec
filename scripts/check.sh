#!/usr/bin/env bash
#
# Verificações locais do repositório.
#
# Uso:
#   ./scripts/check.sh            # roda lint e links
#   ./scripts/check.sh lint       # só o awesome-lint
#   ./scripts/check.sh links      # só a checagem de links
#   ./scripts/check.sh links README.md   # checa um arquivo específico
#
# Requer curl e npx. Sai com código 1 quando encontra problema.

set -uo pipefail

ARQUIVOS_PADRAO=(README.md CONTRIBUTING.md CODE_OF_CONDUCT.md)
USER_AGENT="Mozilla/5.0 (compatible; awesome-devsec-appsec link checker)"
TIMEOUT=20
PARALELO=8

checar_links() {
  local arquivos=("$@")
  if [ ${#arquivos[@]} -eq 0 ]; then
    arquivos=("${ARQUIVOS_PADRAO[@]}")
  fi

  local tmp
  tmp="$(mktemp -d)"
  local urls="$tmp/urls.txt"
  : > "$urls"

  for arquivo in "${arquivos[@]}"; do
    if [ ! -f "$arquivo" ]; then
      echo "aviso: arquivo não encontrado: $arquivo" >&2
      continue
    fi
    grep -oE 'https?://[^ )>"`]+' "$arquivo" \
      | sed -E 's/[.,;:!?]+$//' \
      | sed -E 's/#.*$//' \
      | grep -vE '^https?://(www\.)?exemplo\.com/?$' \
      | grep -vE '^https?://url$' \
      >> "$urls"
  done

  sort -u "$urls" -o "$urls"
  local total
  total=$(wc -l < "$urls" | tr -d ' ')

  if [ "$total" -eq 0 ]; then
    echo "nenhuma URL encontrada"
    rm -rf "$tmp"
    return 0
  fi

  echo "checando $total URLs únicas em ${#arquivos[@]} arquivo(s)..."
  echo

  checar() {
    local url="$1"
    local codigo
    codigo=$(curl -sS -o /dev/null -L \
      --max-time "$TIMEOUT" \
      --retry 1 \
      -A "$USER_AGENT" \
      -w '%{http_code}' \
      "$url" 2>/dev/null) || codigo="000"

    case "$codigo" in
      2*)              printf 'OK\t%s\t%s\n' "$codigo" "$url" ;;
      403|429|999|3??) printf 'BLOQUEADO\t%s\t%s\n' "$codigo" "$url" ;;
      *)               printf 'FALHA\t%s\t%s\n' "$codigo" "$url" ;;
    esac
  }
  export -f checar
  export TIMEOUT USER_AGENT

  local resultado="$tmp/resultado.tsv"
  xargs -P "$PARALELO" -I{} bash -c 'checar "$@"' _ {} < "$urls" > "$resultado"

  local falhas bloqueados oks
  falhas=$(grep -c '^FALHA' "$resultado" || true)
  bloqueados=$(grep -c '^BLOQUEADO' "$resultado" || true)
  oks=$(grep -c '^OK' "$resultado" || true)

  if [ "$falhas" -gt 0 ]; then
    echo "links com problema:"
    grep '^FALHA' "$resultado" | awk -F'\t' '{ printf "  %-4s %s\n", $2, $3 }'
    echo
  fi

  if [ "$bloqueados" -gt 0 ]; then
    echo "bloqueados por proteção anti-bot (verificar manualmente):"
    grep '^BLOQUEADO' "$resultado" | awk -F'\t' '{ printf "  %-4s %s\n", $2, $3 }'
    echo
  fi

  echo "resumo: $oks ok, $falhas com falha, $bloqueados bloqueados, $total no total"
  rm -rf "$tmp"

  [ "$falhas" -eq 0 ]
}

checar_lint() {
  local saida limpa
  saida="$(mktemp)"
  limpa="$(mktemp)"
  npx --yes awesome-lint > "$saida" 2>&1
  local status=$?

  # O awesome-lint só reconhece o sumário quando o título é "Contents", e nesse
  # caso valida os itens como entradas da lista. Como o sumário aqui é "Índice",
  # com âncoras internas, os avisos "Invalid list item link URL" dentro dele são
  # esperados. Eles são descartados por faixa de linhas, sem afetar o resto.
  local inicio fim
  inicio=$(grep -n '^## Índice$' README.md | cut -d: -f1)
  if [ -n "$inicio" ]; then
    fim=$(awk -v i="$inicio" 'NR > i && /^## /{print NR; exit}' README.md)
    fim=${fim:-999999}
  else
    inicio=0
    fim=0
  fi

  local suprimidos
  suprimidos=$(awk -v ini="$inicio" -v fim="$fim" -v contador="$limpa.count" '
    /^  [A-Za-z0-9._-]+:[0-9]+:[0-9]+$/ { arquivo = $1; sub(/:.*/, "", arquivo) }
    /Invalid list item link URL/ && arquivo == "README.md" {
      if (match($0, /[0-9]+:[0-9]+/)) {
        linha = substr($0, RSTART, RLENGTH)
        sub(/:.*/, "", linha)
        if (linha + 0 >= ini && linha + 0 <= fim) { n++; next }
      }
    }
    { print }
    END { print n + 0 > contador }
  ' "$saida" > "$limpa")
  suprimidos=$(cat "$limpa.count" 2>/dev/null || echo 0)
  rm -f "$limpa.count"

  # Remove o resumo de erros do reporter; o script imprime o seu próprio.
  grep -vE '^  [0-9]+ errors?$' "$limpa" > "$limpa.tmp" && mv "$limpa.tmp" "$limpa"

  # Descarta cabeçalhos de arquivo sem erro abaixo e comprime linhas em branco.
  awk '
    /^  [A-Za-z0-9._-]+:[0-9]+:[0-9]+$/ { pendente = $0; next }
    pendente != "" {
      if ($0 ~ /^  ✖/) { print pendente }
      pendente = ""
    }
    /^[[:space:]]*$/ { if (branco) next; branco = 1; print; next }
    { branco = 0; print }
  ' "$limpa" > "$limpa.tmp" && mv "$limpa.tmp" "$limpa"

  cat "$limpa"

  if [ "${suprimidos:-0}" -gt 0 ]; then
    echo
    echo "$suprimidos avisos do sumário ignorados (âncoras internas, não entradas da lista)"
  fi

  if [ "$status" -eq 0 ]; then
    rm -f "$saida" "$limpa"
    return 0
  fi

  # A regra de idade mínima (30 dias) não diz nada sobre a qualidade da lista.
  local restante
  restante="$(grep -E '✖' "$limpa" \
    | grep -v '✖ Linting' \
    | grep -v 'must be at least 30 days old' || true)"

  rm -f "$saida" "$limpa"

  if [ -z "$restante" ]; then
    echo
    echo "sem erros restantes"
    return 0
  fi

  return 1
}

case "${1:-all}" in
  lint)
    checar_lint
    ;;
  links)
    shift
    checar_links "$@"
    ;;
  all)
    checar_lint
    lint_status=$?
    echo
    checar_links
    links_status=$?
    [ "$lint_status" -eq 0 ] && [ "$links_status" -eq 0 ]
    ;;
  *)
    echo "uso: $0 [all|lint|links] [arquivos...]" >&2
    exit 2
    ;;
esac
