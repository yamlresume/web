#set document(
  title: "Mariana Costa Albuquerque - Engenheira Mecânica Sênior | Projetos, Simulação e Manufatura",
  author: "Mariana Costa Albuquerque",
  keywords: "Projeto Mecânico e CAD, Simulação e Análise Estrutural, Manufatura e Processos, Gestão de Projetos e Qualidade, Programação e Automação",
  description: "Résumé of Mariana Costa Albuquerque",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Mariana Costa Albuquerque]] #v(-0.2em)

#text(size: 1.44em)[Engenheira Mecânica Sênior | Projetos, Simulação e Manufatura]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.albuquerque@engmail.com.br")[mariana\.albuquerque\@engmail\.com\.br] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marianaalbuquerque.eng.br")[https\:\/\/www\.marianaalbuquerque\.eng\.br]

Av\. Paulista, 1578, Bela Vista, São Paulo, São Paulo, Brasil, 01310\-100

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/mariana-albuquerque")[mariana\-albuquerque] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/mariana-albuquerque")[mariana\-albuquerque] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/12345678/mariana-albuquerque")[mariana\-albuquerque]
]

= Informações Básicas

#resume-pad[
Engenheira mecânica com mais de 10 anos de experiência em projeto, simulação e industrialização de sistemas mecânicos para os setores automotivo, energético e de bens de capital\.

- Especialista em CAD 3D, análise estrutural por elementos finitos e otimização de componentes\.
- Histórico comprovado na redução de custos, melhoria de desempenho e transferência de produtos para a manufatura\.
- Experiência em gestão de projetos multidisciplinares, normas ISO 9001 e metodologias Lean Six Sigma\.
- Perfil colaborativo, com forte comunicação técnica e mentoria de equipes de engenharia\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade Estadual de Campinas][#link("https://www.unicamp.br")[https\:\/\/www\.unicamp\.br]][Mestrado, Engenharia Mecânica, Nota: 3\.9\/4\.0][mar. de 2012–fev. de 2014]
- Dissertação voltada à otimização topológica de suportes estruturais, com validação experimental e simulação numérica\.
- Desenvolvimento de métodos para reduzir massa mantendo rigidez e confiabilidade em aplicações automotivas\.
- Publicação de resultados em congresso nacional de engenharia mecânica\.
#strong[Cursos]: Mecânica dos Sólidos Computacional, Dinâmica de Sistemas Mecânicos, Tribologia e Lubrificação, Materiais Compósitos, Metodologia de Pesquisa Experimental, Otimização Estrutural

#resume-subheading[Universidade Federal de Santa Catarina][#link("https://www.ufsc.br")[https\:\/\/www\.ufsc\.br]][Bacharelado, Engenharia Mecânica, Nota: 3\.7\/4\.0][mar. de 2006–dez. de 2010]
- Formação sólida em projeto mecânico, materiais e processos de fabricação\.
- Participação em equipe de competição universitária com foco em eficiência energética\.
- Experiência prática em laboratórios de ensaios mecânicos e metrologia\.
#strong[Cursos]: Cálculo Diferencial e Integral, Resistência dos Materiais, Termodinâmica Aplicada, Mecânica dos Fluidos, Processos de Fabricação, Desenho Técnico Mecânico, Controle de Sistemas Dinâmicos
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Engenheira Mecânica Sênior][#link("https://www.aerotech-engenharia.com.br")[https\:\/\/www\.aerotech\-engenharia\.com\.br]][AeroTech Engenharia de Sistemas][jan. de 2021–Atual]
- Liderança técnica de uma equipe de 8 engenheiros e projetistas no desenvolvimento de sistemas térmicos e estruturais\.
- Responsável pela especificação, cálculo e validação de componentes críticos, atendendo requisitos de desempenho e segurança\.
- Implantação de fluxo de simulação CAE integrado ao CAD, reduzindo o ciclo de prototipagem em 30%\.
- Gestão de fornecedores e transferência de projetos para a produção, com foco em qualidade e custo\.
- Aplicação de FMEA, análise de causa raiz e planos de ação para melhoria contínua\.
#strong[Palavras-chave]: Projeto mecânico, Simulação estrutural, ISO 9001, Manufatura enxuta, Gestão de equipes

#resume-subheading[Engenheira de Projetos][#link("https://www.metalurgicanovaera.com.br")[https\:\/\/www\.metalurgicanovaera\.com\.br]][Metalúrgica Nova Era S\.A\.][abr. de 2018–dez. de 2020]
- Desenvolvimento de produtos metálicos sob medida, desde o conceito até a liberação para fabricação\.
- Criação de modelos 3D, desenhos 2D e memoriais de cálculo com foco em manufaturabilidade\.
- Análise de falhas em campo e proposição de melhorias em projetos e processos\.
- Negociação com fornecedores e apoio à engenharia de processos na definição de tolerâncias\.
- Redução de 12% no custo de matéria\-prima por meio de revisão de projetos e padronização de componentes\.
#strong[Palavras-chave]: Desenvolvimento de produto, CAD 3D, Análise de falhas, Fornecedores, Redução de custos

#resume-subheading[Engenheira Mecânica Júnior][#link("https://www.hidraulicavale.com.br")[https\:\/\/www\.hidraulicavale\.com\.br]][Hidráulica Vale Bombas e Sistemas][jan. de 2016–mar. de 2018]
- Suporte ao projeto e à melhoria de bombas centrífugas e sistemas hidráulicos industriais\.
- Execução de ensaios de desempenho, análise de dados e elaboração de relatórios técnicos\.
- Atualização de desenhos e documentação técnica conforme normas internas e ABNT\.
- Apoio à manutenção e à equipe de campo na solução de problemas de instalação\.
#strong[Palavras-chave]: Bombas centrífugas, Ensaios de desempenho, Manutenção, Normas técnicas, CAD 2D
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL iBT 105, Inglês técnico])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: Comunicação técnica])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Projeto Mecânico e CAD]: Especialista], [#strong[Palavras-chave]: SolidWorks, Siemens NX, CATIA V5, AutoCAD, GD&T, Desenho técnico])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Simulação e Análise Estrutural]: Avançado], [#strong[Palavras-chave]: ANSYS Mechanical, Abaqus, FEA, CFD, MATLAB, Otimização topológica])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Manufatura e Processos]: Avançado], [#strong[Palavras-chave]: Usinagem CNC, Soldagem, Conformação de metais, Lean Manufacturing, Six Sigma, Metrologia])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão de Projetos e Qualidade]: Avançado], [#strong[Palavras-chave]: PMBOK, FMEA, ISO 9001, APQP, SAP ERP, Minitab])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programação e Automação]: Intermediário], [#strong[Palavras-chave]: Python, VBA, MATLAB\/Simulink, Arduino, CLP Siemens, Git])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio de Inovação em Engenharia][][AeroTech Engenharia de Sistemas][nov. de 2022]
- Reconhecimento pelo desenvolvimento de um sistema de resfriamento modular com redução de 18% no consumo energético\.
- Projeto conduzido em parceria com as áreas de manufatura, qualidade e suprimentos\.

#resume-subheading[Menção Honrosa em Dissertação de Mestrado][][Universidade Estadual de Campinas][mar. de 2015]
- Distinção pela qualidade técnica e aplicabilidade industrial da pesquisa em otimização topológica\.
]

