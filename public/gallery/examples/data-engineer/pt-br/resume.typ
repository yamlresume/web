#set document(
  title: "Mariana Costa Almeida - Engenheira de Dados Sênior | Plataformas de Dados e Analytics",
  author: "Mariana Costa Almeida",
  keywords: "Engenharia de Dados, Nuvem e Infraestrutura, Programação e Analytics",
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

#text(size: 1.44em)[Engenheira de Dados Sênior | Plataformas de Dados e Analytics]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.costa.almeida@example.com")[mariana\.costa\.almeida\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://marianaalmeida.dev")[https\:\/\/marianaalmeida\.dev]

Rua dos Pinheiros, 450, Apto 82, São Paulo, SP, Brasil, 05422\-000

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/mariana-costa-almeida")[mariana\-costa\-almeida] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/mariana-costa-data")[mariana\-costa\-data]
]

= Informações Básicas

#resume-pad[
- Engenheira de dados com mais de 6 anos de experiência na construção de plataformas de dados escaláveis, confiáveis e orientadas a impacto de negócio
- Especialista em pipelines batch e streaming, modelagem analítica, qualidade de dados e governança em ambientes de nuvem
- Experiência com Apache Spark, Airflow, dbt, Kafka, AWS, Databricks e ferramentas modernas de lakehouse
- Atuação colaborativa com times de produto, ciência de dados, BI e engenharia para traduzir necessidades analíticas em soluções robustas
- Forte compromisso com boas práticas de engenharia, observabilidade, automação e mentoria técnica
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br")[https\:\/\/www\.usp\.br]][Bacharelado, Ciência da Computação, Nota: 8\.7\/10][mar. de 2014–dez. de 2018]
- Formação sólida em fundamentos de computação, bancos de dados e engenharia de software
- Desenvolvimento de projetos acadêmicos com foco em processamento e análise de grandes volumes de dados
- Participação em grupos de estudo de ciência de dados e computação distribuída
#strong[Cursos]: Estruturas de Dados, Algoritmos e Complexidade, Bancos de Dados, Engenharia de Software, Sistemas Distribuídos, Estatística Aplicada, Aprendizado de Máquina, Computação em Nuvem

#resume-subheading[Insper][#link("https://www.insper.edu.br")[https\:\/\/www\.insper\.edu\.br]][Mestrado, Ciência de Dados, Nota: 9\.1\/10][mar. de 2019–dez. de 2020]
- Especialização em arquitetura de dados, modelagem analítica e pipelines escaláveis
- Projeto de conclusão sobre qualidade de dados em plataformas de analytics em tempo real
- Desenvolvimento de soluções com foco em impacto de negócio e boas práticas de engenharia
#strong[Cursos]: Engenharia de Dados, Estatística para Ciência de Dados, Aprendizado de Máquina, Visualização de Dados, Governança de Dados
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Engenheira de Dados Sênior][#link("https://nubank.com.br")[https\:\/\/nubank\.com\.br]][Nubank][fev. de 2022–Atual]
- Liderança técnica na construção e evolução de pipelines de dados batch e streaming para produtos de crédito e risco
- Modelagem de dados analíticos em lakehouse com Apache Iceberg, Spark e dbt, apoiando times de analytics e ciência de dados
- Implementação de contratos de dados, testes automatizados e monitoramento de qualidade com foco em confiabilidade
- Otimização de custos e performance em AWS, reduzindo tempo de processamento e consumo de recursos
- Mentoria de engenheiras e engenheiros de dados júnior e colaboração com produto, engenharia e negócio
#strong[Palavras-chave]: Apache Spark, Apache Airflow, dbt, Kafka, AWS, Data Quality, Lakehouse

#resume-subheading[Engenheira de Dados][#link("https://www.ifood.com.br")[https\:\/\/www\.ifood\.com\.br]][iFood][jan. de 2020–jan. de 2022]
- Desenvolvimento de pipelines ETL e ELT para ingestão de dados de pedidos, entregadores e restaurantes
- Construção de modelos dimensionais e tabelas analíticas para dashboards de operações e growth
- Automação de orquestração com Airflow e padronização de transformações com SQL e Python
- Atuação em iniciativas de observabilidade de dados, catálogo e linhagem para maior confiabilidade
- Parceria com times de BI e produto para traduzir necessidades analíticas em soluções escaláveis
#strong[Palavras-chave]: ETL, ELT, SQL, Python, Airflow, Data Warehouse

#resume-subheading[Analista de Dados Júnior][#link("https://www.itau.com.br")[https\:\/\/www\.itau\.com\.br]][Itaú Unibanco][mar. de 2019–dez. de 2019]
- Manutenção e evolução de rotinas de carga de dados para relatórios regulatórios e gerenciais
- Criação de consultas SQL e scripts Python para tratamento, validação e consolidação de dados
- Apoio à documentação de processos, regras de negócio e dicionários de dados
- Colaboração com áreas de risco e finanças para garantir consistência das informações
#strong[Palavras-chave]: SQL, Python, Dados Financeiros, Relatórios, Qualidade de Dados
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Comunicação técnica])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL iBT 108, Inglês para negócios])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: Leitura técnica])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Engenharia de Dados]: Especialista], [#strong[Palavras-chave]: Apache Spark, Apache Airflow, dbt, Apache Kafka, Databricks, Apache Iceberg, Modelagem de Dados, Data Quality])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Nuvem e Infraestrutura]: Avançado], [#strong[Palavras-chave]: AWS, Terraform, Docker, Kubernetes, Amazon S3, AWS Glue, Snowflake])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programação e Analytics]: Avançado], [#strong[Palavras-chave]: Python, SQL, Scala, PySpark, Git, Power BI, Looker])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio de Excelência em Engenharia de Dados][][Nubank][nov. de 2023]
Reconhecimento por liderança técnica na modernização da plataforma de dados de risco, com ganhos de confiabilidade e redução de custos operacionais\.
]

