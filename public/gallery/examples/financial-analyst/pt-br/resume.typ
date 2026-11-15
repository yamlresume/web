#set document(
  title: "Mariana Costa Almeida - Analista Financeiro Sênior em Planejamento e Análise",
  author: "Mariana Costa Almeida",
  keywords: "Planejamento e Análise Financeira, Modelagem e Valuation, Business Intelligence, Gestão de Riscos",
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

#text(size: 1.44em)[Analista Financeiro Sênior em Planejamento e Análise]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.almeida@financaspro.com.br")[mariana\.almeida\@financaspro\.com\.br] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marianaalmeida.com.br")[https\:\/\/www\.marianaalmeida\.com\.br]

Av\. Brigadeiro Faria Lima, 1234, São Paulo, São Paulo, Brasil, 01451\-001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/mariana-almeida-financas")[mariana\-almeida\-financas] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@mariana.almeida")[mariana\.almeida]
]

= Informações Básicas

#resume-pad[
- Analista financeiro com mais de 6 anos de experiência em planejamento, orçamento, valuation e análise de performance\.
- Forte atuação em modelos financeiros, projeções de fluxo de caixa e relatórios gerenciais para tomada de decisão\.
- Experiência com Power BI, Excel avançado, SQL e SAP em ambientes corporativos de alta complexidade\.
- Perfil analítico, colaborativo e orientado a resultados, com comunicação clara para públicos executivos\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br")[https\:\/\/www\.usp\.br]][Bacharelado, Administração com ênfase em Finanças, Nota: 8\.7\/10][mar. de 2014–dez. de 2018]
- Formação sólida em finanças corporativas, análise de investimentos e controle gerencial\.
- Desenvolvimento de projetos acadêmicos com foco em valuation, orçamento e indicadores de desempenho\.
- Participação em grupos de estudo e competições de finanças, com destaque para análise de empresas\.
#strong[Cursos]: Finanças Corporativas, Contabilidade Gerencial, Análise de Investimentos, Mercado de Capitais, Estatística Aplicada, Economia Brasileira, Gestão de Custos, Modelagem Financeira
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Analista Financeiro Sênior][#link("https://www.bancohorizonte.com.br")[https\:\/\/www\.bancohorizonte\.com\.br]][Banco Horizonte S\.A\.][jan. de 2022–Atual]
- Liderança do ciclo de planejamento financeiro anual, com consolidação de orçamento e projeções de longo prazo\.
- Construção e revisão de modelos de valuation e análise de viabilidade para novas linhas de negócio\.
- Elaboração de relatórios gerenciais mensais para diretoria, com análise de variações e recomendações\.
- Automatização de rotinas de FP&A com Power BI e SQL, reduzindo tempo de fechamento em 25%\.
- Parceria com áreas comerciais e controladoria para monitorar KPIs e apoiar decisões estratégicas\.
#strong[Palavras-chave]: Modelagem financeira, Valuation, Planejamento e Análise, Power BI, FP&A

#resume-subheading[Analista Financeiro Pleno][#link("https://www.atlasinvestimentos.com.br")[https\:\/\/www\.atlasinvestimentos\.com\.br]][Gestora Atlas Investimentos][fev. de 2019–dez. de 2021]
- Análise de performance de fundos e acompanhamento de indicadores de rentabilidade e risco\.
- Preparação de relatórios mensais para investidores e comitê de investimentos\.
- Desenvolvimento de modelos de fluxo de caixa e cenários macroeconômicos para suporte à alocação\.
- Colaboração com equipe de riscos na revisão de premissas e consistência de dados\.
- Apoio à due diligence financeira de ativos e empresas\-alvo\.
#strong[Palavras-chave]: Análise de investimentos, Gestão de riscos, Fluxo de caixa, Relatórios gerenciais, Excel avançado

#resume-subheading[Analista Financeiro Júnior][#link("https://www.consultoriavertice.com.br")[https\:\/\/www\.consultoriavertice\.com\.br]][Consultoria Vértice][jan. de 2018–jan. de 2019]
- Estruturação de planilhas financeiras e apoio à elaboração de business plans para clientes\.
- Análise de demonstrativos financeiros e construção de indicadores de desempenho\.
- Participação em projetos de reestruturação financeira e revisão de processos orçamentários\.
- Elaboração de apresentações executivas com conclusões e recomendações para sócios\.
#strong[Palavras-chave]: Business plan, Análise financeira, Orçamento, Contabilidade, SAP
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Língua materna])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL 105, Reuniões internacionais])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: Leitura técnica])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Planejamento e Análise Financeira]: Especialista], [#strong[Palavras-chave]: Orçamento, Forecast, FP&A, Análise de variações])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Modelagem e Valuation]: Avançado], [#strong[Palavras-chave]: DCF, Valuation, Cenários, Fluxo de caixa])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Business Intelligence]: Avançado], [#strong[Palavras-chave]: Power BI, SQL, Excel avançado, Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão de Riscos]: Intermediário], [#strong[Palavras-chave]: Indicadores, Compliance, Controles internos])
]

