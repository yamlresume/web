#set document(
  title: "Mariana Costa Almeida - Gerente de Operações | Logística, S&OP e Melhoria Contínua",
  author: "Mariana Costa Almeida",
  keywords: "Gestão de Operações, Logística e Distribuição, Análise de Dados, Liderança e Pessoas, Gestão de Projetos",
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

#text(size: 1.44em)[Gerente de Operações | Logística, S&OP e Melhoria Contínua]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.almeida@example.com")[mariana\.almeida\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marianaalmeida.com.br")[https\:\/\/www\.marianaalmeida\.com\.br]

Rua das Acácias, 245, São Paulo, São Paulo, Brasil, 04567\-000

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/mariana-almeida-ops")[mariana\-almeida\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@marianaalmeida-ops")[marianaalmeida\-ops]
]

= Informações Básicas

#resume-pad[
Gerente de Operações com mais de 10 anos de experiência em logística, planejamento e melhoria contínua\. Histórico comprovado na liderança de equipes multidisciplinares, otimização de processos e redução de custos operacionais em empresas de médio e grande porte\.

- Especialista em S&OP, gestão de estoques e indicadores de desempenho (KPIs)
- Experiência com Lean Six Sigma, mapeamento de processos e gestão de mudanças
- Forte atuação em negociação com fornecedores, transportadoras e parceiros estratégicos
- Perfil analítico, orientado a dados e focado em resultados sustentáveis
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br")[https\:\/\/www\.usp\.br]][Bacharelado, Engenharia de Produção, Nota: 8\.7\/10][fev. de 2010–dez. de 2014]
- Formação com foco em engenharia de operações, logística e melhoria de processos
- Projeto de conclusão sobre otimização de rotas de distribuição
- Participação em empresa júnior e projetos de consultoria operacional
#strong[Cursos]: Gestão de Operações, Logística e Cadeia de Suprimentos, Planejamento e Controle da Produção, Pesquisa Operacional, Gestão da Qualidade, Engenharia Econômica, Simulação de Sistemas, Gestão de Projetos

#resume-subheading[Fundação Getulio Vargas][#link("https://www.fgv.br")[https\:\/\/www\.fgv\.br]][Mestrado, Gestão de Operações e Cadeia de Suprimentos, Nota: 9\.2\/10][jan. de 2016–dez. de 2017]
- Especialização em gestão estratégica de operações e cadeia de suprimentos
- Desenvolvimento de projeto aplicado à redução de custos logísticos
- Ênfase em liderança, negociação e transformação digital
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Gerente de Operações][#link("https://www.logirota.com.br")[https\:\/\/www\.logirota\.com\.br]][LogiRota Soluções Logísticas][mar. de 2021–Atual]
- Lidero equipe de 45 pessoas nas áreas de transporte, armazenagem e planejamento operacional
- Reduzi o custo logístico em 18% por meio de renegociação de contratos e otimização de rotas
- Implementei rotina de S&OP integrada às áreas comercial, compras e produção
- Estruturei painéis de KPIs para acompanhamento diário de nível de serviço, custo por entrega e produtividade
- Conduzi projeto de automação de processos com integração entre WMS e TMS
#strong[Palavras-chave]: Gestão de operações, Logística, S&OP, Lean, KPIs, Liderança

#resume-subheading[Coordenadora de Operações][#link("https://www.distribuidoranovaera.com.br")[https\:\/\/www\.distribuidoranovaera\.com\.br]][Distribuidora Nova Era][jan. de 2018–fev. de 2021]
- Coordenei operações de distribuição em três centros de distribuição regionais
- Reduzi o lead time médio de entrega em 22% com revisão de processos e roteirização
- Implantei programa 5S e rotinas de auditoria operacional nas unidades
- Gerenciei orçamento anual de R\$ 12 milhões, com acompanhamento mensal de desvios
- Desenvolvi indicadores de acuracidade de estoque e nível de atendimento ao cliente
#strong[Palavras-chave]: Distribuição, Estoques, 5S, Melhoria contínua, Gestão de equipes

#resume-subheading[Analista de Operações Sênior][#link("https://www.transportesbandeirante.com.br")[https\:\/\/www\.transportesbandeirante\.com\.br]][Transportes Bandeirante][jul. de 2014–dez. de 2017]
- Analisei indicadores operacionais e elaborei relatórios gerenciais para a diretoria
- Desenvolvi previsões de demanda e apoiei o planejamento de capacidade da frota
- Apoiei a implantação do sistema WMS e treinamento das equipes operacionais
- Participei de projetos de redução de custos com transporte e consolidação de cargas
- Realizei negociações com fornecedores e transportadoras parceiras
#strong[Palavras-chave]: Análise de dados, Previsão de demanda, WMS, Transporte
]