= Certificados
#resume-pad[
#resume-subheading[AWS Certified Data Analytics \- Specialty][#link("https://aws.amazon.com/certification/certified-data-analytics-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-data\-analytics\-specialty\/]][Amazon Web Services][mar. de 2023]

#resume-subheading[Google Cloud Professional Data Engineer][#link("https://cloud.google.com/learn/certification/data-engineer")[https\:\/\/cloud\.google\.com\/learn\/certification\/data\-engineer]][Google Cloud][ago. de 2022]
]

= Publicações
#resume-pad[
#resume-subheading[Construindo uma Plataforma de Dados Confiável em Escala][#link("https://medium.com/@mariana.costa.almeida/plataforma-de-dados-confiavel")[https\:\/\/medium\.com\/\@mariana\.costa\.almeida\/plataforma\-de\-dados\-confiavel]][Blog de Engenharia do Nubank][ago. de 2023]
- Artigo sobre práticas de contratos de dados, testes automatizados e observabilidade em pipelines críticos
- Discussão de arquitetura lakehouse, governança e métricas de confiabilidade para times de engenharia
]

= Referências
#resume-pad[
#resume-subheading[Prof\. Ricardo Menezes][Professor de Ciência de Dados][ricardo\.menezes\@insper\.edu\.br][\+55 11 91234\-5678]
Mariana combina rigor técnico, visão de negócio e capacidade de liderança\. Seu trabalho em plataformas de dados trouxe ganhos concretos de confiabilidade e eficiência para equipes multidisciplinares\.
]

= Projetos
#resume-pad[
#resume-subheading[Pipeline em Tempo Real para Detecção de Fraudes][#link("https://github.com/mariana-costa-data/fraud-streaming-pipeline")[https\:\/\/github\.com\/mariana\-costa\-data\/fraud\-streaming\-pipeline]][Plataforma de streaming para ingestão, enriquecimento e scoring de eventos transacionais][mai. de 2023–nov. de 2023]
- Arquitetura com Kafka, Spark Structured Streaming e armazenamento em lakehouse para análise de eventos em near real time
- Implementação de regras de qualidade, alertas e monitoramento de latência e throughput
- Integração com modelos de machine learning para apoio à decisão em risco e prevenção a fraudes
#strong[Palavras-chave]: Kafka, Spark Streaming, Lakehouse, Fraude, Data Quality
]

= Interesses
#resume-pad[
#strong[Corrida]: Corrida de rua, Meia maratona, Trilhas

#strong[Comunidade]: Mentoria, Palestras, Open Source

#strong[Música]: Violão, MPB, Jazz
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora Voluntária][#link("https://www.datagirlsbrasil.org.br")[https\:\/\/www\.datagirlsbrasil\.org\.br]][Data Girls Brasil][mar. de 2021–Atual]
- Mentoria de mulheres em transição de carreira para dados, com foco em SQL, Python e projetos práticos
- Participação em eventos e rodas de conversa sobre carreira em engenharia de dados
- Apoio na revisão de currículos e preparação para entrevistas técnicas
]