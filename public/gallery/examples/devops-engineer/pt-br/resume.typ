#set document(
  title: "Rafael Nogueira Almeida - Engenheiro DevOps Sênior | Cloud, Kubernetes e Platform Engineering",
  author: "Rafael Nogueira Almeida",
  keywords: "Cloud & Infraestrutura como Código, Contêineres & Orquestração, CI/CD & Automação, Observabilidade & SRE, Segurança & Conformidade",
  description: "Résumé of Rafael Nogueira Almeida",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "pt", region: "br", number-type: "old-style",
)

// paragraph spacing equals the leading, so consecutive paragraphs are stacked
// exactly like lines within one paragraph — parity with the LaTeX template's
// default \parskip of 0pt
#set par(
  leading: 0.57em,
  spacing: 0.57em,
)

#set list(indent: 1em, spacing: 0.57em)
#set enum(indent: 1em, spacing: 0.57em)

// accent color
#let accent-color = black

// A two-row subheading with left/right aligned columns, analogous to the
// \resumeSubheading command in the LaTeX template (a tabular* whose rows are
// one baselineskip (~13.5pt) apart; Typst grid rows size tightly to the text
// metrics (~7.8pt), hence the calibrated row gutter)
#let resume-subheading(left-top, right-top, left-bottom, right-bottom) = grid(
  columns: (1fr, auto),
  align: (left, right),
  row-gutter: 0.57em,
  strong(left-top), right-top,
  emph(left-bottom), emph(right-bottom),
)

// Content padding, analogous to \begin{adjustwidth}{6pt}{6pt}
#let resume-pad(body) = pad(left: 6pt, right: 6pt, body)

// Sections formatting: small caps headings with a full-width rule below,
// analogous to \titleformat{\section} in the LaTeX template
#show heading.where(level: 1): it => {
  set text(size: 12pt, fill: accent-color)
  block(above: 1.75em, below: 0.8em, width: 100%)[
    #v(-0.333em)
    #smallcaps(it.body)
    // pull the rule up to tighten the title-to-rule gap, matching the LaTeX
    // template's 	itlerule placement
    #v(-0.858em)
    #line(length: 100%, stroke: 0.4pt + accent-color)
  ]
}

// header
#align(center)[
#text(size: 2.488em, weight: "bold")[#smallcaps[Rafael Nogueira Almeida]] #v(-0.2em)

#text(size: 1.44em)[Engenheiro DevOps Sênior | Cloud, Kubernetes e Platform Engineering]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:rafael.nogueira.almeida@outlook.com")[rafael\.nogueira\.almeida\@outlook\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.rafaelalmeida.dev")[https\:\/\/www\.rafaelalmeida\.dev]

Rua Tabapuã, 1234, Apto 82 \- Itaim Bibi, São Paulo, São Paulo, Brasil, 04533\-003

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/rafaelnalmeida")[rafaelnalmeida] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/rafael-almeida-devops")[rafael\-almeida\-devops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M504 204.6l-.7-1.8-69.7-181.8c-1.4-3.6-3.9-6.6-7.2-8.6-2.4-1.6-5.1-2.5-8-2.8s-5.7 .1-8.4 1.1-5.1 2.7-7.1 4.8c-1.9 2.1-3.3 4.7-4.1 7.4l-47 144-190.5 0-47.1-144c-.8-2.8-2.2-5.3-4.1-7.4-2-2.1-4.4-3.7-7.1-4.8-2.6-1-5.5-1.4-8.4-1.1s-5.6 1.2-8 2.8c-3.2 2-5.8 5.1-7.2 8.6L9.8 202.8 9 204.6c-10 26.2-11.3 55-3.5 82 7.7 26.9 24 50.7 46.4 67.6l.3 .2 .6 .4 106 79.5c38.5 29.1 66.7 50.3 84.6 63.9 3.7 1.9 8.3 4.3 13 4.3s9.3-2.4 13-4.3c17.9-13.5 46.1-34.9 84.6-63.9l106.7-79.9 .3-.3c22.4-16.9 38.7-40.6 45.6-67.5 8.6-27 7.4-55.8-2.6-82z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://gitlab.com/rafaelnalmeida")[rafaelnalmeida]
]

= Informações Básicas

#resume-pad[
Engenheiro DevOps com mais de 8 anos de experiência em nuvem, automação de infraestrutura e plataformas de entrega contínua\.

- Especialista em Kubernetes, Terraform e AWS, com foco em confiabilidade, escalabilidade e eficiência de custos
- Reduzi em 70% o tempo de provisionamento de ambientes e em 60% o lead time de deploy em times de produto
- Vivência em práticas SRE, definição de SLOs, resposta a incidentes e cultura de pós\-mortem sem culpa
- Atuação em mentoria, documentação técnica e disseminação de boas práticas de Platform Engineering
]