= Idiomas
#resume-pad[
#strong[Português]: Nativo ou Bilíngue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL 108, Reuniões internacionais])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: DELE B2])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão de Operações]: Especialista], [#strong[Palavras-chave]: Planejamento de demanda, S&OP, Lean Six Sigma, Gestão de indicadores, Redução de custos])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Logística e Distribuição]: Avançado], [#strong[Palavras-chave]: Roteirização, WMS, TMS, Armazenagem, Gestão de estoques])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análise de Dados]: Avançado], [#strong[Palavras-chave]: Excel avançado, Power BI, SQL, Dashboards, Análise de indicadores])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Liderança e Pessoas]: Especialista], [#strong[Palavras-chave]: Gestão de equipes, Coaching, Cultura de segurança, Desenvolvimento de talentos])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão de Projetos]: Avançado], [#strong[Palavras-chave]: PMBOK, Scrum, Melhoria contínua, Gestão de mudanças])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio de Excelência Operacional][][LogiRota Soluções Logísticas][nov. de 2023]
Reconhecimento pela liderança do projeto de centralização do controle logístico, com ganho de 15% em produtividade e melhoria consistente no nível de serviço ao cliente\.

#resume-subheading[Reconhecimento por Redução de Custos][][Distribuidora Nova Era][dez. de 2020]
Premiação pelo resultado de redução de 22% no lead time de entrega e melhoria da acuracidade de estoque nas operações regionais\.
]

= Certificados
#resume-pad[
#resume-subheading[Lean Six Sigma Green Belt][#link("https://asq.org/cert/lean-six-sigma-green-belt")[https\:\/\/asq\.org\/cert\/lean\-six\-sigma\-green\-belt]][ASQ][jun. de 2019]

#resume-subheading[Certified Supply Chain Professional (CSCP)][#link("https://www.ascm.org/credentials-certifications/ascm-certifications/cscp/")[https\:\/\/www\.ascm\.org\/credentials\-certifications\/ascm\-certifications\/cscp\/]][ASCM][set. de 2020]

#resume-subheading[Scrum Master Certified][#link("https://www.scrumalliance.org/get-certified/scrum-master-track/certified-scrummaster")[https\:\/\/www\.scrumalliance\.org\/get\-certified\/scrum\-master\-track\/certified\-scrummaster]][Scrum Alliance][mar. de 2022]
]

= Publicações
#resume-pad[
#resume-subheading[Análise preditiva aplicada à gestão de estoques no varejo][#link("https://www.revistabrasileiradelogistica.com.br/artigos/analise-preditiva-estoques")[https\:\/\/www\.revistabrasileiradelogistica\.com\.br\/artigos\/analise\-preditiva\-estoques]][Revista Brasileira de Logística][ago. de 2022]
- Estudo sobre o uso de modelos preditivos para melhorar a acuracidade de estoque
- Discussão de impactos na redução de rupturas e no capital de giro
- Apresentação de casos práticos em operações de distribuição
]

= Projetos
#resume-pad[
#resume-subheading[Centro de Controle Logístico][][Projeto de centralização do monitoramento de entregas e indicadores operacionais\.][jan. de 2022–jul. de 2022]
- Implantação de sala de controle com acompanhamento em tempo real das operações
- Integração de dados de WMS, TMS e atendimento ao cliente
- Redução de 12% no tempo de resposta a ocorrências logísticas
#strong[Palavras-chave]: Logística, Controle operacional, KPIs, Integração de sistemas

#resume-subheading[Programa Lean na Distribuição][][Programa de melhoria contínua aplicado aos processos de separação e expedição\.][mar. de 2019–nov. de 2019]
- Mapeamento de fluxo de valor e identificação de desperdícios
- Implantação de padrões operacionais e rotinas de gestão à vista
- Ganho de 20% em produtividade nas equipes de separação
#strong[Palavras-chave]: Lean, Melhoria contínua, Produtividade, Gestão à vista
]

= Interesses
#resume-pad[
#strong[Esportes]: Corrida, Ciclismo, Vôlei

#strong[Leitura]: Gestão, Biografias, Economia

#strong[Culinária]: Cozinha italiana, Panificação
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de Jovens em Logística][#link("https://www.institutoredesolidaria.org.br")[https\:\/\/www\.institutoredesolidaria\.org\.br]][Instituto Rede Solidária][fev. de 2020–Atual]
- Mentoria para jovens em início de carreira nas áreas de logística e operações
- Apoio na elaboração de currículos e preparação para entrevistas
- Participação em workshops sobre planejamento de carreira e competências técnicas
- Colaboração com a organização de feiras de empregabilidade comunitárias
]