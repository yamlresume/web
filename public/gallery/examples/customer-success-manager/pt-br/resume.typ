#set document(
  title: "Mariana Costa Almeida - Gerente de Sucesso do Cliente | Customer Success Manager",
  author: "Mariana Costa Almeida",
  keywords: "Customer Success, Ferramentas de CRM, Análise de Dados, Gestão de Projetos, Comunicação",
  description: "Résumé of Mariana Costa Almeida",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Mariana Costa Almeida]] #v(-0.2em)

#text(size: 1.44em)[Gerente de Sucesso do Cliente | Customer Success Manager]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.almeida@email.com")[mariana\.almeida\@email\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://marianaalmeida.com.br")[https\:\/\/marianaalmeida\.com\.br]

Avenida Paulista, 1578, Bela Vista, São Paulo, São Paulo, Brasil, 01310\-200

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marianacalmeida")[marianacalmeida] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@marianaalmeida")[marianaalmeida]
]

= Informações Básicas

#resume-pad[
- Gerente de Sucesso do Cliente com mais de 8 anos de experiência em SaaS B2B, focada em retenção, expansão de receita e satisfação de clientes\.
- Especialista em construir relacionamentos de confiança com stakeholders, liderar equipes multidisciplinares e implementar estratégias de customer success baseadas em dados\.
- Experiência comprovada na redução de churn, aumento de NPS e identificação de oportunidades de upsell e cross\-sell\.
- Fortes habilidades em análise de métricas, gestão de projetos, comunicação e resolução de problemas\.
- Inglês avançado e espanhol intermediário, com vivência em ambientes internacionais\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br")[https\:\/\/www\.usp\.br]][Bacharelado, Administração de Empresas, Nota: 8\.7][fev. de 2012–dez. de 2016]
- Formação sólida em gestão empresarial, com ênfase em relacionamento com clientes e estratégias de retenção\.
- Desenvolvimento de projetos práticos de consultoria para pequenas e médias empresas\.
- Participação ativa em empresa júnior, liderando projetos de customer success\.
#strong[Cursos]: Gestão de Clientes e CRM, Marketing de Serviços, Análise de Dados para Negócios, Gestão de Projetos, Comportamento Organizacional, Negociação e Comunicação
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Senior Customer Success Manager][#link("https://www.nuvemtech.com.br")[https\:\/\/www\.nuvemtech\.com\.br]][NuvemTech][mar. de 2021–Atual]
- Gerencia uma carteira de 45 clientes enterprise, representando R\$ 12 milhões em receita recorrente anual (ARR)\.
- Lidera uma equipe de 6 CSMs, responsável por onboarding, adoção, retenção e expansão\.
- Implementou um programa de QBRs estratégicos que aumentou o NPS de 42 para 68 em 12 meses\.
- Desenvolveu playbooks de sucesso do cliente que reduziram o churn em 22% no primeiro ano\.
- Colabora com Produto, Vendas e Marketing para alinhar a voz do cliente à estratégia corporativa\.
#strong[Palavras-chave]: Retenção, Upsell, NPS, Gestão de Equipes, Onboarding

#resume-subheading[Customer Success Manager][#link("https://www.dataflowsistemas.com.br")[https\:\/\/www\.dataflowsistemas\.com\.br]][DataFlow Sistemas][jan. de 2018–fev. de 2021]
- Gerenciou uma carteira de 120 clientes B2B, com foco em retenção e crescimento\.
- Conduziu análises de health score e implementou ações proativas para prevenir churn\.
- Aumentou a receita de upsell em 30% por meio de identificação de oportunidades e negociação\.
- Realizou treinamentos e webinars para promover a adoção do produto\.
- Atuou como ponto de contato principal para escalonamentos e resolução de problemas\.
#strong[Palavras-chave]: CRM, Customer Success, Análise de Churn, QBR

#resume-subheading[Analista de Sucesso do Cliente][#link("https://www.conectacrm.com.br")[https\:\/\/www\.conectacrm\.com\.br]][ConectaCRM][jul. de 2016–dez. de 2017]
- Prestou suporte a clientes na implementação e uso do software de CRM\.
- Monitorou métricas de satisfação e elaborou relatórios para a liderança\.
- Participou da criação de materiais de autoatendimento e base de conhecimento\.
- Contribuiu para a redução do tempo médio de resposta em 35%\.
#strong[Palavras-chave]: Atendimento, Suporte, Salesforce, Métricas
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL 105, IELTS 7\.5])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: DELE B1])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Customer Success]: Especialista], [#strong[Palavras-chave]: Onboarding, Retenção, Expansão, QBR, NPS])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Ferramentas de CRM]: Avançado], [#strong[Palavras-chave]: Salesforce, HubSpot, Gainsight, Totango])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análise de Dados]: Avançado], [#strong[Palavras-chave]: Power BI, Tableau, Excel Avançado, SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão de Projetos]: Avançado], [#strong[Palavras-chave]: Agile, Scrum, Jira, Trello])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Comunicação]: Especialista], [#strong[Palavras-chave]: Apresentações, Negociação, Escuta Ativa, Feedback])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio Excelência em Customer Success][][NuvemTech][dez. de 2022]
Reconhecimento anual concedido aos profissionais com melhor desempenho em retenção e satisfação de clientes\.

#resume-subheading[Top Performer Q3][][DataFlow Sistemas][out. de 2020]
Destaque por superar metas de NPS e reduzir churn em 15% no trimestre\.
]

