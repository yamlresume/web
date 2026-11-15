#set document(
  title: "Lucas Almeida - Engenheiro de Software Sênior | Full Stack & Cloud",
  author: "Lucas Almeida",
  keywords: "Linguagens de Programação, Desenvolvimento Web, Cloud & DevOps, Banco de Dados, Arquitetura de Software",
  description: "Résumé of Lucas Almeida",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Lucas Almeida]] #v(-0.2em)

#text(size: 1.44em)[Engenheiro de Software Sênior | Full Stack & Cloud]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucas.almeida.dev@email.com")[lucas\.almeida\.dev\@email\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://lucasalmeida.dev")[https\:\/\/lucasalmeida\.dev]

Avenida Paulista, 1000, São Paulo, SP, Brasil, 01310\-100

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/lucasalmeida-dev")[lucasalmeida\-dev] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucasalmeida-dev")[lucasalmeida\-dev]
]

= Informações Básicas

#resume-pad[
Engenheiro de software com mais de 5 anos de experiência no desenvolvimento de aplicações web escaláveis e na construção de arquiteturas de microsserviços\.

- Especialista em Node\.js, React e Python, com atuação em ambientes cloud como AWS, Kubernetes e Docker
- Experiência em liderança técnica, mentoria de desenvolvedores e colaboração com times multidisciplinares
- Foco em qualidade de código, testes automatizados, CI\/CD e boas práticas de segurança
- Buscando novos desafios em projetos de alto impacto e inovação tecnológica
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br/")[https\:\/\/www\.usp\.br\/]][Bacharelado, Ciência da Computação, Nota: 8\.7][fev. de 2014–dez. de 2018]
- Desenvolvimento de uma base sólida em computação, matemática e desenvolvimento de software
- Participação em projetos de pesquisa na área de aprendizado de máquina, com bolsa de iniciação científica
- Atuação como monitor da disciplina de Programação Orientada a Objetos por dois semestres
#strong[Cursos]: Algoritmos e Estruturas de Dados, Programação Orientada a Objetos, Engenharia de Software, Sistemas Operacionais, Redes de Computadores, Banco de Dados
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Engenheiro de Software Sênior][#link("https://www.cloudnova.com.br")[https\:\/\/www\.cloudnova\.com\.br]][CloudNova Tecnologia][jan. de 2023–Atual]
- Liderou o redesenho da plataforma principal com arquitetura de microsserviços, resultando em 40% de melhoria na escalabilidade
- Implementou pipelines de CI\/CD com GitHub Actions e ArgoCD, reduzindo o tempo de deploy de 45 para 10 minutos
- Orientou 5 desenvolvedores júnior e plenos, conduzindo code reviews e definindo padrões de qualidade
- Colaborou com as equipes de produto e design para priorizar e entregar funcionalidades de alto valor
#strong[Palavras-chave]: Node\.js, TypeScript, Kubernetes, AWS, Microsserviços, CI\/CD

#resume-subheading[Engenheiro de Software][#link("https://www.inovatech.com.br")[https\:\/\/www\.inovatech\.com\.br]][Inova Tech Soluções][mar. de 2020–dez. de 2022]
- Desenvolveu e manteve aplicações web com React, Node\.js e PostgreSQL, atendendo mais de 200 mil usuários ativos
- Implementou testes automatizados com Jest e Cypress, elevando a cobertura de testes para 85%
- Refatorou módulos legados, melhorando a performance e reduzindo o consumo de recursos em 30%
- Atuou em squads ágeis, participando de cerimônias, planejamentos e retrospectivas
#strong[Palavras-chave]: React, Node\.js, PostgreSQL, Docker, Testes Automatizados, Agile

#resume-subheading[Desenvolvedor Full Stack Júnior][#link("https://www.azulcode.com.br")[https\:\/\/www\.azulcode\.com\.br]][AzulCode Startup][fev. de 2019–fev. de 2020]
- Auxiliou no desenvolvimento de um MVP para um aplicativo de mobilidade urbana usando React Native e Express
- Criou e consumiu APIs REST, implementando autenticação e integração com serviços de terceiros
- Participou de sessões de pair programming e contribuiu para a melhoria contínua do código
#strong[Palavras-chave]: React Native, Express, JavaScript, REST APIs
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Português brasileiro])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL iBT 98])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: Comunicação básica])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Linguagens de Programação]: Especialista], [#strong[Palavras-chave]: JavaScript, TypeScript, Python, Go, SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Desenvolvimento Web]: Especialista], [#strong[Palavras-chave]: React, Node\.js, Express, HTML5, CSS3])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud & DevOps]: Avançado], [#strong[Palavras-chave]: AWS, Docker, Kubernetes, Terraform, GitHub Actions])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Banco de Dados]: Avançado], [#strong[Palavras-chave]: PostgreSQL, MySQL, MongoDB, Redis])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Arquitetura de Software]: Avançado], [#strong[Palavras-chave]: Microsserviços, REST APIs, GraphQL, Clean Architecture])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio Inovação em Engenharia de Software][][Inova Tech Soluções][dez. de 2022]
Reconhecimento concedido pela automação do processo de testes e deploy, que reduziu drasticamente o tempo de entrega da squad\.

#resume-subheading[Bolsa de Iniciação Científica][][Conselho Nacional de Desenvolvimento Científico e Tecnológico (CNPq)][ago. de 2017]
Bolsa de pesquisa para o projeto \"Aplicação de redes neurais na classificação de imagens médicas\", desenvolvido na Universidade de São Paulo\.
]

