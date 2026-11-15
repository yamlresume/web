#set document(
  title: "Mariana Costa - UX Designer Plena | Pesquisa, Prototipação e Design de Interfaces",
  author: "Mariana Costa",
  keywords: "Pesquisa com Usuários, Design de Interfaces, Prototipação, Colaboração em Produto, Front-end para Designers",
  description: "Résumé of Mariana Costa",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Mariana Costa]] #v(-0.2em)

#text(size: 1.44em)[UX Designer Plena | Pesquisa, Prototipação e Design de Interfaces]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.design@email.com")[mariana\.design\@email\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://marianacosta.design")[https\:\/\/marianacosta\.design]

Av\. Paulista, 1000, São Paulo, São Paulo, Brasil, 01310\-100

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marianacosta-ux")[marianacosta\-ux] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M232 237.2c31.8-15.2 48.4-38.2 48.4-74 0-70.6-52.6-87.8-113.3-87.8l-167.1 0 0 354.4 171.8 0c64.4 0 124.9-30.9 124.9-102.9 0-44.5-21.1-77.4-64.7-89.7zM77.9 135.9l73.1 0c28.1 0 53.4 7.9 53.4 40.5 0 30.1-19.7 42.2-47.5 42.2l-79 0 0-82.7zm83.3 233.7l-83.3 0 0-97.6 84.9 0c34.3 0 56 14.3 56 50.6 0 35.8-25.9 47-57.6 47zM519.7 128.9l-143.7 0 0-34.9 143.7 0 0 34.9zM576 305.2c0-75.9-44.4-139.2-124.9-139.2-78.2 0-131.3 58.8-131.3 135.8 0 79.9 50.3 134.7 131.3 134.7 61.3 0 101-27.6 120.1-86.3l-62.2 0c-6.7 21.9-34.3 33.5-55.7 33.5-41.3 0-63-24.2-63-65.3l185.1 0c.3-4.2 .6-8.7 .6-13.2zM390.4 274c2.3-33.7 24.7-54.8 58.5-54.8 35.4 0 53.2 20.8 56.2 54.8l-114.7 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.behance.net/marianacosta")[marianacosta] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@marianacosta")[marianacosta]
]

= Informações Básicas

#resume-pad[
UX Designer com 6\+ anos de experiência em produtos digitais, atuando em todo o ciclo de discovery e delivery\.

Especialista em pesquisa com usuários, arquitetura da informação, prototipação em alta fidelidade e design de interfaces para web e mobile\. Facilita a criação e a evolução de design systems, colabora com times de produto e engenharia e conduz testes de usabilidade para embasar decisões com dados e evidências\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo (USP)][#link("https://www.usp.br/")[https\:\/\/www\.usp\.br\/]][Bacharelado, Design, Nota: 8\.2][fev. de 2013–dez. de 2017]
- Desenvolvimento de projetos práticos em design de produto e design digital
- Pesquisa e desenvolvimento de interfaces centradas no usuário
- Trabalhos em equipe com ênfase em metodologias ágeis e design thinking
#strong[Cursos]: Ergonomia e Usabilidade, Design de Informação, Metodologia de Projeto em Design, Psicologia da Percepção, Tipografia, Design de Interfaces Digitais, Antropologia do Consumo, Processos de Criação em Mídias Digitais
]

= Experiência Profissional
#resume-pad[
#resume-subheading[UX Designer Plena][#link("https://nexodigital.com.br")[https\:\/\/nexodigital\.com\.br]][Nexo Digital][mar. de 2023–Atual]
- Lidera o discovery de novas funcionalidades para a plataforma de investimentos, conduzindo entrevistas, testes de usabilidade e sessões de cocriação com stakeholders
- Cria protótipos em alta fidelidade e colabora com product managers e desenvolvedores na evolução contínua do design system
- Implementou um processo de pesquisa contínua que reduziu em 35% o retrabalho em especificações de produto
- Atua como referência em acessibilidade, garantindo conformidade com WCAG 2\.1 nos fluxos principais do produto
#strong[Palavras-chave]: Design System, Pesquisa com usuários, Testes de usabilidade, Acessibilidade, Descoberta de produto, Colaboração

#resume-subheading[UX Designer][#link("https://grupovai.com.br")[https\:\/\/grupovai\.com\.br]][Grupo Vai][jan. de 2021–fev. de 2023]
- Responsável pelo redesign do aplicativo de mobilidade urbana, aumentando a taxa de conversão de cadastro em 22%
- Conduziu mais de 40 entrevistas e testes de usabilidade com usuários de diferentes perfis
- Desenvolveu o design system do app, documentando padrões visuais e componentes para as plataformas Android, iOS e web
- Trabalhou em squads multidisciplinares, participando de rituais ágeis e revisões dos componentes de interface
#strong[Palavras-chave]: Figma, Design System, Pesquisa contextual, Prototipação, Experimentação

