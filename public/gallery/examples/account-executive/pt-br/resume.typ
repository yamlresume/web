#set document(
  title: "Carolina Mendes - Executiva de Contas | Vendas B2B SaaS",
  author: "Carolina Mendes",
  keywords: "Vendas B2B, Ferramentas de CRM, Análise de Dados, Comunicação",
  description: "Résumé of Carolina Mendes",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Carolina Mendes]] #v(-0.2em)

#text(size: 1.44em)[Executiva de Contas | Vendas B2B SaaS]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:carolina.mendes@vendaspro.com.br")[carolina\.mendes\@vendaspro\.com\.br] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.carolinamendes.com.br")[https\:\/\/www\.carolinamendes\.com\.br]

Av\. Paulista, 1000, Bela Vista, São Paulo, SP, Brasil, 01310\-100

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/carolinamendes")[carolinamendes] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M224.3 141a115 115 0 1 0 -.6 230 115 115 0 1 0 .6-230zm-.6 40.4a74.6 74.6 0 1 1 .6 149.2 74.6 74.6 0 1 1 -.6-149.2zm93.4-45.1a26.8 26.8 0 1 1 53.6 0 26.8 26.8 0 1 1 -53.6 0zm129.7 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM399 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.instagram.com/carolmendes.vendas")[carolmendes\.vendas]
]

= Informações Básicas

#resume-pad[
Executiva de Contas com mais de 8 anos de experiência em vendas B2B de soluções SaaS, especializada em gestão do ciclo completo de vendas, prospecção estratégica e fechamento de contratos de alto valor\. Histórico comprovado de superação de metas trimestrais e anuais, com forte habilidade em construir relacionamentos de confiança com clientes C\-level\. Experiência em CRM (Salesforce, HubSpot), metodologias de vendas (SPIN, MEDDIC) e análise de dados para tomada de decisão\. Proficiente em português, inglês e espanhol\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br")[https\:\/\/www\.usp\.br]][Bacharelado, Administração de Empresas, Nota: 8\.7][fev. de 2010–dez. de 2014]
- Formação sólida em administração, com foco em estratégias comerciais e gestão de equipes de vendas\.
- Desenvolvimento de habilidades analíticas e de comunicação por meio de projetos práticos e apresentações\.
- Participação em empresa júnior, atuando em prospecção de clientes e elaboração de propostas comerciais\.
#strong[Cursos]: Gestão de Vendas, Marketing Estratégico, Negociação Comercial, Comportamento Organizacional, Análise Financeira, Gestão de Projetos
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Executiva de Contas Sênior][#link("https://www.vendamais.com.br")[https\:\/\/www\.vendamais\.com\.br]][VendaMais Tecnologia][mar. de 2019–Atual]
- Gerenciei um portfólio de mais de 50 contas estratégicas, com foco em soluções SaaS de gestão de vendas e automação de marketing\.
- Superei a meta anual em 145% em 2023, gerando mais de R\$ 4 milhões em receita nova e recorrente\.
- Conduzi negociações complexas com diretores e C\-levels, reduzindo o ciclo de vendas em 20% por meio de propostas de valor personalizadas\.
- Implementei cadências de prospecção outbound e inbound, aumentando em 35% a taxa de conversão de leads em oportunidades\.
- Colaborei com as equipes de Customer Success e Produto para garantir a adoção e a expansão das contas\.
#strong[Palavras-chave]: Vendas B2B, SaaS, CRM, Negociação, Metas

#resume-subheading[Executiva de Contas][#link("https://www.solucoescloud.com.br")[https\:\/\/www\.solucoescloud\.com\.br]][Soluções Cloud Brasil][jan. de 2016–fev. de 2019]
- Responsável pelo ciclo completo de vendas de serviços de infraestrutura em nuvem para médias e grandes empresas\.
- Alcancei 130% da meta anual em 2017 e 2018, com ticket médio de R\$ 80 mil\.
- Desenvolvi relacionamentos com parceiros de canal, gerando 25% do pipeline qualificado\.
- Realizei análises de necessidades técnicas e apresentações de ROI para áreas de TI e Finanças\.
#strong[Palavras-chave]: Cloud, Infraestrutura, Pipeline, ROI

#resume-subheading[Representante de Desenvolvimento de Vendas][#link("https://www.inovatech.com.br")[https\:\/\/www\.inovatech\.com\.br]][InovaTech Sistemas][jul. de 2014–dez. de 2015]
- Prospecção ativa de novos clientes por telefone, e\-mail e LinkedIn, com média de 60 ligações diárias\.
- Qualificação de leads e agendamento de reuniões para o time de executivos de contas\.
- Manutenção do CRM com dados precisos e relatórios semanais de atividades\.
#strong[Palavras-chave]: Prospecção, Qualificação, LinkedIn, CRM
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL iBT 105, Reuniões internacionais])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: DELE B1, Negociação básica])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Vendas B2B]: Especialista], [#strong[Palavras-chave]: Prospecção, Qualificação de Leads, Fechamento de Contratos, Gestão de Pipeline, Negociação])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Ferramentas de CRM]: Avançado], [#strong[Palavras-chave]: Salesforce, HubSpot, Pipedrive, LinkedIn Sales Navigator])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análise de Dados]: Avançado], [#strong[Palavras-chave]: Excel Avançado, Power BI, Tableau, Metas e KPIs])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Comunicação]: Especialista], [#strong[Palavras-chave]: Apresentações C\-level, Storytelling, Escuta Ativa])
]