= Formação
#resume-pad[
#resume-subheading[Universidade Estadual de Campinas][#link("https://www.unicamp.br")[https\:\/\/www\.unicamp\.br]][Bacharelado, Engenharia de Computação, Nota: 8\.4\/10][mar. de 2013–dez. de 2017]
- Base sólida em sistemas distribuídos, redes e administração de sistemas Linux
- Projeto de conclusão sobre orquestração de contêineres e escalabilidade horizontal de serviços
- Monitoria voluntária na disciplina de Sistemas Operacionais
#strong[Cursos]: Sistemas Operacionais, Redes de Computadores, Sistemas Distribuídos, Banco de Dados, Engenharia de Software, Segurança da Informação, Computação em Nuvem

#resume-subheading[FIAP \- Faculdade de Informática e Administração Paulista][#link("https://www.fiap.com.br")[https\:\/\/www\.fiap\.com\.br]][Diploma, Arquitetura de Soluções em Cloud Computing][fev. de 2021–nov. de 2022]
- Pós\-graduação lato sensu com foco em arquitetura de nuvem, multi\-cloud e governança
- Trabalho final sobre plataformas internas de autoatendimento para times de engenharia
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Engenheiro DevOps Sênior][#link("https://www.nuvemviva.com.br")[https\:\/\/www\.nuvemviva\.com\.br]][Nuvem Viva Tecnologia][mar. de 2022–Atual]
- Lidero a modernização da plataforma de microsserviços em Kubernetes (Amazon EKS), atendendo mais de 40 squads de produto
- Estruturei a infraestrutura como código com Terraform e Terragrunt, reduzindo em 70% o tempo de provisionamento de novos ambientes
- Implementei pipelines de entrega contínua com GitLab CI e Argo CD, diminuindo o lead time de deploy de 2 dias para 40 minutos
- Defini SLOs, alertas e runbooks em Prometheus e Grafana, reduzindo o MTTR de incidentes críticos em 55%
- Conduzi iniciativas de FinOps que geraram economia anual de R\$ 1,2 milhão em custos de nuvem
- Mentorei 5 engenheiros e engenheiras em práticas SRE, segurança de contêineres e análise de incidentes
#strong[Palavras-chave]: Kubernetes, Terraform, AWS, SRE, FinOps

#resume-subheading[Engenheiro DevOps][#link("https://www.pagfacil.com.br")[https\:\/\/www\.pagfacil\.com\.br]][PagFácil Pagamentos][jan. de 2020–fev. de 2022]
- Migrei cargas monolíticas para contêineres Docker orquestrados em Kubernetes, elevando a disponibilidade de 99,5% para 99,95%
- Automatizei o provisionamento de servidores com Ansible e Packer, eliminando tarefas manuais repetitivas de operação
- Implementei a stack de observabilidade com ELK e Datadog, cobrindo 100% dos serviços críticos de pagamento
- Introduzi gestão de segredos com Vault e políticas de menor privilégio alinhadas ao PCI DSS
- Atuei em plantões on\-call e na resposta a incidentes em ambiente de alto volume transacional
#strong[Palavras-chave]: CI\/CD, Docker, Jenkins, Observabilidade, Vault

#resume-subheading[Analista de Infraestrutura e Automação][][Sistemas Origem Consultoria][jul. de 2017–dez. de 2019]
- Administrei ambientes Linux (Debian e RHEL) e clusters de virtualização VMware para clientes de médio porte
- Desenvolvi scripts em Python e Bash para automação de backups, monitoramento e deploys
- Configurei balanceadores Nginx, certificados TLS e VPNs site\-to\-site entre unidades dos clientes
- Documentei procedimentos operacionais e treinei equipes de suporte de primeiro e segundo nível
#strong[Palavras-chave]: Linux, Ansible, Virtualização, Scripts, Nginx
]

= Idiomas
#resume-pad[
#strong[Português]: Nativo ou Bilíngue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL iBT 108, Reuniões técnicas diárias])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: Leitura de documentação])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud & Infraestrutura como Código]: Especialista], [#strong[Palavras-chave]: AWS, Azure, Terraform, Terragrunt, Ansible, Packer])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Contêineres & Orquestração]: Especialista], [#strong[Palavras-chave]: Docker, Kubernetes, Helm, Argo CD, Istio])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CI\/CD & Automação]: Avançado], [#strong[Palavras-chave]: GitLab CI, GitHub Actions, Jenkins, Python, Bash])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Observabilidade & SRE]: Avançado], [#strong[Palavras-chave]: Prometheus, Grafana, Datadog, OpenTelemetry, ELK])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Segurança & Conformidade]: Intermediário], [#strong[Palavras-chave]: Vault, IAM, Trivy, PCI DSS, LGPD])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio Inovação Interna \- Plataforma de Autoatendimento][][Nuvem Viva Tecnologia][dez. de 2023]
Reconhecimento pelo desenvolvimento da plataforma interna de provisionamento de ambientes, que reduziu em 70% o tempo de entrega de infraestrutura para as squads de produto\.

