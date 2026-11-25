# Como contribuir

Esta lista só é útil porque pessoas como você adicionam, corrigem e removem
entradas. Ao participar, você concorda em seguir o
[Código de Conduta](CODE_OF_CONDUCT.md).

## Formato da entrada

Uma entrada por linha, na seção mais adequada:

```markdown
- [Nome do recurso](https://exemplo.com/) - Descrição objetiva em uma linha, com ponto final.
```

- **Nome**: o nome oficial do projeto, sem tradução forçada.
- **URL**: link direto, HTTPS sempre que disponível.
- **Descrição**: uma linha, começando com maiúscula e terminando com ponto final.
  Diga o que o recurso faz, não o quanto ele é bom.
- **Marcadores**, antes da descrição: `🇧🇷` português · `🔓` open source · `💰` pago.

```markdown
- [Semgrep](https://semgrep.dev/) - Análise estática rápida com regras por linguagem. 🔓
- [Horusec](https://github.com/ZupIT/horusec) - Análise estática multi-linguagem mantida pela Zup. 🇧🇷 🔓
- [Burp Suite](https://portswigger.net/burp) - Suíte de testes de segurança web. 💰
```

## O que entra

- Relevante para DevSec ou AppSec, não apenas segurança ofensiva em geral.
- Ativo: atualização, release ou publicação nos últimos 24 meses.
- Documentação mínima que permita começar sem ajuda.
- Link responde e não exige login, salvo quando o login for o próprio recurso.
- Descrição factual e verificável.

## O que não entra

- Link de afiliado, encurtador ou redirecionamento com rastreamento.
- Conteúdo gerado em massa, sem autoria ou curadoria identificável.
- Ferramenta abandonada há mais de dois anos sem substituto claro.
- Curso pago sem ementa pública.
- Exploit contra produto de terceiros sem correção disponível.
- Duplicata de entrada existente com outro nome.

Uma seção nova só é criada com pelo menos cinco entradas que não caibam em
nenhuma existente. Proponha em issue, não em PR.

## Fluxo do PR

1. Faça um fork e crie um branch descritivo (`add/ferramenta-x`,
   `fix/link-semgrep`).
2. Um PR trata de **um** assunto. Acima de 5 entradas novas, divida.
3. Rode `./scripts/check.sh` e confirme que não há falhas novas.
4. Abra o PR preenchendo o template.
5. O CI roda o `awesome-lint` e a checagem de links. Corrija o que aparecer.
6. Um mantenedor revisa. Ajustes podem ser pedidos antes do merge.

Commits curtos no imperativo, em português:

```
add: Semgrep na seção SAST
fix: link do OWASP ZAP
remove: ferramenta descontinuada
```

## Remoção

Uma entrada sai quando o link está morto há mais de 60 dias sem substituto, o
projeto foi descontinuado, passou a exigir pagamento sem versão gratuita, ou
deixou de ser relevante. Remoções vêm em PR separado, com justificativa.
