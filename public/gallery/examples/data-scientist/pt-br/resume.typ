#set document(
  title: "Ana Beatriz Carvalho - Cientista de Dados Sênior com foco em Machine Learning e soluções analíticas",
  author: "Ana Beatriz Carvalho",
  keywords: "Machine Learning, Estatística, Engenharia de Dados, Visualização de Dados",
  description: "Résumé of Ana Beatriz Carvalho",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Ana Beatriz Carvalho]] #v(-0.2em)

#text(size: 1.44em)[Cientista de Dados Sênior com foco em Machine Learning e soluções analíticas]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ana.carvalho@datainsight.com.br")[ana\.carvalho\@datainsight\.com\.br] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://anabeatrizcarvalho.com.br")[https\:\/\/anabeatrizcarvalho\.com\.br]

Av\. Paulista, 1000, São Paulo, São Paulo, Brasil, 01310\-100

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/anabeatrizcarvalho")[anabeatrizcarvalho] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/anabeatriz-data")[anabeatriz\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@anabeatrizcarvalho")[anabeatrizcarvalho]
]

= Informações Básicas

#resume-pad[
- Cientista de Dados com mais de 8 anos de experiência em modelagem preditiva, mineração de dados e inteligência de negócio\.
- Especialista em desenvolver soluções de machine learning para os setores financeiro e de varejo, gerando redução de custos e aumento de receita\.
- Sólida vivência em Python, SQL, computação em nuvem (AWS, GCP) e ferramentas de visualização de dados\.
- Experiência na liderança de times ágeis, na definição de indicadores e na comunicação de resultados para públicos não técnicos\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo (USP)][#link("https://www.usp.br/")[https\:\/\/www\.usp\.br\/]][Mestrado, Ciência de Dados, Nota: 9\.1][2015\-01\-01–2017\-12\-01]
- Dissertação sobre seleção de atributos e interpretabilidade de modelos preditivos\.
- Atuação como monitora nas disciplinas de estatística e aprendizado de máquina\.
#strong[Cursos]: Aprendizado de Máquina Avançado, Estatística Computacional, Mineração de Dados, Modelagem Preditiva, Visualização de Dados

#resume-subheading[Universidade Estadual de Campinas (Unicamp)][#link("https://www.unicamp.br/")[https\:\/\/www\.unicamp\.br\/]][Bacharelado, Estatística, Nota: 8\.7][2010\-02\-01–2014\-12\-01]
- Iniciação científica em modelos de sobrevivência aplicados à saúde pública\.
- Participação em projetos de consultoria estatística para empresas locais\.
#strong[Cursos]: Inferência Estatística, Modelos Lineares, Amostragem, Análise Multivariada
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Cientista de Dados Sênior][#link("https://www.datawise.com.br")[https\:\/\/www\.datawise\.com\.br]][DataWise Soluções em Dados][2021\-03\-01–Atual]
- Lidero o desenvolvimento de modelos de previsão de churn e propensão de compra para clientes de varejo e finanças\.
- Implementei um pipeline de MLOps que reduziu em 40% o tempo de deploy dos modelos em produção\.
- Criei um framework de testes A\/B e de validação offline que melhorou a confiabilidade dos experimentos\.
- Supervisiono cientistas de dados júnior e contribuo com a definição da arquitetura de dados\.
#strong[Palavras-chave]: Machine Learning, MLOps, Python, AWS, Airflow, Testes A\/B

#resume-subheading[Cientista de Dados][#link("https://www.varejotech.com.br")[https\:\/\/www\.varejotech\.com\.br]][VarejoTech][2018\-01\-01–2021\-02\-01]
- Construí modelos de precificação e segmentação de clientes que elevaram a margem operacional em 12%\.
- Desenvolvi painéis analíticos em Power BI para acompanhamento de metas e detecção de anomalias\.
- Automatizei a coleta, limpeza e integração de dados de vendas e estoque com Python e SQL\.
#strong[Palavras-chave]: Segmentação, Preços, Power BI, SQL, Python, Previsão de Demanda

#resume-subheading[Analista de Dados][#link("https://www.grupobeta.com.br")[https\:\/\/www\.grupobeta\.com\.br]][Grupo Financeiro Beta][2016\-01\-01–2017\-12\-01]
- Atuei na construção de relatórios gerenciais de risco de crédito e inadimplência\.
- Realizei análises exploratórias para apoiar a área de crédito na definição de políticas de concessão\.
- Elaborei indicadores para comitês executivos e apresentações de resultados\.
#strong[Palavras-chave]: Risco de Crédito, Relatórios Gerenciais, SQL, Excel Avançado, Análise Exploratória
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Português do Brasil])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL iBT 110])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: Leitura técnica])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Machine Learning]: Especialista], [#strong[Palavras-chave]: Python, Scikit\-learn, TensorFlow, PyTorch, XGBoost, LightGBM, MLflow, Feature Store])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Estatística]: Especialista], [#strong[Palavras-chave]: Inferência Bayesiana, Séries Temporais, Testes A\/B, Modelos Lineares, Modelos de Sobrevivência])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engenharia de Dados]: Avançado], [#strong[Palavras-chave]: SQL, Apache Spark, Airflow, dbt, Docker, AWS, GCP])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Visualização de Dados]: Avançado], [#strong[Palavras-chave]: Matplotlib, Seaborn, Plotly, Power BI, Looker])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio ABRADe de Inovação em Dados][][Associação Brasileira de Análise de Dados][2023\-11\-15]
Reconhecimento pelo projeto de MLOps aplicado à prevenção de churn em uma base com mais de 5 milhões de clientes\.

#resume-subheading[Destaque Acadêmico][][Universidade Estadual de Campinas][2014\-12\-10]
Reconhecimento pela excelência no desempenho do curso de Estatística entre os concluintes daquele ano\.
]

