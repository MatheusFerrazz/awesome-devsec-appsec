# Publicação

Ações na sua conta do GitHub. O repositório local já está pronto.

## 1. Push

```bash
cd "/Users/matheusferraz/Documents/Projetos /awesome-devsec-appsec"
git push -u origin main
```

O repo remoto precisa existir e estar vazio. O SSH já está autenticado como
`MatheusFerrazz`.

## 2. Descrição e topics

Já configurados. Para conferir:

```bash
curl -s https://api.github.com/repos/MatheusFerrazz/awesome-devsec-appsec \
  | grep -E '"description"|"topics"'
```

## 3. Branch protection na `main`

Settings > Branches > Add branch protection rule:

- Branch name pattern: `main`
- Require a pull request before merging, com 1 aprovação
- Dismiss stale approvals when new commits are pushed
- Require status checks: `Validar formato da lista` e `Verificar links`
- Require conversation resolution
- Do not allow bypassing the above settings

## 4. Actions

Settings > Actions > General > Workflow permissions: `Read repository contents
and packages permissions`.

O workflow `CI` roda em push, em PR e às segundas 06:00 UTC. Na checagem
agendada, uma falha de links abre issue com a etiqueta `link-quebrado`.

## 5. Etiquetas

```bash
gh label create sugestao --color 0E8A16 --description "Sugestão de recurso"
gh label create link-quebrado --color D93F0B --description "Link morto ou incorreto"
gh label create good-first-issue --color 7057FF --description "Boa porta de entrada"
```

## 6. Submeter ao sindresorhus/awesome

Depois de algumas semanas com o repositório estável:

1. Leia https://github.com/sindresorhus/awesome/blob/main/contributing.md
2. Abra um PR adicionando a entrada na seção adequada do `readme.md` de lá.

O `awesome-lint` exige repositório com 30 dias mínimos. Até lá, o
`scripts/check.sh` ignora apenas essa regra e continua bloqueando o resto.

O script também ignora os avisos de "Invalid list item link URL" dentro do
sumário, porque o `awesome-lint` só reconhece sumário com o título `Contents` e
valida os itens como entradas da lista. A exceção é limitada à faixa de linhas do
sumário: qualquer entrada com URL inválida fora dele continua falhando.

## Verificação final

```bash
./scripts/check.sh
git status
```
