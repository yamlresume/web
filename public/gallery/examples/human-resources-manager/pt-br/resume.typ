#set document(
  title: "Mariana Almeida Campos - Gerente de Recursos Humanos Sênior | Estratégia de Pessoas e Cultura",
  author: "Mariana Almeida Campos",
  keywords: "Gestão de Pessoas, Legislação e Relações Trabalhistas, Análise de Dados de Pessoas, Diversidade e Inclusão, Liderança e Comunicação",
  description: "Résumé of Mariana Almeida Campos",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Mariana Almeida Campos]] #v(-0.2em)

#text(size: 1.44em)[Gerente de Recursos Humanos Sênior | Estratégia de Pessoas e Cultura]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.campos@exemplo.com.br")[mariana\.campos\@exemplo\.com\.br] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marianacampos.com.br")[https\:\/\/www\.marianacampos\.com\.br]

Rua das Acácias, 128, apto 72, São Paulo, São Paulo, Brasil, 04567\-000

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marianacamposrh")[marianacamposrh] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@marianacamposrh")[marianacamposrh]
]

= Informações Básicas

#resume-pad[
- Gerente de Recursos Humanos com mais de 10 anos de experiência em empresas de tecnologia e serviços, liderando times de RH e projetos de transformação organizacional\.
- Especialista em desenvolvimento de lideranças, gestão de talentos, cultura organizacional e indicadores de pessoas, com forte atuação em parceria com a alta liderança\.
- Experiência consolidada em legislação trabalhista brasileira, negociação sindical, diversidade e inclusão, além de implantação de políticas de bem\-estar e retenção\.
- Perfil analítico e orientado a resultados, com domínio de ferramentas de análise de dados de pessoas e comunicação clara entre áreas\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www5.usp.br/")[https\:\/\/www5\.usp\.br\/]][Mestrado, Psicologia Organizacional e do Trabalho, Nota: 3\.9][2011\-03\-01–2013\-12\-15]
- Pesquisa aplicada sobre engajamento e clima organizacional em empresas de médio porte\.
- Desenvolvimento de competências em diagnóstico organizacional e intervenção em grupos\.
#strong[Cursos]: Comportamento Organizacional, Gestão de Pessoas e Equipes, Métodos de Pesquisa em Psicologia, Saúde Mental no Trabalho, Liderança e Desenvolvimento

#resume-subheading[Universidade Presbiteriana Mackenzie][#link("https://www.mackenzie.br/")[https\:\/\/www\.mackenzie\.br\/]][Bacharelado, Psicologia, Nota: 3\.7][2006\-02\-01–2010\-12\-10]
- Formação generalista com ênfase em psicologia aplicada às organizações\.
- Participação em projetos de extensão voltados à orientação profissional\.
#strong[Cursos]: Psicologia Social, Psicologia do Trabalho, Recrutamento e Seleção, Treinamento e Desenvolvimento
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Gerente de Recursos Humanos][#link("https://www.novatech.com.br")[https\:\/\/www\.novatech\.com\.br]][NovaTech Soluções Digitais][2020\-01\-15–Atual]
- Liderança de um time de 12 profissionais de RH, responsável por recrutamento, desenvolvimento, remuneração, benefícios e relações trabalhistas para 850 colaboradores\.
- Implantação do programa de liderança \"Trilha de Gestores\", com redução de 18% na rotatividade de posições\-chave em dois anos\.
- Redesenho da avaliação de desempenho e do plano de carreira, integrando metas de negócio e competências comportamentais\.
- Parceria com a diretoria para definição de estratégias de cultura, diversidade e inclusão, alcançando 42% de mulheres em cargos de liderança\.
- Gestão de indicadores de pessoas e relatórios mensais para o comitê executivo\.
#strong[Palavras-chave]: Gestão de Talentos, Cultura Organizacional, Análise de Dados de Pessoas, Liderança, Diversidade e Inclusão

#resume-subheading[Coordenadora de Recursos Humanos][#link("https://www.grupoverdevida.com.br")[https\:\/\/www\.grupoverdevida\.com\.br]][Grupo Verde Vida][2016\-05\-02–2019\-12\-20]
- Coordenação das áreas de recrutamento, treinamento e administração de pessoal para unidades em três estados\.
- Estruturação do programa de integração de novos colaboradores, com melhoria de 25% na retenção nos primeiros seis meses\.
- Condução de negociações coletivas e interface com sindicatos, garantindo conformidade com a legislação trabalhista\.
- Desenvolvimento de trilhas de capacitação para equipes operacionais e administrativas\.
#strong[Palavras-chave]: Recrutamento e Seleção, Treinamento, Relações Trabalhistas, Integração

#resume-subheading[Analista de Recursos Humanos Sênior][#link("https://www.talentosecia.com.br")[https\:\/\/www\.talentosecia\.com\.br]][Consultoria Talentos & Cia][2012\-01\-10–2016\-04\-29]
- Atendimento a clientes de diferentes setores em projetos de recrutamento especializado e mapeamento de competências\.
- Elaboração de descrições de cargos, matrizes de competências e relatórios de diagnóstico organizacional\.
- Apoio à implantação de políticas de RH e à estruturação de áreas de gestão de pessoas\.
#strong[Palavras-chave]: Recrutamento Especializado, Mapeamento de Competências, Diagnóstico Organizacional, Consultoria
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Fluente])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEIC 950])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: DELE B1])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão de Pessoas]: Especialista], [#strong[Palavras-chave]: Gestão de Talentos, Desenvolvimento de Lideranças, Avaliação de Desempenho, Plano de Carreira, Cultura Organizacional])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Legislação e Relações Trabalhistas]: Avançado], [#strong[Palavras-chave]: Legislação Trabalhista, Negociação Sindical, Conformidade Trabalhista, Auditoria de Pessoal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análise de Dados de Pessoas]: Avançado], [#strong[Palavras-chave]: Indicadores de RH, Power BI, Excel Avançado, Relatórios Gerenciais])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Diversidade e Inclusão]: Avançado], [#strong[Palavras-chave]: Programas de Diversidade, Inclusão de PCDs, Equidade de Gênero])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Liderança e Comunicação]: Especialista], [#strong[Palavras-chave]: Gestão de Equipes, Feedback, Comunicação Não Violenta, Mediação de Conflitos])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio RH Inovador][][Associação Brasileira de Recursos Humanos][2023\-09\-20]
Reconhecimento pelo projeto de trilha de liderança e redução de rotatividade em posições\-chave\.

#resume-subheading[Melhores Empresas para Trabalhar][][Great Place to Work][2022\-11\-10]
Participação na conquista do selo para a NovaTech Soluções Digitais, com foco em bem\-estar e desenvolvimento\.
]