= Prêmios
#resume-pad[
#resume-subheading[Vendedora do Ano][][VendaMais Tecnologia][dez. de 2023]
Reconhecimento por superar 150% da meta anual e liderar o ranking de vendas da região Sudeste\.

#resume-subheading[Prêmio Excelência em Atendimento][][Soluções Cloud Brasil][nov. de 2018]
Concedido por manter índice de satisfação de clientes acima de 95% e retenção de contratos\.
]

= Certificados
#resume-pad[
#resume-subheading[Certificação em Vendas Consultivas][#link("https://www.fgv.br")[https\:\/\/www\.fgv\.br]][Fundação Getulio Vargas][jun. de 2021]

#resume-subheading[Consultor Certificado Salesforce Sales Cloud][#link("https://trailhead.salesforce.com")[https\:\/\/trailhead\.salesforce\.com]][Salesforce][set. de 2020]

#resume-subheading[Metodologia de Vendas MEDDIC][#link("https://meddic.academy")[https\:\/\/meddic\.academy]][MEDDIC Academy][mar. de 2019]
]

= Publicações
#resume-pad[
#resume-subheading[Estratégias de Prospecção para Vendas SaaS][#link("https://www.revistavendasenegocios.com.br/artigo/prospeccao-saas")[https\:\/\/www\.revistavendasenegocios\.com\.br\/artigo\/prospeccao\-saas]][Revista Vendas & Negócios][ago. de 2022]
Artigo sobre técnicas de prospecção outbound e inbound para empresas de software como serviço, com foco em personalização e uso de dados\.
]

= Projetos
#resume-pad[
#resume-subheading[Programa de Expansão de Receita][#link("https://www.vendamais.com.br/programa-expansao")[https\:\/\/www\.vendamais\.com\.br\/programa\-expansao]][Iniciativa para aumentar receita recorrente em clientes existentes por meio de upsell e cross\-sell\.][jan. de 2022–dez. de 2023]
- Liderança de um programa de expansão que gerou R\$ 2,5 milhões em receita adicional em 12 meses\.
- Desenvolvimento de playbooks de upsell e cross\-sell para equipe de account management\.
- Implementação de cadência de contato e monitoramento de indicadores no Salesforce\.
#strong[Palavras-chave]: Upsell, Cross\-sell, Receita Recorrente, Customer Success
]

= Interesses
#resume-pad[
#strong[Corrida]: Maratonas, Corrida de rua

#strong[Leitura]: Biografias, Negócios, Psicologia
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de Vendas][#link("https://www.vendasparaobem.org.br")[https\:\/\/www\.vendasparaobem\.org\.br]][Instituto Vendas para o Bem][fev. de 2020–Atual]
- Mentoria para jovens em início de carreira comercial, com foco em comunicação, prospecção e ética profissional\.
- Organização de workshops sobre técnicas de vendas e preparação para entrevistas\.
- Apoio na captação de recursos e parcerias com empresas locais\.
]