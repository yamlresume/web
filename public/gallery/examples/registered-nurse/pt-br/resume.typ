#set document(
  title: "Mariana Almeida Costa - Enfermeira Registrada | Terapia Intensiva e Segurança do Paciente",
  author: "Mariana Almeida Costa",
  keywords: "Enfermagem Clínica, Terapia Intensiva, Segurança do Paciente, Gestão e Liderança, Sistemas de Saúde",
  description: "Résumé of Mariana Almeida Costa",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Mariana Almeida Costa]] #v(-0.2em)

#text(size: 1.44em)[Enfermeira Registrada | Terapia Intensiva e Segurança do Paciente]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.costa@enfermagem.com.br")[mariana\.costa\@enfermagem\.com\.br] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://marianacosta-enfermagem.com.br")[https\:\/\/marianacosta\-enfermagem\.com\.br]

Rua Cardoso de Almeida, 1234, Apto 56, São Paulo, SP, Brasil, 01215\-000

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/mariana-almeida-costa-rn")[mariana\-almeida\-costa\-rn] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M224.3 141a115 115 0 1 0 -.6 230 115 115 0 1 0 .6-230zm-.6 40.4a74.6 74.6 0 1 1 .6 149.2 74.6 74.6 0 1 1 -.6-149.2zm93.4-45.1a26.8 26.8 0 1 1 53.6 0 26.8 26.8 0 1 1 -53.6 0zm129.7 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM399 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.instagram.com/enf.marianacosta")[enf\.marianacosta]
]

= Informações Básicas

#resume-pad[
- Enfermeira registrada com mais de 6 anos de experiência em assistência hospitalar, atuando em unidades de terapia intensiva e clínica médica\.
- Sólida formação em enfermagem clínica, com foco em segurança do paciente, prevenção de infecções e aplicação da Sistematização da Assistência de Enfermagem (SAE)\.
- Experiência na liderança de equipes de técnicos e auxiliares de enfermagem, elaboração de escalas, educação continuada e monitoramento de indicadores assistenciais\.
- Comunicação clara e empática no cuidado ao paciente e à família, com atuação colaborativa em equipes multiprofissionais\.
- Registro profissional ativo no COREN\-SP, com prática alinhada às boas práticas de enfermagem e às normas de biossegurança\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br")[https\:\/\/www\.usp\.br]][Bacharelado, Enfermagem, Nota: 8\.7\/10][2014\-02\-01–2017\-12\-15]
- Formação generalista com ênfase em enfermagem clínica, saúde coletiva e gestão do cuidado\.
- Desenvolvimento de competências para avaliação integral do paciente, raciocínio clínico e tomada de decisão baseada em evidências\.
- Participação em projetos de extensão e atividades práticas em hospitais universitários\.
#strong[Cursos]: Anatomia Humana, Fisiologia, Farmacologia, Semiologia e Semiotécnica, Enfermagem em Terapia Intensiva, Saúde Coletiva, Gestão em Enfermagem, Bioética
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Enfermeira Assistencial][#link("https://www.einstein.br")[https\:\/\/www\.einstein\.br]][Hospital Israelita Albert Einstein][2022\-01\-10–Atual]
- Presto assistência de enfermagem a pacientes adultos em unidade de terapia intensiva, realizando avaliação clínica, administração de medicamentos, curativos complexos e monitorização hemodinâmica\.
- Aplico protocolos institucionais de segurança do paciente, prevenção de infecção relacionada à assistência à saúde e notificação de eventos adversos\.
- Lidero equipe de técnicos de enfermagem durante o turno, organizando escalas, distribuindo atividades e apoiando a tomada de decisão clínica\.
- Participo de rondas multiprofissionais, discussões de casos e treinamentos de educação continuada voltados à qualidade do cuidado\.
- Utilizo prontuário eletrônico e sistemas assistenciais para registro, auditoria e acompanhamento de indicadores\.
#strong[Palavras-chave]: Terapia Intensiva, Segurança do Paciente, SAE, Liderança de Equipe, Prontuário Eletrônico

#resume-subheading[Enfermeira Assistencial][#link("https://www.hc.fm.usp.br")[https\:\/\/www\.hc\.fm\.usp\.br]][Hospital das Clínicas da FMUSP][2018\-03\-01–2021\-12\-20]
- Prestei cuidados de enfermagem a pacientes adultos e idosos em unidades de clínica médica e cuidados paliativos, com foco em conforto, dignidade e continuidade do cuidado\.
- Realizei triagem, acolhimento, avaliação inicial, administração de medicamentos e orientação de alta hospitalar\.
- Desenvolvi ações de educação em saúde para pacientes e familiares sobre prevenção de complicações, adesão ao tratamento e autocuidado\.
- Colaborei com equipe multiprofissional na elaboração de planos de cuidado individualizados e na comunicação de intercorrências\.
- Apoiei a supervisão de estagiários e novos colaboradores, contribuindo para a integração e capacitação da equipe\.
#strong[Palavras-chave]: Clínica Médica, Cuidados Paliativos, Educação em Saúde, Triagem
]