= Certificados
#resume-pad[
#resume-subheading[Certificação Profissional em Gestão Estratégica de Pessoas][#link("https://www.shrm.org/certification")[https\:\/\/www\.shrm\.org\/certification]][SHRM][2018\-06\-15]

#resume-subheading[Análise de Dados de Pessoas para Gestores][#link("https://educacao-executiva.fgv.br/")[https\:\/\/educacao\-executiva\.fgv\.br\/]][Fundação Getulio Vargas][2021\-10\-05]
]

= Publicações
#resume-pad[
#resume-subheading[Engajamento e Retenção de Talentos em Empresas de Tecnologia][#link("https://www.rbgp.org.br/artigos/engajamento-retencao")[https\:\/\/www\.rbgp\.org\.br\/artigos\/engajamento\-retencao]][Revista Brasileira de Gestão de Pessoas][2019\-08\-01]
Artigo sobre práticas de gestão de pessoas e seus impactos na retenção de profissionais de tecnologia\.

#resume-subheading[O Papel da Liderança na Construção de Culturas Inclusivas][#link("https://www.cadernospsicologia.org.br/artigos/lideranca-inclusiva")[https\:\/\/www\.cadernospsicologia\.org\.br\/artigos\/lideranca\-inclusiva]][Cadernos de Psicologia Organizacional][2021\-04\-12]
Estudo qualitativo com líderes sobre comportamentos que favorecem ambientes de trabalho diversos e inclusivos\.
]

= Projetos
#resume-pad[
#resume-subheading[Programa Bem\-Estar Corporativo][#link("https://www.novatech.com.br/programa-bem-estar")[https\:\/\/www\.novatech\.com\.br\/programa\-bem\-estar]][Programa integrado de saúde mental, qualidade de vida e prevenção ao esgotamento profissional\.][2022\-02\-01–2023\-11\-30]
- Estruturação de ações de saúde mental, ginástica laboral e apoio psicológico\.
- Redução de 22% nos afastamentos por transtornos mentais no período\.
#strong[Palavras-chave]: Bem\-Estar, Saúde Mental, Prevenção ao Esgotamento

#resume-subheading[Trilha de Liderança para Gestores][#link("https://www.novatech.com.br/trilha-lideranca")[https\:\/\/www\.novatech\.com\.br\/trilha\-lideranca]][Programa de desenvolvimento de competências de liderança e gestão de equipes\.][2021\-03\-01–2022\-12\-15]
- Desenho de trilha com oficinas, mentoria e avaliações de comportamento\.
- Capacitação de 48 gestores em práticas de retorno e gestão de desempenho\.
#strong[Palavras-chave]: Liderança, Desenvolvimento, Mentoria
]

= Interesses
#resume-pad[
#strong[Desenvolvimento de Pessoas]: Mentoria, Carreira, Aprendizagem

#strong[Qualidade de Vida]: Corrida, Ioga, Leitura
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora Voluntária de Carreira][#link("https://www.institutocapacitar.org.br")[https\:\/\/www\.institutocapacitar\.org\.br]][Instituto Capacitar][2018\-04\-01–Atual]
- Mentoria para jovens em início de carreira e pessoas em transição profissional\.
- Apoio na elaboração de currículos, preparação para entrevistas e definição de objetivos profissionais\.

#resume-subheading[Facilitadora de Oficinas][#link("https://www.redemulherempreendedora.com.br")[https\:\/\/www\.redemulherempreendedora\.com\.br]][Rede Mulher Empreendedora][2019\-08\-01–2023\-06\-30]
- Condução de oficinas sobre comunicação, liderança e gestão de conflitos\.
- Colaboração com a comunidade em ações de empoderamento profissional\.
]