#resume-subheading[Destaque Técnico do Ano][][PagFácil Pagamentos][jan. de 2021]
Premiação anual concedida aos profissionais de maior impacto técnico, pela liderança da migração para contêineres e pela melhoria dos indicadores de disponibilidade da plataforma de pagamentos\.
]

= Certificados
#resume-pad[
#resume-subheading[AWS Certified Solutions Architect \- Professional][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][mar. de 2023]

#resume-subheading[Certified Kubernetes Administrator (CKA)][#link("https://www.cncf.io/certifications/cka/")[https\:\/\/www\.cncf\.io\/certifications\/cka\/]][Cloud Native Computing Foundation][jul. de 2022]

#resume-subheading[HashiCorp Certified\: Terraform Associate][#link("https://www.hashicorp.com/certifications/terraform-associate")[https\:\/\/www\.hashicorp\.com\/certifications\/terraform\-associate]][HashiCorp][nov. de 2021]
]

= Publicações
#resume-pad[
#resume-subheading[Escalando clusters Kubernetes com Karpenter no Amazon EKS][#link("https://medium.com/@rafaelnalmeida/escalando-clusters-kubernetes-com-karpenter-no-amazon-eks-9f1c2b7a4d13")[https\:\/\/medium\.com\/\@rafaelnalmeida\/escalando\-clusters\-kubernetes\-com\-karpenter\-no\-amazon\-eks\-9f1c2b7a4d13]][Blog Técnico Nuvem Viva][ago. de 2023]
- Artigo técnico sobre provisionamento dinâmico de nós e redução de custos em clusters EKS
- Comparativo entre Cluster Autoscaler e Karpenter em cargas de trabalho variáveis
- Apresenta resultados reais com economia de 30% em custos de computação
]

= Referências
#resume-pad[
#resume-subheading[Camila Ferreira dos Santos][Gerente de Plataforma na Nuvem Viva Tecnologia][camila\.santos\@nuvemviva\.com\.br][\+55 11 97654\-3210]
Rafael é referência técnica em Kubernetes e Terraform no time\. Conduz iniciativas complexas com autonomia, comunica\-se bem com áreas de produto e eleva o nível técnico de quem trabalha ao seu lado\.

#resume-subheading[Eduardo Nakamura][Diretor de Engenharia na PagFácil Pagamentos][eduardo\.nakamura\@pagfacil\.com\.br][\+55 11 96543\-2109]
Durante dois anos, Rafael foi responsável por nossa plataforma de entrega contínua\. Sua atuação reduziu drasticamente o tempo de deploy e trouxe uma cultura de confiabilidade que permanece até hoje\.
]

= Projetos
#resume-pad[
#resume-subheading[Plataforma de Autoatendimento de Infraestrutura][#link("https://github.com/rafaelnalmeida/plataforma-autoatendimento")[https\:\/\/github\.com\/rafaelnalmeida\/plataforma\-autoatendimento]][Plataforma interna que permite às squads provisionar ambientes completos por meio de pull requests\.][mar. de 2023–nov. de 2023]
- Construída com Backstage, Terraform, Argo CD e Kubernetes em modelo GitOps
- Reduziu de 3 dias para 25 minutos o tempo de criação de ambientes de homologação
- Adotada por 32 squads, com mais de 400 ambientes provisionados no primeiro semestre
#strong[Palavras-chave]: Backstage, Terraform, Argo CD, Kubernetes, GitOps

#resume-subheading[Observabilidade para Pagamentos em Tempo Real][][Stack de métricas, logs e traces para monitorar transações críticas 24 horas por dia\.][fev. de 2021–out. de 2021]
- Instrumentação de serviços com OpenTelemetry e correlação de traces ponta a ponta
- Dashboards e alertas baseados em SLOs de latência e taxa de erro
- Redução de 55% no tempo médio de diagnóstico de falhas em produção
#strong[Palavras-chave]: OpenTelemetry, Grafana, Datadog, SLO
]

= Interesses
#resume-pad[
#strong[Esportes]: Corrida de rua, Ciclismo, Natação

#strong[Comunidade Técnica]: Palestras, Open Source, Mentoria

#strong[Música]: Guitarra, Vinis
]

= Voluntariado
#resume-pad[
#resume-subheading[Voluntário na Organização][#link("https://devopsdays.org/sao-paulo")[https\:\/\/devopsdays\.org\/sao\-paulo]][DevOpsDays São Paulo][mar. de 2019–nov. de 2023]
- Participei da organização de edições do DevOpsDays São Paulo, apoiando curadoria de palestras e logística do evento
- Ministrei workshops introdutórios de Kubernetes e Terraform para mais de 200 participantes
- Atuei como mentor em programas de entrada de novos profissionais nas áreas de DevOps e SRE
]