= Certificados
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2022\-06\-20]

#resume-subheading[TensorFlow Developer Certificate][#link("https://www.tensorflow.org/certificate")[https\:\/\/www\.tensorflow\.org\/certificate]][Google][2021\-03\-15]
]

= Publicações
#resume-pad[
#resume-subheading[Previsão de inadimplência em carteiras de crédito usando aprendizado de máquina][#link("https://www.rbic.org.br")[https\:\/\/www\.rbic\.org\.br]][Revista Brasileira de Inteligência Computacional][2020\-09\-15]
- Apresenta uma comparação entre regressão logística, florestas aleatórias e redes neurais para predição de inadimplência\.
- Discute estratégias de balanceamento de classes e interpretabilidade de modelos em cenários reais de crédito\.
]

= Referências
#resume-pad[
#resume-subheading[Ricardo Nogueira][Gerente de Dados na DataWise Soluções em Dados][ricardo\.nogueira\@datawise\.com\.br][\+55 11 99876\-5432]
Ana Beatriz combina sólida formação estatística com capacidade de liderança e comunicação\. Foi fundamental para a evolução dos nossos modelos de machine learning\.
]

= Projetos
#resume-pad[
#resume-subheading[Plataforma de MLOps para Previsão de Churn][#link("https://github.com/anabeatriz-data/churn-mlops")[https\:\/\/github\.com\/anabeatriz\-data\/churn\-mlops]][Pipeline end\-to\-end que combina automação de treinamento, validação e deploy de modelos de churn\.][2022\-03\-01–Atual]
- Utiliza Docker, Airflow e MLflow para orquestrar as etapas do ciclo de vida do modelo\.
- Reduziu o tempo de atualização dos modelos de semanas para horas no ambiente de produção\.
#strong[Palavras-chave]: MLOps, Docker, Airflow, MLflow, Churn

#resume-subheading[Modelo de Séries Temporais para Previsão de Vendas][#link("https://github.com/anabeatriz-data/series-temporais-vendas")[https\:\/\/github\.com\/anabeatriz\-data\/series\-temporais\-vendas]][Projeto de estudo com modelos ARIMA, Prophet e redes LSTM aplicados a uma base pública de vendas\.][2020\-01\-01–2020\-12\-01]
- Análise comparativa de acurácia entre abordagens clássicas e neurais\.
- Desenvolvimento de um dashboard interativo em Streamlit para exploração dos resultados\.
#strong[Palavras-chave]: Séries Temporais, ARIMA, Prophet, LSTM, Streamlit

#resume-subheading[Painel de Indicadores de Negócio][#link("https://github.com/anabeatriz-data/dashboard-indicadores")[https\:\/\/github\.com\/anabeatriz\-data\/dashboard\-indicadores]][Dashboard criado com Power BI para monitoramento de metas comerciais e qualidade dos dados\.][2019\-08\-01–2019\-10\-01]
- Consolidou mais de 15 fontes de dados em um único painel gerencial\.
- Facilitou a tomada de decisão semanal dos times comerciais\.
#strong[Palavras-chave]: Power BI, Indicadores, DAX, SQL
]

= Interesses
#resume-pad[
#strong[Leitura]: Ficção científica, Não ficção

#strong[Esportes]: Corrida, Yoga
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora voluntária][#link("https://www.mulheresemdados.org.br")[https\:\/\/www\.mulheresemdados\.org\.br]][Mulheres em Dados][2020\-01\-01–Atual]
- Mentoria de carreira para mulheres que estão ingressando na área de dados\.
- Criação de conteúdos sobre machine learning e estatística para a comunidade\.

#resume-subheading[Voluntária em projetos sociais][#link("https://www.datascienceforgood.org.br")[https\:\/\/www\.datascienceforgood\.org\.br]][Ciência de Dados para o Bem][2019\-03\-01–2022\-12\-01]
- Atuação em projetos de análise de dados para organizações sem fins lucrativos nas áreas de educação e saúde\.
]