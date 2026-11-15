#set document(
  title: "Ana Beatriz Silva - Gerente de Projetos Ágeis | PMP | Scrum Master",
  author: "Ana Beatriz Silva",
  keywords: "Gestão de Projetos, Liderança, Ferramentas, Metodologias Ágeis",
  description: "Résumé of Ana Beatriz Silva",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Ana Beatriz Silva]] #v(-0.2em)

#text(size: 1.44em)[Gerente de Projetos Ágeis | PMP | Scrum Master]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ana.silva@email.com")[ana\.silva\@email\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/anabeatrizsilva")[https\:\/\/www\.linkedin\.com\/in\/anabeatrizsilva]

Rua das Flores, 123, São Paulo, SP, Brasil, 01234\-567

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/anabeatrizsilva")[anabeatrizsilva]
]

= Informações Básicas

#resume-pad[
- Gerente de Projetos com mais de 8 anos de experiência liderando equipes multidisciplinares em projetos de tecnologia e transformação digital\.
- Especialista em metodologias ágeis (Scrum, Kanban) e tradicionais (PMBOK), com certificação PMP e Scrum Master\.
- Histórico comprovado de entregas dentro do prazo e orçamento, com foco em qualidade e satisfação do cliente\.
- Habilidade em gestão de stakeholders, mitigação de riscos e otimização de processos\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br")[https\:\/\/www\.usp\.br]][Bacharelado, Administração de Empresas, Nota: 8\.5][mar. de 2010–dez. de 2014]
- Formação sólida em administração com ênfase em gestão de projetos\.
- Desenvolvimento de habilidades em liderança, comunicação e análise de dados\.
#strong[Cursos]: Gestão de Projetos, Planejamento Estratégico, Gestão de Pessoas, Finanças Corporativas, Marketing, Estatística

#resume-subheading[Fundação Getulio Vargas][#link("https://www.fgv.br")[https\:\/\/www\.fgv\.br]][Mestrado, Gestão de Projetos, Nota: 9\.0][fev. de 2016–dez. de 2017]
- Especialização em gestão de projetos com foco em metodologias ágeis e tradicionais\.
- Trabalho de conclusão sobre transformação ágil em empresas brasileiras\.
#strong[Cursos]: Gerenciamento de Projetos Complexos, Métodos Ágeis, Liderança de Equipes
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Gerente de Projetos Sênior][#link("https://www.techsolutions.com.br")[https\:\/\/www\.techsolutions\.com\.br]][Tech Solutions Ltda][jan. de 2020–Atual]
- Liderança de uma equipe de 15 pessoas no desenvolvimento de uma plataforma SaaS, resultando em um aumento de 30% na receita anual\.
- Implementação de metodologia Scrum, reduzindo o time\-to\-market em 25%\.
- Gestão de orçamento de R\$ 5 milhões, com entrega dentro do prazo e custo\.
- Interface com stakeholders de alto nível, incluindo C\-level, para alinhamento estratégico\.
#strong[Palavras-chave]: Scrum, SaaS, Gestão de Orçamento, Liderança

#resume-subheading[Gerente de Projetos][#link("https://www.inovaconsultoria.com.br")[https\:\/\/www\.inovaconsultoria\.com\.br]][Inova Consultoria][mar. de 2017–dez. de 2019]
- Gerenciamento de projetos de consultoria em transformação digital para clientes dos setores financeiro e varejo\.
- Coordenação de equipes remotas e presenciais, garantindo a entrega de soluções personalizadas\.
- Desenvolvimento de cronogramas, planos de comunicação e análise de riscos\.
- Aumento da satisfação do cliente em 20% através de melhorias nos processos de entrega\.
#strong[Palavras-chave]: Transformação Digital, Consultoria, Gestão de Riscos, Comunicação

#resume-subheading[Analista de Projetos][#link("https://www.startupxyz.com.br")[https\:\/\/www\.startupxyz\.com\.br]][Startup XYZ][jan. de 2015–fev. de 2017]
- Suporte ao gerente de projetos na elaboração de cronogramas e acompanhamento de tarefas\.
- Utilização de ferramentas como Jira e Trello para monitoramento de sprints\.
- Participação em reuniões diárias e retrospectivas, contribuindo para a melhoria contínua\.
- Auxílio na documentação de projetos e relatórios de status\.
#strong[Palavras-chave]: Jira, Trello, Ágil, Documentação
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Língua materna])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL 105])

#strong[Espanhol]: Proficiência Profissional Limitada
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão de Projetos]: Especialista], [#strong[Palavras-chave]: PMBOK, Agile, Scrum, Kanban, Waterfall])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Liderança]: Avançado], [#strong[Palavras-chave]: Team Management, Mentoring, Negotiation, Conflict Resolution])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Ferramentas]: Avançado], [#strong[Palavras-chave]: Jira, Trello, MS Project, Asana, Slack])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Metodologias Ágeis]: Especialista], [#strong[Palavras-chave]: Scrum, Kanban, SAFe, Lean])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio de Excelência em Gestão de Projetos][][PMI São Paulo][nov. de 2022]
Reconhecimento pelo sucesso na entrega de um projeto crítico de transformação digital, superando as metas estabelecidas\.
]

= Certificados
#resume-pad[
#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute (PMI)][mar. de 2018]

#resume-subheading[Certified Scrum Master (CSM)][#link("https://www.scrumalliance.org/get-certified/scrum-master-track/certified-scrummaster")[https\:\/\/www\.scrumalliance\.org\/get\-certified\/scrum\-master\-track\/certified\-scrummaster]][Scrum Alliance][jun. de 2016]
]

= Publicações
#resume-pad[
#resume-subheading[Transformação Ágil em Empresas Brasileiras][#link("https://www.mundopm.com.br/artigo/transformacao-agil")[https\:\/\/www\.mundopm\.com\.br\/artigo\/transformacao\-agil]][Revista Mundo PM][ago. de 2021]
- Artigo sobre os desafios e benefícios da adoção de metodologias ágeis em grandes empresas no Brasil\.
- Análise de casos de sucesso e lições aprendidas\.
]

= Projetos
#resume-pad[
#resume-subheading[Implementação de Sistema ERP][#link("https://www.techsolutions.com.br/projetos/erp")[https\:\/\/www\.techsolutions\.com\.br\/projetos\/erp]][Projeto de implementação de ERP para uma indústria de médio porte\.][jan. de 2021–dez. de 2021]
- Liderança da equipe de 10 pessoas na migração de sistemas legados para uma solução ERP integrada\.
- Entrega dentro do prazo e orçamento, com treinamento de 200 usuários\.
#strong[Palavras-chave]: ERP, Gestão de Mudanças, Treinamento
]

= Interesses
#resume-pad[
#strong[Corrida]: Maratona, Meia Maratona

#strong[Leitura]: Literatura Brasileira, Gestão, Tecnologia
]

= Voluntariado
#resume-pad[
#resume-subheading[Gerente de Projetos Voluntária][#link("https://www.projetocrescer.org.br")[https\:\/\/www\.projetocrescer\.org\.br]][Projeto Crescer][jan. de 2018–dez. de 2020]
- Coordenação de projetos sociais voltados para educação de jovens em comunidades carentes\.
- Gestão de equipe de 5 voluntários e captação de recursos\.
- Implementação de metodologias ágeis para otimizar as entregas\.
]