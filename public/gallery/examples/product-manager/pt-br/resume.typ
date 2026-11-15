#set document(
  title: "Mariana Souza - Gerente de Produto Sênior | Produtos Digitais, Estratégia e Inovação",
  author: "Mariana Souza",
  keywords: "Gestão de Produto, Métodos Ágeis, Dados e Analytics, Liderança e Comunicação",
  description: "Résumé of Mariana Souza",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Mariana Souza]] #v(-0.2em)

#text(size: 1.44em)[Gerente de Produto Sênior | Produtos Digitais, Estratégia e Inovação]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.souza@email.com.br")[mariana\.souza\@email\.com\.br] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/mariana-souza-pm")[https\:\/\/www\.linkedin\.com\/in\/mariana\-souza\-pm]

Av\. Paulista, 1000, São Paulo, SP, Brasil, 01310\-100

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/mariana-souza-pm")[mariana\-souza\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@marianasouza")[marianasouza]
]

= Informações Básicas

#resume-pad[
- Product Manager sênior com 8\+ anos de experiência em produtos digitais, atuando em fintechs e plataformas B2B
- Histórico sólido em liderar ciclos completos de discovery e delivery\: da visão e estratégia à entrega ágil e mensuração de resultados
- Especialista em definição de roadmap orientado a valor, OKRs, priorização com dados e experimentação (A\/B testing)
- Experiência em gestão de times multidisciplinares e interlocução com stakeholders técnicos, comerciais e executivos
- Apaixonada por resolver problemas reais dos usuários com soluções simples, escaláveis e de alto impacto
]

= Formação
#resume-pad[
#resume-subheading[Fundação Getulio Vargas][#link("https://eecsp.fgv.br/")[https\:\/\/eecsp\.fgv\.br\/]][Mestrado, Gestão de Produtos e Tecnologia][mar. de 2019–dez. de 2020]
- MBA focado em estratégia de produtos digitais, metodologias ágeis e análise de negócios
- Desenvolvimento de projetos aplicados a cenários reais de mercado
#strong[Cursos]: Product Strategy, Data\-driven Decision Making, Digital Business Models, UX Strategy and Design Thinking

#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br/")[https\:\/\/www\.usp\.br\/]][Bacharelado, Engenharia de Produção, Nota: 8\.5][fev. de 2011–dez. de 2015]
- Formação com ênfase em otimização de processos, gestão de projetos e análise de dados
- Iniciação científica em modelagem de processos aplicada à indústria de serviços
#strong[Cursos]: Gestão de Processos, Pesquisa Operacional, Estatística Aplicada, Economia e Finanças
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Gerente de Produto Sênior][#link("https://www.nexobank.com.br")[https\:\/\/www\.nexobank\.com\.br]][Nexo Bank][jan. de 2021–Atual]
- Responsável pela estratégia e roadmap do produto de conta digital para pessoa física, com mais de 3 milhões de usuários ativos
- Lidero squads multifuncionais de engenharia, design e dados na entrega de funcionalidades de pagamento, investimento e crédito
- Implantei ciclo de discovery contínuo com pesquisa qualitativa e quantitativa, elevando a taxa de sucesso das entregas em 35%
- Defini OKRs e métricas de produto (activation, retention, NPS) em conjunto com stakeholders executivos e comerciais
- Coordeno o processo de priorização com base em impacto, esforço e viabilidade técnica, aumentando a velocidade de aprendizado do time
#strong[Palavras-chave]: Fintech, Produtos Bancários, OKRs, Discovery, A\/B Testing

#resume-subheading[Gerente de Produto][#link("https://www.payline.com.br")[https\:\/\/www\.payline\.com\.br]][Payline Tecnologia][mar. de 2018–dez. de 2020]
- Estruturei a área de produto de uma plataforma B2B de pagamentos recorrentes, responsável pela visão e estratégia do produto
- Conduzi mais de 50 entrevistas com clientes e análises de uso para identificar dores e oportunidades de melhoria
- Liderei o lançamento de um novo módulo de conciliação que reduziu em 40% o tempo de fechamento financeiro dos clientes
- Atuei na formação do time de product designers e analistas de dados, promovendo uma cultura orientada a métricas
#strong[Palavras-chave]: SaaS B2B, Entrevistas com Usuários, Roadmap, Analytics, Liderança de Produto

#resume-subheading[Analista de Produto][#link("https://www.lojaagil.com.br")[https\:\/\/www\.lojaagil\.com\.br]][Loja Ágil][jan. de 2016–fev. de 2018]
- Atuei no product discovery de um e\-commerce de moda, apoiando a definição de funcionalidades e priorização do backlog
- Criei dashboards de acompanhamento de indicadores\-chave (conversão, ticket médio, churn) utilizando SQL e ferramentas de BI
- Colaborei com times de UX e engenharia na implementação de melhorias de interface e jornada de compra
#strong[Palavras-chave]: E\-commerce, Backlog, SQL, Indicadores, UX
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Fala nativa])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL iBT 105])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Mínima], [#strong[Palavras-chave]: Espanhol conversacional])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão de Produto]: Especialista], [#strong[Palavras-chave]: Product Discovery, Roadmap, OKRs, Priorização, Product Strategy, User Research, A\/B Testing, Métricas de Produto])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Métodos Ágeis]: Avançado], [#strong[Palavras-chave]: Scrum, Kanban, Lean, Design Thinking])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Dados e Analytics]: Avançado], [#strong[Palavras-chave]: SQL, Amplitude, Mixpanel, Google Analytics, Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Liderança e Comunicação]: Especialista], [#strong[Palavras-chave]: Facilitação, Negociação, Comunicação Executiva, Mentoria])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio Produto do Ano][][Associação Brasileira de Produtos Digitais][nov. de 2023]
Reconhecimento pela liderança no redesenho do onboarding do banco digital, elevando a ativação de novos usuários em 28%\.
]