#resume-subheading[Designer de Produto][#link("https://updesign.example")[https\:\/\/updesign\.example]][Up Design Studio][jan. de 2018–dez. de 2020]
- Realizou projetos de branding e UI para startups dos setores de saúde, educação e fintech
- Criou wireframes, fluxos de navegação e protótipos funcionais para validação com clientes
- Aplicou métodos de design thinking em workshops de definição de produto
- Colaborou com desenvolvedores na implementação dos layouts, garantindo consistência visual
#strong[Palavras-chave]: UI Design, Wireframes, Design Thinking, Branding, Front\-end
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Português do Brasil])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL 102, Leitura e escrita técnicas])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: Comunicação básica, Leitura técnica])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Pesquisa com Usuários]: Avançado], [#strong[Palavras-chave]: Entrevistas, Testes de usabilidade, Personas, Jornada do usuário, Métricas de UX, Desk research])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Design de Interfaces]: Especialista], [#strong[Palavras-chave]: Figma, Design System, Design responsivo, Acessibilidade, Grid e espaçamento, Motion Design])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prototipação]: Avançado], [#strong[Palavras-chave]: Alta fidelidade, Interactive prototyping, Fluxos de navegação, Design tokens])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Colaboração em Produto]: Avançado], [#strong[Palavras-chave]: Scrum, Kanban, Design critique, Documentação, Product discovery])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Front\-end para Designers]: Intermediário], [#strong[Palavras-chave]: HTML, CSS, JavaScript, Tailwind CSS])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio Latino\-Americano de Design de Interfaces][][Associação Brasileira de Design][nov. de 2022]
Reconhecimento pelo redesign do app de mobilidade urbana desenvolvido no Grupo Vai, com ênfase em usabilidade e inclusão\.

#resume-subheading[Destaque em Inovação][][Up Design Studio][out. de 2019]
Premiação interna pelo projeto de interface para uma plataforma de telemedicina, avaliado por sua navegação intuitiva e impacto positivo no tempo de atendimento\.
]

= Certificados
#resume-pad[
#resume-subheading[Google UX Design Professional Certificate][#link("https://www.coursera.org/professional-certificates/google-ux-design")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-ux\-design]][Google][ago. de 2021]

#resume-subheading[Certified Usability Analyst][#link("https://www.humanfactors.com/")[https\:\/\/www\.humanfactors\.com\/]][Human Factors International][mar. de 2022]
]

= Publicações
#resume-pad[
#resume-subheading[Case\: os bastidores do redesign do fluxo de pagamento][#link("https://medium.com/@marianacosta/case-redesign-fluxo-pagamento")[https\:\/\/medium\.com\/\@marianacosta\/case\-redesign\-fluxo\-pagamento]][Medium][jun. de 2023]
Artigo com o processo de discovery, testes de usabilidade e os resultados obtidos após a reformulação do fluxo de pagamento de um aplicativo de serviços financeiros\.

#resume-subheading[Padrões de acessibilidade para aplicações móveis][#link("https://uxdicas.com.br/artigos/padroes-de-acessibilidade")[https\:\/\/uxdicas\.com\.br\/artigos\/padroes\-de\-acessibilidade]][UXDicas][set. de 2020]
Guia prático com boas práticas de acessibilidade aplicadas a aplicações móveis, incluindo contraste, leitores de tela e alvos de toque\.
]

= Referências
#resume-pad[
#resume-subheading[Dra\. Fernanda Lima][Gerente de Produto na Nexo Digital][fernanda\.lima\@nexodigital\.com\.br][\+55 11 91234\-1080]
Mariana é uma profissional extremamente empática e analítica\. Sua capacidade de transformar dados de pesquisa em decisões de design elevou a qualidade do nosso produto\.
]

= Projetos
#resume-pad[
#resume-subheading[Nebula Design System][#link("https://marianacosta.design/projetos/nebula")[https\:\/\/marianacosta\.design\/projetos\/nebula]][Design system para produtos digitais da Nexo Digital][mar. de 2023–Atual]
Desenvolveu tokens de design, componentes acessíveis e documentação interativa para acelerar a criação de novas telas\.
#strong[Palavras-chave]: Design System, Design Tokens, Documentação, Acessibilidade

#resume-subheading[Jornada Invest][#link("https://www.behance.net/gallery/jornada-invest")[https\:\/\/www\.behance\.net\/gallery\/jornada\-invest]][Aplicativo de educação financeira para investidores iniciantes][ago. de 2022–jan. de 2023]
Projeto autoral de UX com pesquisa com usuários, ideação e prototipação de uma jornada gamificada para aprendizado em investimentos\.
#strong[Palavras-chave]: UX Research, Gamificação, Prototipação
]

= Interesses
#resume-pad[
#strong[Acessibilidade Digital]: Tecnologia assistiva, Inclusão, WCAG

#strong[Fotografia]: Composição, Fotografia urbana, Edição de imagens

#strong[Economia Comportamental]: Heurísticas, Decisão de compra, Experiência do usuário
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de Carreira][#link("https://www.mulheresdeux.com.br/")[https\:\/\/www\.mulheresdeux\.com\.br\/]][Mulheres de UX Brasil][jan. de 2022–Atual]
Orienta mulheres em transição para a área de UX, revisa portfólios e oferece suporte em processos seletivos\.

#resume-subheading[Facilitadora de Oficinas de Design][#link("https://www.redecincluir.org.br/")[https\:\/\/www\.redecincluir\.org\.br\/]][ONG Rede Incluir][fev. de 2019–dez. de 2021]
Ministrou oficinas de design participativo com jovens de escolas públicas, estimulando a criação de soluções para problemas locais\.
]