= Idiomas
#resume-pad[
#strong[Português]: Nativo ou Bilíngue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL iBT 105, Leitura de artigos científicos])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: DELE B1])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Enfermagem Clínica]: Especialista], [#strong[Palavras-chave]: Avaliação de Enfermagem, Administração de Medicamentos, Curativos Complexos, Cateterismo Vesical, Coleta de Exames])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Terapia Intensiva]: Avançado], [#strong[Palavras-chave]: Ventilação Mecânica, Monitorização Hemodinâmica, Gasometria Arterial, Protocolos de Sepse, Suporte Avançado de Vida])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Segurança do Paciente]: Avançado], [#strong[Palavras-chave]: Prevenção de Infecção, Higienização das Mãos, Notificação de Eventos, Auditoria de Prontuários])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestão e Liderança]: Avançado], [#strong[Palavras-chave]: Escalas de Trabalho, Educação Continuada, Indicadores Assistenciais, Gestão de Conflitos])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Sistemas de Saúde]: Intermediário], [#strong[Palavras-chave]: Prontuário Eletrônico, TASY, MV Soul])
]

= Prêmios
#resume-pad[
#resume-subheading[Prêmio de Excelência em Cuidado ao Paciente][][Hospital Israelita Albert Einstein][2023\-11\-20]
Reconhecimento por desempenho consistente na assistência de enfermagem, comunicação empática com pacientes e familiares e compromisso com a segurança do paciente\.

#resume-subheading[Destaque Acadêmico em Enfermagem][][Escola de Enfermagem da USP][2017\-12\-10]
Concedido a estudantes com alto desempenho acadêmico e envolvimento em atividades de extensão universitária\.
]

= Certificados
#resume-pad[
#resume-subheading[Certificação em Suporte Básico de Vida (BLS)][#link("https://www.heart.org/en/courses/bls")[https\:\/\/www\.heart\.org\/en\/courses\/bls]][American Heart Association][2024\-02\-15]

#resume-subheading[Especialização em Enfermagem em Terapia Intensiva][#link("https://www.sbti.org.br")[https\:\/\/www\.sbti\.org\.br]][Sociedade Brasileira de Terapia Intensiva][2021\-12\-10]

#resume-subheading[Curso de Interpretação de Gasometria Arterial][#link("https://www.abennacional.org.br")[https\:\/\/www\.abennacional\.org\.br]][Associação Brasileira de Enfermagem][2020\-08\-05]
]

= Publicações
#resume-pad[
#resume-subheading[Cuidados de Enfermagem na Prevenção de Lesões por Pressão em Pacientes Críticos][#link("https://www.scielo.br/j/reben/")[https\:\/\/www\.scielo\.br\/j\/reben\/]][Revista Brasileira de Enfermagem][2021\-06\-30]
- Revisão integrativa sobre estratégias de prevenção de lesões por pressão em unidades de terapia intensiva\.
- Discussão de protocolos assistenciais, avaliação de risco e indicadores de qualidade do cuidado\.
]

= Projetos
#resume-pad[
#resume-subheading[Programa de Educação Continuada em Segurança do Paciente][#link("https://www.einstein.br/ensino-e-pesquisa")[https\:\/\/www\.einstein\.br\/ensino\-e\-pesquisa]][Projeto multiprofissional para reduzir eventos adversos e fortalecer a cultura de segurança em unidades de internação\.][2022\-03\-01–2023\-12\-15]
- Desenvolvi materiais educativos e treinamentos sobre higienização das mãos, identificação segura do paciente e prevenção de quedas\.
- Acompanhei indicadores assistenciais e apresentei resultados em reuniões de qualidade\.
- Contribuí para a integração de novos colaboradores e para a padronização de condutas de enfermagem\.
#strong[Palavras-chave]: Segurança do Paciente, Educação Continuada, Indicadores de Qualidade
]

= Interesses
#resume-pad[
#strong[Corrida de Rua]: Meia maratona, Treino funcional

#strong[Leitura]: Literatura brasileira, Saúde pública

#strong[Voluntariado]: Ações comunitárias, Educação em saúde
]

= Voluntariado
#resume-pad[
#resume-subheading[Enfermeira Voluntária][#link("https://www.abennacional.org.br")[https\:\/\/www\.abennacional\.org\.br]][Associação Brasileira de Enfermagem][2019\-05\-01–2023\-11\-30]
- Participei de ações comunitárias de promoção da saúde, prevenção de doenças e educação em saúde\.
- Apoiei campanhas de vacinação, orientação sobre higiene e cuidados básicos com a saúde da família\.
- Colaborei na organização de eventos científicos e atividades de atualização profissional\.
]