= Certificados
#resume-pad[
#resume-subheading[Certified Scrum Product Owner (CSPO)][#link("https://www.scrumalliance.org/")[https\:\/\/www\.scrumalliance\.org\/]][Scrum Alliance][jun. de 2020]

#resume-subheading[Product Analytics Certification][#link("https://amplitude.com/")[https\:\/\/amplitude\.com\/]][Amplitude][mar. de 2022]
]

= Publicações
#resume-pad[
#resume-subheading[Como priorizar funcionalidades com base em dados e empatia][#link("https://medium.com/@marianasouza/como-priorizar-funcionalidades-com-base-em-dados-e-empatia")[https\:\/\/medium\.com\/\@marianasouza\/como\-priorizar\-funcionalidades\-com\-base\-em\-dados\-e\-empatia]][Medium][mai. de 2022]
Artigo sobre a combinação de métricas quantitativas e pesquisas qualitativas para definir o que construir primeiro,
com exemplos práticos de priorização em times de produto no Brasil\.
]

= Projetos
#resume-pad[
#resume-subheading[Portal de Autosserviço Payline][#link("https://www.payline.com.br/portal")[https\:\/\/www\.payline\.com\.br\/portal]][Redesenho do portal de clientes com foco em autosserviço e redução de chamados de suporte\.][jun. de 2019–nov. de 2020]
- Discovery e prototipação de novas jornadas de autosserviço
- Definição de roadmap e coordenação de 3 squads na entrega do novo portal
- Resultado\: redução de 32% nos chamados de suporte e aumento da satisfação do cliente (CSAT)
#strong[Palavras-chave]: B2B, Autosserviço, UX, Roadmap, CSAT
]

= Interesses
#resume-pad[
#strong[Produto e Inovação]: Inteligência Artificial, Plataformas Digitais, Experiência do Usuário

#strong[Estilo de Vida]: Corrida, Yoga, Culinária
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de Product Managers][#link("https://www.mulheresemproduto.com.br")[https\:\/\/www\.mulheresemproduto\.com\.br]][Mulheres em Produto][jan. de 2022–Atual]
- Mentoria mensal para profissionais em início de carreira em gestão de produto
- Apoio na construção de carreira, preparação para entrevistas e desenvolvimento de habilidades de liderança
]