= Certificados
#resume-pad[
#resume-subheading[Certificação Lean Six Sigma Green Belt][#link("https://asq.org/cert/lean-six-sigma-green-belt")[https\:\/\/asq\.org\/cert\/lean\-six\-sigma\-green\-belt]][ASQ][ago. de 2019]

#resume-subheading[SolidWorks Professional][#link("https://www.solidworks.com/certification")[https\:\/\/www\.solidworks\.com\/certification]][Dassault Systèmes][jun. de 2017]

#resume-subheading[Curso de Gestão de Projetos \- PMBOK][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][PMI][set. de 2020]
]

= Publicações
#resume-pad[
#resume-subheading[Otimização Topológica de Componentes Estruturais para Veículos Comerciais][#link("https://www.rbem.org.br/artigo/otimizacao-topologica-veiculos")[https\:\/\/www\.rbem\.org\.br\/artigo\/otimizacao\-topologica\-veiculos]][Revista Brasileira de Engenharia Mecânica][jul. de 2018]
- Estudo comparativo entre métodos de otimização topológica aplicados a suportes estruturais\.
- Validação por elementos finitos e ensaios experimentais em protótipos metálicos\.
- Discussão sobre ganhos de massa, rigidez e custo de fabricação\.
]

= Projetos
#resume-pad[
#resume-subheading[Sistema de Resfriamento Modular para Equipamentos Industriais][#link("https://www.aerotech-engenharia.com.br/projetos/resfriamento-modular")[https\:\/\/www\.aerotech\-engenharia\.com\.br\/projetos\/resfriamento\-modular]][Projeto de trocador de calor compacto para reduzir consumo energético em linhas de produção\.][fev. de 2022–nov. de 2023]
- Coordenação do projeto desde a concepção até a validação em campo\.
- Simulação CFD para dimensionamento térmico e otimização do fluxo de ar\.
- Uso de manufatura aditiva na produção de componentes de teste\.
#strong[Palavras-chave]: Trocador de calor, CFD, Sustentabilidade, Manufatura aditiva

#resume-subheading[Plataforma de Ensaio de Bombas Centrífugas][#link("https://www.hidraulicavale.com.br/projetos/plataforma-ensaio")[https\:\/\/www\.hidraulicavale\.com\.br\/projetos\/plataforma\-ensaio]][Bancada automatizada para medição de vazão, pressão e eficiência de bombas\.][mai. de 2017–dez. de 2018]
- Especificação de instrumentação, aquisição de dados e painel de controle\.
- Padronização de ensaios conforme a norma ISO 9906\.
- Treinamento da equipe técnica para operação e manutenção da bancada\.
#strong[Palavras-chave]: Instrumentação, Aquisição de dados, Norma ISO 9906, Automação
]

= Interesses
#resume-pad[
#strong[Esportes]: Corrida de rua, Ciclismo, Natação, Trilhas

#strong[Cultura e Tecnologia]: Leitura, Impressão 3D, Fotografia, Astronomia
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de Projetos][#link("https://www.engenheirosdoamanha.org.br")[https\:\/\/www\.engenheirosdoamanha\.org\.br]][Instituto Engenheiros do Amanhã][ago. de 2019–Atual]
- Mentoria de estudantes de engenharia em projetos de mobilidade e eficiência energética\.
- Apoio na estruturação de cronogramas, orçamentos e apresentações técnicas\.
- Organização de workshops sobre CAD, simulação e boas práticas de projeto\.
]