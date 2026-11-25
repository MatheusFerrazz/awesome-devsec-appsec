# Awesome DevSec AppSec [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> Uma lista curada de sites, materiais, ferramentas e IAs para DevSec e AppSec — do threat modeling ao pipeline, do código à produção.

Esta lista reúne o que é útil para quem **constrói** software seguro, não apenas para quem o ataca. O foco é DevSec (segurança integrada ao ciclo de desenvolvimento) e AppSec (segurança da aplicação em si), incluindo o uso de IA como apoio e a segurança dos próprios sistemas de IA.

Contribuições são bem-vindas. O processo está descrito no arquivo `CONTRIBUTING.md` e na seção Contribuir, ao final desta página.

**Legenda:** 🇧🇷 conteúdo em português · 🔓 open source · 💰 pago (com versão gratuita quando indicado)

## Índice

- [Comece por aqui](#comece-por-aqui)
- [Padrões, frameworks e maturidade](#padrões-frameworks-e-maturidade)
- [Aprender: cursos, labs e certificações](#aprender-cursos-labs-e-certificações)
- [Aplicações vulneráveis e CTFs](#aplicações-vulneráveis-e-ctfs)
- [Ferramentas por fase do SDLC](#ferramentas-por-fase-do-sdlc)
  - [SAST — análise estática](#sast--análise-estática)
  - [DAST — análise dinâmica](#dast--análise-dinâmica)
  - [SCA, SBOM e dependências](#sca-sbom-e-dependências)
  - [Segredos e credenciais](#segredos-e-credenciais)
  - [IaC, Kubernetes e cloud](#iac-kubernetes-e-cloud)
  - [Contêineres e supply chain](#contêineres-e-supply-chain)
  - [APIs, GraphQL e JWT](#apis-graphql-e-jwt)
  - [Fuzzing](#fuzzing)
  - [Orquestração e gestão de findings](#orquestração-e-gestão-de-findings)
  - [Segurança de CI/CD](#segurança-de-cicd)
- [IA e LLMs para AppSec](#ia-e-llms-para-appsec)
- [Segurança de IA e LLMs](#segurança-de-ia-e-llms)
- [Threat modeling](#threat-modeling)
- [Cheatsheets e referências rápidas](#cheatsheets-e-referências-rápidas)
- [Bancos de vulnerabilidades e advisories](#bancos-de-vulnerabilidades-e-advisories)
- [Bug bounty](#bug-bounty)
- [Blogs, newsletters e podcasts](#blogs-newsletters-e-podcasts)
- [Comunidades](#comunidades)
- [Conteúdo em português](#conteúdo-em-português)
- [Imagens Docker prontas](#imagens-docker-prontas)
- [Contribuir](#contribuir)
- [Licença](#licença)

## Comece por aqui

- [OWASP DevSecOps Guideline](https://owasp.org/projects/devsecops-guideline) - Guia de como inserir segurança em pipelines CI/CD, com exemplos de arquitetura e automação.
- [OWASP DevSecOps Maturity Model (DSOMM)](https://owasp.org/projects/devsecops-maturity-model) - Modelo de maturidade que mede a adoção de práticas de segurança no ciclo de entrega.
- [Microsoft Security Development Lifecycle](https://www.microsoft.com/en-us/securityengineering/sdl) - O SDL da Microsoft, com práticas, ferramentas e treinamentos por fase do desenvolvimento.
- [NIST SP 800-218 — Secure Software Development Framework](https://csrc.nist.gov/pubs/sp/800/218/final) - Framework do NIST com práticas verificáveis para produzir software seguro.
- [OpenSSF](https://openssf.org/) - Fundação que mantém projetos e guias para segurança de software open source.
- [CNCF Cloud Native Security Whitepaper](https://github.com/cncf/tag-security/tree/main/community/resources/security-whitepaper) - Referência de segurança para ambientes cloud native, do build ao runtime.
- [Awesome AppSec](https://github.com/paragonie/awesome-appsec) - Lista consolidada de recursos de aprendizado em segurança de aplicações.
- [Awesome DevSecOps](https://github.com/devsecops/awesome-devsecops) - Lista de ferramentas e práticas de DevSecOps.

## Padrões, frameworks e maturidade

- [OWASP ASVS](https://asvs.owasp.org/) - Padrão de verificação de segurança de aplicações, com requisitos testáveis por nível.
- [OWASP WSTG](https://owasp.org/projects/web-security-testing-guide) - Guia de testes de segurança de aplicações web, com casos de teste detalhados.
- [OWASP SAMM](https://owasp.org/projects/samm) - Modelo de maturidade de segurança de software, com avaliação e roteiro de melhoria.
- [OWASP Top 10](https://owasp.org/projects/top-ten) - Os dez riscos mais críticos em aplicações web.
- [OWASP API Security Top 10](https://api-security.owasp.org/editions/2023/en/0x11-t10/) - Os dez riscos mais críticos em APIs.
- [OWASP MASVS](https://mas.owasp.org/MASVS/) - Padrão de verificação de segurança para aplicações móveis.
- [OWASP Proactive Controls](https://owasp.org/projects/proactive-controls) - Controles que desenvolvedores devem aplicar ao escrever código.
- [BSIMM](https://www.blackduck.com/services/security-program/bsimm-maturity-model.html) - Estudo de medição de iniciativas de segurança de software em organizações.
- [SLSA](https://slsa.dev/) - Framework de níveis de integridade para a cadeia de suprimentos de software.
- [in-toto](https://in-toto.io/) - Framework para garantir a integridade de cada etapa do pipeline de build.
- [CycloneDX](https://cyclonedx.org/) - Padrão de SBOM leve, com suporte a VEX e ML-BOM.
- [SPDX](https://spdx.dev/) - Padrão aberto de SBOM e licenciamento mantido pela Linux Foundation.
- [CISA SBOM](https://www.cisa.gov/topics/information-communications-technology-supply-chain-security/sbom) - Recursos e orientações do governo dos EUA sobre SBOM.
- [CWE Top 25](https://cwe.mitre.org/top25/) - As 25 fraquezas de software mais perigosas e prevalentes.

## Aprender: cursos, labs e certificações

- [PortSwigger Web Security Academy](https://portswigger.net/web-security) - Curso gratuito com labs interativos sobre as principais classes de vulnerabilidade web.
- [OWASP Juice Shop](https://owasp.org/projects/juice-shop) - Aplicação vulnerável moderna para treinar testes de segurança.
- [Hack The Box Academy](https://academy.hackthebox.com/) - Trilhas guiadas de segurança ofensiva e defensiva, com labs.
- [TryHackMe](https://tryhackme.com/) - Plataforma com trilhas guiadas e máquinas vulneráveis para iniciantes.
- [PentesterLab](https://pentesterlab.com/) - Exercícios focados em classes específicas de vulnerabilidade, com badges.
- [Root-Me](https://www.root-me.org/) - Desafios progressivos de segurança da informação, muitos deles web.
- [Hacker101](https://www.hacker101.com/) - Curso gratuito da HackerOne com vídeos e CTF.
- [Application Security Labs da Kontra](https://application.security/) - Labs práticos e gratuitos sobre falhas comuns em aplicações.
- [Secure Code Warrior](https://www.securecodewarrior.com/) - Plataforma de treinamento de código seguro com desafios por linguagem. 💰
- [SANS SEC522 — Defending Web Applications](https://www.sans.org/cyber-security-courses/application-security-securing-web-apps-api-microservices) - Curso de codificação segura e defesa de aplicações web. 💰
- [SANS SEC542 — Web App Penetration Testing](https://www.sans.org/cyber-security-courses/web-app-penetration-testing-ethical-hacking) - Curso de pentest de aplicações web. 💰
- [OffSec WEB-300 (OSWE)](https://www.offsec.com/courses/web-300/) - Certificação de exploração avançada de aplicações web com análise de código. 💰
- [Burp Suite Certified Practitioner](https://portswigger.net/web-security/certification) - Certificação prática baseada em labs da PortSwigger. 💰
- [ISC2 CSSLP](https://www.isc2.org/certifications/csslp) - Certificação de ciclo de vida de software seguro. 💰
- [GIAC GWAPT](https://www.giac.org/certifications/web-application-penetration-tester-gwapt) - Certificação de pentest de aplicações web. 💰

## Aplicações vulneráveis e CTFs

- [OWASP WebGoat](https://owasp.org/projects/webgoat) - Aplicação didática com lições guiadas sobre falhas comuns.
- [DVWA](https://github.com/digininja/DVWA) - Damn Vulnerable Web Application, clássico para praticar com diferentes níveis de dificuldade. 🔓
- [OWASP Mutillidae II](https://owasp.org/projects/mutillidae-ii) - Aplicação vulnerável com dezenas de desafios e dicas.
- [OWASP NodeGoat](https://owasp.org/projects/nodejs-goat) - Aplicação Node.js vulnerável para treinar segurança em JavaScript.
- [OWASP WrongSecrets](https://owasp.org/projects/wrongsecrets) - Desafios sobre gestão de segredos e configuração insegura.
- [OWASP Security Shepherd](https://owasp.org/projects/security-shepherd) - Plataforma de treinamento com trilhas por perfil de usuário.
- [OWASP VulnerableApp](https://github.com/SasanLabs/VulnerableApp) - Aplicação com módulos de vulnerabilidade extensíveis. 🔓
- [OWASP crAPI](https://owasp.org/projects/crapi) - API deliberadamente vulnerável para treinar o OWASP API Top 10.
- [OWASP DVSA](https://github.com/OWASP/DVSA) - Damn Vulnerable Serverless Application, para treinar segurança em serverless. 🔓
- [Kubernetes Goat](https://github.com/madhuakula/kubernetes-goat) - Ambiente vulnerável para treinar segurança em Kubernetes. 🔓
- [Damn Vulnerable GraphQL Application](https://github.com/dolevf/Damn-Vulnerable-GraphQL-Application) - Aplicação GraphQL vulnerável para treinar falhas específicas de GraphQL. 🔓
- [VAmPI](https://github.com/erev0s/VAmPI) - API vulnerável em Flask para treinar o OWASP API Top 10. 🔓
- [Firing Range](https://github.com/google/firing-range) - Testbed do Google para avaliar scanners de segurança web. 🔓
- [Google Gruyere](https://google-gruyere.appspot.com/) - Aplicação web vulnerável com guia de exploração e defesa.
- [XSS Game](https://xss-game.appspot.com/) - Desafios progressivos de cross-site scripting do Google.
- [PortSwigger Labs](https://portswigger.net/web-security/all-labs) - Catálogo completo de labs da Web Security Academy.
- [Hack The Box](https://www.hackthebox.com/) - Máquinas e desafios de segurança ofensiva. 💰
- [picoCTF](https://picoctf.org/) - CTF educacional gratuito para iniciantes.
- [CTFtime](https://ctftime.org/) - Calendário e ranking global de competições CTF.

## Ferramentas por fase do SDLC

### SAST — análise estática

- [Semgrep](https://semgrep.dev/) - Análise estática rápida com regras por linguagem e detecção de padrões de fluxo de dados. 🔓
- [CodeQL](https://codeql.github.com/) - Motor de consulta semântica do GitHub para análise estática de código. 🔓
- [SonarQube](https://www.sonarsource.com/products/sonarqube/) - Plataforma de qualidade e segurança de código com análise contínua. 🔓
- [Opengrep](https://github.com/opengrep/opengrep) - Fork comunitário do Semgrep, mantido sob licença aberta. 🔓
- [Bandit](https://github.com/PyCQA/bandit) - Análise estática de segurança para código Python. 🔓
- [gosec](https://github.com/securego/gosec) - Análise estática de segurança para código Go. 🔓
- [Brakeman](https://github.com/presidentbeef/brakeman) - Scanner estático de segurança para aplicações Ruby on Rails. 🔓
- [njsscan](https://github.com/ajinabraham/njsscan) - Scanner estático para aplicações Node.js. 🔓
- [eslint-plugin-security](https://github.com/eslint-community/eslint-plugin-security) - Regras de segurança para ESLint. 🔓
- [Bearer](https://github.com/Bearer/bearer) - Análise estática focada em fluxo de dados e privacidade. 🔓
- [Snyk Code](https://snyk.io/product/snyk-code/) - Análise estática com correções sugeridas por IA. 💰

### DAST — análise dinâmica

- [OWASP ZAP](https://www.zaproxy.org/) - Proxy de interceptação e scanner de vulnerabilidades web, com automação via API. 🔓
- [Burp Suite](https://portswigger.net/burp) - Suíte de testes de segurança web, referência do mercado. 💰
- [Caido](https://www.caido.io/) - Proxy web moderno em Rust, com extensões. 💰
- [Nuclei](https://github.com/projectdiscovery/nuclei) - Scanner baseado em templates YAML mantido pela comunidade. 🔓
- [Nikto](https://github.com/sullo/nikto) - Scanner de servidores web e arquivos perigosos. 🔓
- [ffuf](https://github.com/ffuf/ffuf) - Fuzzer web rápido para descoberta de diretórios, parâmetros e vhosts. 🔓
- [feroxbuster](https://github.com/epi052/feroxbuster) - Ferramenta de content discovery recursiva em Rust. 🔓
- [katana](https://github.com/projectdiscovery/katana) - Crawler de nova geração para mapeamento de aplicações. 🔓
- [httpx](https://github.com/projectdiscovery/httpx) - Toolkit HTTP para sondagem em escala de hosts e serviços. 🔓
- [subfinder](https://github.com/projectdiscovery/subfinder) - Descoberta passiva de subdomínios. 🔓
- [Amass](https://github.com/owasp-amass/amass) - Mapeamento de superfície de ataque e enumeração de DNS. 🔓
- [Arjun](https://github.com/s0md3v/Arjun) - Descoberta de parâmetros HTTP ocultos. 🔓
- [Dalfox](https://github.com/hahwul/dalfox) - Scanner e explorador de XSS. 🔓
- [XSStrike](https://github.com/s0md3v/XSStrike) - Scanner de XSS com análise de contexto e bypass de filtros. 🔓
- [sqlmap](https://github.com/sqlmapproject/sqlmap) - Detecção e exploração automatizada de injeção SQL. 🔓
- [Commix](https://github.com/commixproject/commix) - Detecção e exploração de injeção de comandos do sistema operacional. 🔓
- [WPScan](https://github.com/wpscanteam/wpscan) - Scanner de vulnerabilidades em WordPress. 🔓
- [WhatWeb](https://github.com/urbanadventurer/WhatWeb) - Fingerprinting de tecnologias web. 🔓

### SCA, SBOM e dependências

- [OWASP Dependency-Check](https://owasp.org/projects/dependency-check) - Identifica dependências com CVEs conhecidas. 🔓
- [Trivy](https://github.com/aquasecurity/trivy) - Scanner all-in-one para dependências, imagens, IaC e segredos. 🔓
- [Grype](https://github.com/anchore/grype) - Scanner de vulnerabilidades para imagens e sistemas de arquivos. 🔓
- [Syft](https://github.com/anchore/syft) - Geração de SBOM a partir de imagens e diretórios. 🔓
- [OSV-Scanner](https://github.com/google/osv-scanner) - Scanner de dependências baseado no banco OSV do Google. 🔓
- [OWASP dep-scan](https://github.com/owasp-dep-scan/dep-scan) - Auditoria de dependências e containers com foco em risco. 🔓
- [cdxgen](https://github.com/cdxgen/cdxgen) - Geração de SBOM CycloneDX para várias linguagens e containers. 🔓
- [pip-audit](https://github.com/pypa/pip-audit) - Auditoria de dependências Python. 🔓
- [Dependabot](https://github.com/dependabot) - Atualização automatizada de dependências no GitHub. 🔓
- [Renovate](https://github.com/renovatebot/renovate) - Atualização automatizada de dependências multi-plataforma. 🔓
- [Snyk Open Source](https://snyk.io/product/open-source-security-management/) - SCA com correções e priorização por exploitabilidade. 💰

### Segredos e credenciais

- [gitleaks](https://github.com/gitleaks/gitleaks) - Detecção de segredos em repositórios Git e no histórico. 🔓
- [TruffleHog](https://github.com/trufflesecurity/trufflehog) - Busca de credenciais com verificação de validade. 🔓
- [detect-secrets](https://github.com/Yelp/detect-secrets) - Detecção de segredos com baseline para evitar falsos positivos. 🔓
- [ggshield](https://github.com/GitGuardian/ggshield) - CLI da GitGuardian para varredura local e em pre-commit. 🔓
- [secretlint](https://github.com/secretlint/secretlint) - Linter de segredos plugável para vários formatos de arquivo. 🔓

### IaC, Kubernetes e cloud

- [Checkov](https://github.com/bridgecrewio/checkov) - Análise estática de IaC, containers e pipelines. 🔓
- [KICS](https://github.com/Checkmarx/kics) - Scanner de configuração insegura em IaC, com centenas de queries. 🔓
- [Terrascan](https://github.com/tenable/terrascan) - Detecção de más configurações em IaC e Kubernetes. 🔓
- [tflint](https://github.com/terraform-linters/tflint) - Linter de Terraform com regras por provedor. 🔓
- [Conftest](https://github.com/open-policy-agent/conftest) - Testes de configuração com políticas Rego. 🔓
- [Open Policy Agent](https://www.openpolicyagent.org/) - Motor de políticas genérico usado para guardrails em pipelines. 🔓
- [kube-bench](https://github.com/aquasecurity/kube-bench) - Verificação do CIS Kubernetes Benchmark. 🔓
- [Kubescape](https://github.com/kubescape/kubescape) - Postura de segurança para Kubernetes com múltiplos frameworks. 🔓
- [kube-score](https://github.com/zegl/kube-score) - Análise estática de manifests Kubernetes. 🔓
- [Polaris](https://github.com/FairwindsOps/polaris) - Validação de boas práticas em workloads Kubernetes. 🔓

### Contêineres e supply chain

- [Docker Scout](https://docs.docker.com/scout/) - Análise de imagens e recomendações de correção integradas ao Docker. 💰
- [Hadolint](https://github.com/hadolint/hadolint) - Linter de Dockerfile com boas práticas. 🔓
- [Dockle](https://github.com/goodwithtech/dockle) - Verificação de boas práticas em imagens de container. 🔓
- [Falco](https://github.com/falcosecurity/falco) - Detecção de comportamento anômalo em runtime no Kubernetes. 🔓
- [Clair](https://github.com/quay/clair) - Análise estática de vulnerabilidades em imagens de container. 🔓
- [cosign](https://github.com/sigstore/cosign) - Assinatura e verificação de imagens e artefatos. 🔓
- [OpenSSF Scorecard](https://github.com/ossf/scorecard) - Avaliação de práticas de segurança de repositórios open source. 🔓

### APIs, GraphQL e JWT

- [Schemathesis](https://github.com/schemathesis/schemathesis) - Testes baseados em propriedades a partir de especificações OpenAPI e GraphQL. 🔓
- [RESTler](https://github.com/microsoft/restler-fuzzer) - Fuzzer stateful de APIs REST da Microsoft. 🔓
- [kiterunner](https://github.com/assetnote/kiterunner) - Descoberta de endpoints de API por contexto. 🔓
- [jwt_tool](https://github.com/ticarpi/jwt_tool) - Testes de segurança em tokens JWT. 🔓
- [jwt.io](https://www.jwt.io/) - Decodificação e inspeção de tokens JWT no navegador.
- [graphql-cop](https://github.com/dolevf/graphql-cop) - Auditoria de más configurações em endpoints GraphQL. 🔓
- [InQL](https://github.com/doyensec/inql) - Extensão de Burp para testes de segurança em GraphQL. 🔓
- [42Crunch](https://42crunch.com/) - Auditoria e proteção de contratos OpenAPI. 💰

### Fuzzing

- [AFL++](https://github.com/AFLplusplus/AFLplusplus) - Fuzzer com cobertura de código, referência em pesquisa. 🔓
- [libFuzzer](https://llvm.org/docs/LibFuzzer.html) - Fuzzer in-process do LLVM para testes de bibliotecas. 🔓
- [Atheris](https://github.com/google/atheris) - Fuzzing com cobertura para código Python. 🔓
- [OSS-Fuzz](https://github.com/google/oss-fuzz) - Serviço contínuo de fuzzing para projetos open source. 🔓
- [Jazzer](https://github.com/CodeIntelligenceTesting/jazzer) - Fuzzing com cobertura para JVM. 🔓
- [boofuzz](https://github.com/jtpereyda/boofuzz) - Framework de fuzzing de protocolos de rede. 🔓
- [Radamsa](https://gitlab.com/akihe/radamsa) - Gerador de mutações para testes de robustez. 🔓

### Orquestração e gestão de findings

- [DefectDojo](https://github.com/DefectDojo/django-DefectDojo) - Plataforma de gestão de vulnerabilidades e deduplicação de findings. 🔓
- [OWASP Dependency-Track](https://owasp.org/projects/dependency-track) - Análise contínua de SBOM com monitoramento de risco em componentes. 🔓
- [Faraday](https://github.com/infobyte/faraday) - Plataforma de gestão de resultados de pentest. 🔓

### Segurança de CI/CD

- [zizmor](https://github.com/zizmorcore/zizmor) - Auditoria estática de workflows do GitHub Actions. 🔓
- [actionlint](https://github.com/rhysd/actionlint) - Linter de workflows do GitHub Actions. 🔓
- [poutine](https://github.com/boostsecurityio/poutine) - Detecção de vulnerabilidades em pipelines CI/CD. 🔓
- [StepSecurity](https://www.stepsecurity.io/) - Proteção de runners e workflows contra ataques de supply chain. 💰

## IA e LLMs para AppSec

- [GitHub Copilot Autofix](https://docs.github.com/en/code-security/responsible-use/security-and-quality-ai-features) - Sugestões automáticas de correção para alertas do CodeQL.
- [Semgrep Assistant](https://docs.semgrep.dev/semgrep-multimodal/overview) - Triagem e explicação de findings com LLM, com memória de decisões anteriores. 💰
- [Snyk DeepCode AI](https://snyk.io/platform/deepcode-ai/) - Modelos treinados em segurança para análise e correção de código. 💰
- [Amazon CodeGuru Security](https://aws.amazon.com/codeguru/) - Detecção de vulnerabilidades e segredos com recomendações. 💰
- [Vulnhuntr](https://github.com/protectai/vulnhuntr) - Detecção de vulnerabilidades exploráveis remotamente usando LLMs. 🔓
- [Buttercup](https://github.com/trailofbits/buttercup) - Agente de IA para encontrar falhas em código com validação de resultados. 🔓
- [PentestGPT](https://github.com/GreyDGL/PentestGPT) - Agente que conduz tarefas de pentest com raciocínio em etapas. 🔓
- [CAI — Cybersecurity AI](https://github.com/aliasrobotics/cai) - Framework de agentes de segurança ofensiva e defensiva. 🔓
- [Strix](https://github.com/usestrix/strix) - Agentes autônomos que testam aplicações e validam achados com PoC. 🔓
- [XBOW](https://xbow.com/) - Pentest autônomo com validação de exploração. 💰
- [AI Cyber Challenge (AIxCC)](https://aicyberchallenge.com/) - Competição da DARPA de sistemas autônomos de descoberta e correção de falhas.
- [semgrep-mcp](https://github.com/semgrep/mcp) - Servidor MCP que expõe o Semgrep a agentes de IA. 🔓
- [Burp MCP Server](https://github.com/PortSwigger/mcp-server) - Servidor MCP oficial da PortSwigger para o Burp Suite. 🔓
- [mcp-scan](https://github.com/snyk/agent-scan) - Verificação de segurança de servidores MCP antes de conectá-los a agentes. 🔓

## Segurança de IA e LLMs

- [OWASP Top 10 for LLM Applications](https://genai.owasp.org/llm-top-10/) - Os dez riscos mais críticos em aplicações baseadas em LLMs.
- [OWASP AI Exchange](https://owaspai.org/) - Base de conhecimento aberta sobre segurança e privacidade de IA.
- [MITRE ATLAS](https://atlas.mitre.org/) - Matriz de táticas e técnicas de ataque contra sistemas de IA.
- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) - Framework de gestão de risco de IA.
- [Garak](https://github.com/NVIDIA/garak) - Scanner de vulnerabilidades em LLMs, com centenas de sondas. 🔓
- [PyRIT](https://github.com/Azure/PyRIT) - Toolkit da Microsoft para testes de risco em IA generativa. 🔓
- [promptfoo](https://github.com/promptfoo/promptfoo) - Testes e avaliação de prompts, incluindo red teaming. 🔓
- [DeepTeam](https://github.com/confident-ai/deepteam) - Framework de red teaming para LLMs e agentes. 🔓
- [LLM Guard](https://github.com/protectai/llm-guard) - Sanitização de entrada e saída para aplicações com LLM. 🔓
- [NeMo Guardrails](https://github.com/NVIDIA-NeMo/Guardrails) - Guardrails programáveis para aplicações conversacionais. 🔓
- [Rebuff](https://github.com/protectai/rebuff) - Detecção de prompt injection em camadas. 🔓
- [Vigil](https://github.com/deadbits/vigil-llm) - Detecção de prompt injection e jailbreak com múltiplos scanners. 🔓
- [ModelScan](https://github.com/protectai/modelscan) - Verificação de modelos de ML contra código malicioso serializado. 🔓
- [Adversarial Robustness Toolbox](https://github.com/Trusted-AI/adversarial-robustness-toolbox) - Ataques e defesas para modelos de machine learning. 🔓
- [Awesome LLM Security](https://github.com/corca-ai/awesome-llm-security) - Lista de recursos sobre segurança de LLMs.
- [Awesome MCP Security](https://github.com/Puliczek/awesome-mcp-security) - Lista de recursos sobre segurança do Model Context Protocol.

## Threat modeling

- [OWASP Threat Dragon](https://owasp.org/projects/threat-dragon) - Ferramenta de diagramas e modelagem de ameaças, com versão web e desktop. 🔓
- [pytm](https://github.com/OWASP/pytm) - Threat modeling como código em Python, com geração de diagramas. 🔓
- [Threagile](https://github.com/Threagile/threagile) - Threat modeling as code com modelo YAML e relatórios. 🔓
- [ThreatSpec](https://github.com/threatspec/threatspec) - Anotações de ameaças junto ao código. 🔓
- [Microsoft Threat Modeling Tool](https://learn.microsoft.com/en-us/azure/security/develop/threat-modeling-tool) - Ferramenta gratuita com metodologia STRIDE. 💰
- [STRIDE](https://learn.microsoft.com/en-us/azure/security/develop/threat-modeling-tool-threats) - Referência das categorias STRIDE e ameaças associadas.
- [LINDDUN](https://linddun.org/) - Metodologia de modelagem de ameaças à privacidade.
- [Threat Modeling Manifesto](https://www.threatmodelingmanifesto.org/) - Princípios e valores para modelagem de ameaças.
- [OWASP Threat Modeling Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Threat_Modeling_Cheat_Sheet.html) - Passo a passo prático de modelagem de ameaças.
- [IriusRisk](https://www.iriusrisk.com/) - Plataforma de threat modeling com automação e integração ao SDLC. 💰

## Cheatsheets e referências rápidas

- [OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/) - Coleção de cheatsheets sobre temas específicos de segurança de aplicações.
- [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) - Payloads e bypasses organizados por tipo de vulnerabilidade. 🔓
- [HackTricks](https://hacktricks.wiki/en/index.html) - Base de conhecimento de técnicas ofensivas e de pentest.
- [GTFOBins](https://gtfobins.org/) - Binários Unix que podem ser abusados para escalar privilégios.
- [LOLBAS](https://lolbas-project.github.io/) - Binários e scripts do Windows abusáveis em pós-exploração.
- [CyberChef](https://gchq.github.io/CyberChef/) - Ferramenta web para codificação, decodificação e transformação de dados.
- [RevShells](https://www.revshells.com/) - Gerador de reverse shells em várias linguagens.

## Bancos de vulnerabilidades e advisories

- [NVD](https://nvd.nist.gov/) - Banco nacional de vulnerabilidades dos EUA, com CVSS e CPE.
- [OSV](https://osv.dev/) - Banco de vulnerabilidades por ecossistema de pacotes.
- [GitHub Advisory Database](https://github.com/advisories) - Advisories de segurança integrados ao GitHub.
- [CVE.org](https://www.cve.org/) - Programa CVE e registro oficial de identificadores.
- [Exploit-DB](https://www.exploit-db.com/) - Arquivo de exploits e provas de conceito públicas.
- [CISA KEV](https://www.cisa.gov/known-exploited-vulnerabilities-catalog) - Catálogo de vulnerabilidades exploradas ativamente.
- [EPSS](https://www.first.org/epss/) - Pontuação de probabilidade de exploração nos próximos 30 dias.
- [CWE](https://cwe.mitre.org/) - Taxonomia de fraquezas de software.
- [CAPEC](https://capec.mitre.org/) - Catálogo de padrões de ataque.
- [AttackerKB](https://attackerkb.com/) - Avaliações da comunidade sobre exploitabilidade de CVEs.
- [Vulners](https://vulners.com/) - Banco agregado de vulnerabilidades e exploits.
- [VulnCheck](https://www.vulncheck.com/) - Base de provas de conceito públicas por CVE.
- [Packet Storm](https://packetstorm.news/) - Arquivo de exploits, advisories e ferramentas.
- [Snyk Vulnerability DB](https://security.snyk.io/) - Banco de vulnerabilidades com orientação de correção.

## Bug bounty

- [HackerOne](https://www.hackerone.com/) - Plataforma de bug bounty e divulgação responsável.
- [Bugcrowd](https://www.bugcrowd.com/) - Plataforma de bug bounty e testes contínuos.
- [Intigriti](https://www.intigriti.com/) - Plataforma europeia de bug bounty.
- [YesWeHack](https://www.yeswehack.com/) - Plataforma de bug bounty com forte presença na Europa.
- [huntr](https://huntr.com/) - Programa de recompensas para projetos open source.
- [Open Bug Bounty](https://www.openbugbounty.org/) - Divulgação responsável sem recompensa financeira.
- [disclose.io](https://disclose.io/) - Padrões e templates de política de divulgação responsável.
- [Google Bug Hunters](https://bughunters.google.com/) - Programa de recompensas do Google.
- [HackerOne Hacktivity](https://hackerone.com/hacktivity/overview) - Relatórios divulgados publicamente, úteis para estudar metodologia.

## Blogs, newsletters e podcasts

- [PortSwigger Research](https://portswigger.net/research) - Pesquisa aplicada em segurança web, com técnicas novas e bypasses.
- [Google Project Zero](https://projectzero.google/) - Pesquisa profunda em vulnerabilidades e exploração.
- [Trail of Bits Blog](https://blog.trailofbits.com/) - Pesquisa em segurança de software, criptografia e fuzzing.
- [Semgrep Blog](https://semgrep.dev/blog/) - Análise estática, regras e práticas de AppSec.
- [Snyk Blog](https://snyk.io/blog/) - Conteúdo sobre segurança de dependências e DevSecOps.
- [ProjectDiscovery Blog](https://blog.projectdiscovery.io/) - Técnicas de reconhecimento e automação de scanners.
- [Assetnote Research](https://www.slcyber.io/assetnote) - Pesquisa em superfície de ataque e falhas em appliances.
- [tl;dr sec](https://tldrsec.com/) - Newsletter semanal com o melhor conteúdo de segurança de aplicações.
- [CloudSecList](https://cloudseclist.com/) - Newsletter sobre segurança em cloud e Kubernetes.
- [Krebs on Security](https://krebsonsecurity.com/) - Investigação jornalística sobre crimes cibernéticos.
- [The Hacker News](https://thehackernews.com/) - Notícias de segurança e vulnerabilidades.
- [BleepingComputer](https://www.bleepingcomputer.com/) - Notícias de segurança com cobertura técnica.
- [Risky Business](https://risky.biz/) - Podcast e newsletter sobre segurança da informação.
- [Darknet Diaries](https://darknetdiaries.com/) - Podcast com histórias reais de segurança ofensiva.
- [Critical Thinking — Bug Bounty Podcast](https://www.criticalthinkingpodcast.io/) - Podcast técnico sobre bug bounty e metodologia.

## Comunidades

- [OWASP](https://owasp.org/) - Comunidade global com projetos, capítulos locais e eventos.
- [OWASP Slack](https://owasp.org/slack/invite) - Espaço de discussão da comunidade OWASP.
- [r/netsec](https://www.reddit.com/r/netsec/) - Subreddit técnico de segurança da informação.
- [r/AskNetsec](https://www.reddit.com/r/AskNetsec/) - Subreddit para dúvidas técnicas de segurança.
- [DEF CON](https://defcon.org/) - Conferência de segurança ofensiva com materiais publicados.
- [BSides](https://bsides.org/) - Rede de conferências locais de segurança.
- [CNCF TAG Security](https://github.com/cncf/tag-security) - Grupo técnico de segurança da CNCF. 🔓
- [ProjectDiscovery Discord](https://discord.com/invite/projectdiscovery) - Comunidade em torno das ferramentas de reconhecimento e scanning.

## Conteúdo em português

- [SecDevLabs](https://github.com/globocom/secDevLabs) - Labs de segurança para desenvolvedores, mantidos pela Globo. 🇧🇷 🔓
- [Horusec](https://github.com/ZupIT/horusec) - Ferramenta de análise estática multi-linguagem mantida pela Zup. 🇧🇷 🔓
- [OWASP São Paulo Chapter](https://owasp.org/chapters/sao-paulo) - Capítulo OWASP de São Paulo, com encontros e materiais. 🇧🇷
- [Roadsec](https://www.roadsec.com.br/) - Conferência brasileira de segurança e hacking. 🇧🇷
- [Hackers do Bem](https://hackersdobem.org.br/) - Programa de formação gratuita em cibersegurança. 🇧🇷
- [Mente Binária](https://mentebinaria.com.br/) - Conteúdo técnico em português sobre engenharia reversa e segurança. 🇧🇷
- [SegInfo](https://seginfo.com.br/) - Portal brasileiro de notícias e artigos de segurança. 🇧🇷
- [Hackaflag](https://hackaflag.com.br/) - Plataforma brasileira de CTF e treinamento. 🇧🇷
- [Desec Security](https://desecsecurity.com/) - Cursos e treinamentos de segurança ofensiva em português. 🇧🇷 💰
- [Solyd Offensive Security](https://solyd.com.br/) - Cursos de pentest e segurança ofensiva em português. 🇧🇷 💰

## Imagens Docker prontas

- `docker pull bkimminich/juice-shop` - [OWASP Juice Shop](https://hub.docker.com/r/bkimminich/juice-shop)
- `docker pull vulnerables/web-dvwa` - [DVWA](https://hub.docker.com/r/vulnerables/web-dvwa)
- `docker pull webgoat/webgoat` - [OWASP WebGoat](https://hub.docker.com/r/webgoat/webgoat)
- `docker pull ghcr.io/zaproxy/zaproxy` - [OWASP ZAP](https://github.com/zaproxy/zaproxy/pkgs/container/zaproxy)
- `docker pull semgrep/semgrep` - [Semgrep](https://hub.docker.com/r/semgrep/semgrep)
- `docker pull aquasec/trivy` - [Trivy](https://hub.docker.com/r/aquasec/trivy)
- `docker pull projectdiscovery/nuclei` - [Nuclei](https://hub.docker.com/r/projectdiscovery/nuclei)
- `docker pull defectdojo/defectdojo` - [DefectDojo](https://hub.docker.com/r/defectdojo/defectdojo-django)
- `docker pull dependencytrack/apiserver` - [OWASP Dependency-Track](https://hub.docker.com/r/dependencytrack/apiserver)
- `docker pull opensecurity/mobile-security-framework-mobsf` - [MobSF](https://hub.docker.com/r/opensecurity/mobile-security-framework-mobsf)
- `docker pull jeroenwillemsen/wrongsecrets` - [OWASP WrongSecrets](https://hub.docker.com/r/jeroenwillemsen/wrongsecrets)
- `docker pull ismisepaul/securityshepherd` - [OWASP Security Shepherd](https://hub.docker.com/r/ismisepaul/securityshepherd)
- `docker pull crapi/crapi-web` - [OWASP crAPI](https://hub.docker.com/r/crapi/crapi-web)
- `docker pull erev0s/vampi` - [VAmPI](https://hub.docker.com/r/erev0s/vampi)

## Contribuir

Contribuições são bem-vindas e este repositório existe para crescer com a comunidade. Antes de abrir um PR, leia o [CONTRIBUTING.md](CONTRIBUTING.md) e o [Código de Conduta](CODE_OF_CONDUCT.md).

Resumo do processo:

1. Abra uma issue ou vá direto ao PR, com uma entrada por PR.
2. Use o formato `- [Nome](https://url) - Descrição em uma linha, com ponto final.`
3. Descreva o recurso sem adjetivos de marketing e sem link de afiliado.
4. Rode `./scripts/check.sh` antes de enviar. O CI repete as mesmas verificações.

## Licença

[![CC0](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

Este trabalho é dedicado ao domínio público sob a licença CC0 1.0 Universal. Consulte o arquivo [LICENSE](LICENSE) para o texto completo.