= Prêmios
#resume-pad[
#resume-subheading[Destaque em Planejamento Financeiro][][Banco Horizonte S\.A\.][mar. de 2023]
- Reconhecimento pela liderança do ciclo orçamentário anual e pela melhoria dos relatórios gerenciais para a diretoria\.

#resume-subheading[Prêmio de Excelência Acadêmica][][Universidade de São Paulo][dez. de 2018]
- Premiação concedida aos alunos com melhor desempenho acadêmico no curso de Administração com ênfase em Finanças\.
]

= Certificados
#resume-pad[
#resume-subheading[Certificação CVA \- Certified Valuation Analyst][#link("https://www.ibv.com.br/certificacao-cva")[https\:\/\/www\.ibv\.com\.br\/certificacao\-cva]][Instituto Brasileiro de Valuation][abr. de 2021]

#resume-subheading[Microsoft Certified\: Power BI Data Analyst Associate][#link("https://learn.microsoft.com/credentials/power-bi-data-analyst-associate")[https\:\/\/learn\.microsoft\.com\/credentials\/power\-bi\-data\-analyst\-associate]][Microsoft][set. de 2022]
]

= Publicações
#resume-pad[
#resume-subheading[Relatório de Cenário Macroeconômico 2024][#link("https://www.bancohorizonte.com.br/relatorios/cenario-macroeconomico-2024")[https\:\/\/www\.bancohorizonte\.com\.br\/relatorios\/cenario\-macroeconomico\-2024]][Banco Horizonte S\.A\.][jan. de 2024]
- Análise de perspectivas econômicas, juros, inflação e impactos no planejamento financeiro corporativo\.
- Relatório utilizado por áreas de negócio e diretoria para revisão de premissas orçamentárias\.
]

= Projetos
#resume-pad[
#resume-subheading[Dashboard de Performance Financeira][#link("https://www.bancohorizonte.com.br/projetos/dashboard-financeiro")[https\:\/\/www\.bancohorizonte\.com\.br\/projetos\/dashboard\-financeiro]][Painel gerencial para acompanhamento de receitas, despesas e KPIs financeiros\.][fev. de 2023–set. de 2023]
- Desenvolvimento de dashboard em Power BI com indicadores de margem, custos e produtividade\.
- Integração de bases SQL e SAP para atualização automatizada dos dados\.
- Redução do tempo de preparação de relatórios mensais e maior confiabilidade das informações\.
#strong[Palavras-chave]: Power BI, KPIs, SQL, Automação

#resume-subheading[Modelo Preditivo de Fluxo de Caixa][#link("https://github.com/mariana-almeida-financas/modelo-fluxo-caixa")[https\:\/\/github\.com\/mariana\-almeida\-financas\/modelo\-fluxo\-caixa]][Modelo financeiro para projeção de fluxo de caixa em diferentes cenários econômicos\.][mar. de 2022–nov. de 2022]
- Estruturação de premissas de receita, custos e capital de giro para projeções de 12 a 36 meses\.
- Criação de cenários base, otimista e pessimista para apoio ao comitê financeiro\.
- Documentação do modelo e treinamento de usuários para manutenção autônoma\.
#strong[Palavras-chave]: Fluxo de caixa, Cenários, Modelagem, Excel
]

= Interesses
#resume-pad[
#strong[Mercado Financeiro]: Investimentos, Macroeconomia, Fintechs

#strong[Esportes]: Corrida, Ciclismo, Natação
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora Voluntária de Educação Financeira][#link("https://www.financasparatodos.org.br")[https\:\/\/www\.financasparatodos\.org\.br]][Instituto Finanças para Todos][mar. de 2021–Atual]
- Condução de oficinas de educação financeira para jovens e adultos em comunidades vulneráveis\.
- Apoio na criação de materiais didáticos sobre orçamento pessoal, poupança e crédito consciente\.
- Mentoria de projetos de planejamento financeiro familiar em parceria com organizações locais\.
]