= Certificados
#resume-pad[
#resume-subheading[Certified Customer Success Manager (CCSM)][#link("https://www.successcoaching.com/certifications")[https\:\/\/www\.successcoaching\.com\/certifications]][SuccessCOACHING][jun. de 2021]

#resume-subheading[Scrum Fundamentals Certified][#link("https://www.scrumstudy.com/certifications")[https\:\/\/www\.scrumstudy\.com\/certifications]][SCRUMstudy][ago. de 2019]
]

= Publicações
#resume-pad[
#resume-subheading[Como reduzir churn com uma jornada de onboarding eficiente][#link("https://www.customersuccessbrasil.com.br/blog/onboarding-eficiente")[https\:\/\/www\.customersuccessbrasil\.com\.br\/blog\/onboarding\-eficiente]][Blog Customer Success Brasil][mar. de 2023]
Artigo sobre melhores práticas para estruturar o onboarding de clientes SaaS, aumentando a retenção e o tempo de vida útil\.
]

= Projetos
#resume-pad[
#resume-subheading[Programa de Customer Success Escalável][#link("https://www.nuvemtech.com.br/cases/cs-escalavel")[https\:\/\/www\.nuvemtech\.com\.br\/cases\/cs\-escalavel]][Implantação de um modelo escalável de CS para clientes de baixo touch\.][jan. de 2022–dez. de 2022]
- Estruturou playbooks e automações para atendimento de mais de 1\.000 clientes\.
- Reduziu o tempo de resposta em 40% e aumentou o NPS em 12 pontos\.
- Utilizou Gainsight para monitorar saúde do cliente e disparar ações proativas\.
#strong[Palavras-chave]: Escalabilidade, Automação, Gainsight

#resume-subheading[Portal do Cliente 2\.0][#link("https://www.dataflowsistemas.com.br/portal")[https\:\/\/www\.dataflowsistemas\.com\.br\/portal]][Redesenho do portal de autoatendimento para clientes B2B\.][mar. de 2019–nov. de 2019]
- Conduziu pesquisa com usuários e priorizou funcionalidades com base em dados\.
- Aumentou em 25% a adoção do portal e reduziu tickets de suporte em 18%\.
#strong[Palavras-chave]: UX, Autoatendimento, Feedback
]

= Interesses
#resume-pad[
#strong[Voluntariado]: Mentoria, Educação, ONGs

#strong[Esportes]: Corrida, Ciclismo, Natação

#strong[Leitura]: Negócios, Biografias, Tecnologia
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de Carreira][#link("https://www.institutomenteativa.org.br")[https\:\/\/www\.institutomenteativa\.org\.br]][Instituto Mente Ativa][fev. de 2020–dez. de 2023]
- Mentoria voluntária para jovens em início de carreira na área de negócios e tecnologia\.
- Realização de workshops sobre comunicação, currículo e preparação para entrevistas\.

#resume-subheading[Membro do Comitê de Conteúdo][#link("https://www.abcs.com.br")[https\:\/\/www\.abcs\.com\.br]][Associação Brasileira de Customer Success][jan. de 2023–Atual]
- Colaboração na curadoria de conteúdos e eventos para a comunidade de Customer Success\.
- Participação em painéis e discussões sobre tendências do mercado\.
]