= Certificados
#resume-pad[
#resume-subheading[AWS Certified Solutions Architect \- Associate][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][mar. de 2024]

#resume-subheading[Certified Kubernetes Application Developer (CKAD)][#link("https://www.cncf.io/certification/ckad/")[https\:\/\/www\.cncf\.io\/certification\/ckad\/]][Cloud Native Computing Foundation][set. de 2022]
]

= Projetos
#resume-pad[
#resume-subheading[Petinder \- Adoção de Animais][#link("https://github.com/lucasalmeida-dev/petinder")[https\:\/\/github\.com\/lucasalmeida\-dev\/petinder]][Plataforma web para facilitar a adoção responsável de animais de estimação, conectando ONGs a tutores em potencial\.][abr. de 2021–out. de 2021]
- Desenvolvido com React, Node\.js e PostgreSQL, incluindo painel administrativo e sistema de busca com filtros
- Implementou autenticação JWT, envio de e\-mails transacionais e integração com mapas
- Projeto de código aberto com mais de 300 estrelas no GitHub
#strong[Palavras-chave]: React, Node\.js, PostgreSQL, Open Source

#resume-subheading[Plataforma de Feedback Contínuo][#link("https://github.com/lucasalmeida-dev/feedback360")[https\:\/\/github\.com\/lucasalmeida\-dev\/feedback360]][Ferramenta interna para gestão de feedback entre colaboradores, com metas e reconhecimento\.][jan. de 2022–dez. de 2022]
- Criado com Next\.js, Prisma e GraphQL para atender cerca de 3 mil colaboradores
- Permitiu a criação de ciclos de avaliação personalizáveis e relatórios gerenciais automatizados
- Reduziu em 50% o tempo gasto com processos manuais de avaliação de desempenho
#strong[Palavras-chave]: Next\.js, GraphQL, Prisma, TypeScript
]

= Interesses
#resume-pad[
#strong[Tecnologia]: Inteligência Artificial, Computação em Nuvem, Open Source

#strong[Esportes]: Futebol, Corrida, Musculação

#strong[Música]: Violão, MPB, Jazz
]

= Voluntariado
#resume-pad[
#resume-subheading[Instrutor Voluntário de Programação][#link("https://www.codigodobem.org.br")[https\:\/\/www\.codigodobem\.org\.br]][Código do Bem][jan. de 2019–dez. de 2022]
- Ministrou cursos introdutórios de lógica de programação e desenvolvimento web para jovens de baixa renda
- Auxiliou na elaboração de material didático e na mentoria de projetos finais
- Participou de mutirões de ensino com impacto direto em mais de 200 estudantes
]