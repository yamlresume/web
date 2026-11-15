#set document(
  title: "Lucas Martins Oliveira - Engenheiro de Segurança Cibernética | OSCP | Cloud Security",
  author: "Lucas Martins Oliveira",
  keywords: "Segurança Ofensiva, Segurança em Cloud, Resposta a Incidentes, Redes e Infraestrutura, Governança e Conformidade",
  description: "Résumé of Lucas Martins Oliveira",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Lucas Martins Oliveira]] #v(-0.2em)

#text(size: 1.44em)[Engenheiro de Segurança Cibernética | OSCP | Cloud Security]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucas.oliveira@cybersec.dev")[lucas\.oliveira\@cybersec\.dev] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://lucasoliveira.dev")[https\:\/\/lucasoliveira\.dev]

Av\. Paulista, 1578, Bela Vista, São Paulo, SP, Brasil, 01310\-200

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucas-martins-oliveira")[lucas\-martins\-oliveira] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/lucas-moliveira")[lucas\-moliveira]
]

= Informações Básicas

#resume-pad[
- Engenheiro de segurança cibernética com mais de 8 anos de experiência em proteção de ambientes corporativos e cloud\.
- Especialista em segurança ofensiva, resposta a incidentes e arquitetura de segurança em AWS e Azure\.
- Certificado OSCP, CISSP e AWS Security Specialty, com forte atuação em conformidade (ISO 27001, LGPD, PCI DSS)\.
- Liderança técnica de equipes e implementação de programas de segurança desde a concepção até a operação\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www.usp.br")[https\:\/\/www\.usp\.br]][Bacharelado, Engenharia de Computação, Nota: 8\.7\/10][mar. de 2014–dez. de 2018]
- Formação sólida em fundamentos de computação, redes e segurança da informação\.
- Desenvolvimento de projetos práticos em segurança de aplicações e análise de vulnerabilidades\.
- Participação em grupo de estudos de cibersegurança e competições de CTF\.
#strong[Cursos]: Segurança de Sistemas, Criptografia, Redes de Computadores, Sistemas Operacionais, Banco de Dados, Engenharia de Software, Computação em Nuvem, Inteligência Artificial
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Engenheiro de Segurança Cibernética Sênior][#link("https://www.bancaurora.com.br")[https\:\/\/www\.bancaurora\.com\.br]][Banco Digital Aurora][jan. de 2022–Atual]
- Liderança técnica na definição de arquitetura de segurança para serviços em cloud (AWS e Azure)\.
- Implementação de programa de threat modeling e revisão de segurança de aplicações\.
- Condução de resposta a incidentes críticos e análise forense\.
- Desenvolvimento de automação de controles de segurança com Terraform e Python\.
- Mentoria de engenheiros júniores e disseminação da cultura de segurança\.
#strong[Palavras-chave]: Threat Modeling, Cloud Security, SIEM, Incident Response, Terraform

#resume-subheading[Engenheiro de Segurança da Informação][#link("https://www.risktech.com.br")[https\:\/\/www\.risktech\.com\.br]][Consultoria RiskTech][fev. de 2019–dez. de 2021]
- Realização de testes de intrusão em aplicações web, APIs e infraestrutura\.
- Avaliação de conformidade com ISO 27001, PCI DSS e LGPD\.
- Implementação de soluções SIEM e correlação de eventos\.
- Elaboração de relatórios técnicos e planos de remediação\.
- Atuação em projetos de resposta a incidentes para clientes dos setores financeiro e saúde\.
#strong[Palavras-chave]: Penetration Testing, ISO 27001, SIEM, LGPD, Risk Assessment

#resume-subheading[Estagiário de Segurança da Informação][#link("https://www.techsecure.com.br")[https\:\/\/www\.techsecure\.com\.br]][TechSecure Soluções][ago. de 2017–dez. de 2018]
- Monitoramento de alertas de segurança e triagem inicial de incidentes\.
- Apoio na configuração de firewalls e sistemas de detecção de intrusão\.
- Documentação de procedimentos operacionais de segurança\.
- Participação em simulações de phishing e conscientização de usuários\.
#strong[Palavras-chave]: Firewalls, IDS\/IPS, Phishing, Monitoring
]

= Idiomas
#resume-pad[
#strong[Português]: Nativo ou Bilíngue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEFL 105, Cambridge C1])

#strong[Espanhol]: Proficiência Profissional Limitada
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Segurança Ofensiva]: Avançado], [#strong[Palavras-chave]: Penetration Testing, Metasploit, Burp Suite, OSCP, Nmap])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Segurança em Cloud]: Avançado], [#strong[Palavras-chave]: AWS Security, Azure Security, IAM, Terraform, Kubernetes Security])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Resposta a Incidentes]: Especialista], [#strong[Palavras-chave]: SIEM, Splunk, Forensics, SOAR, Threat Hunting])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Redes e Infraestrutura]: Avançado], [#strong[Palavras-chave]: Firewalls, VPN, IDS\/IPS, TCP\/IP, Zero Trust])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Governança e Conformidade]: Intermediário], [#strong[Palavras-chave]: ISO 27001, LGPD, NIST, PCI DSS, Risk Assessment])
]

= Prêmios
#resume-pad[
#resume-subheading[Profissional de Segurança do Ano][][Banco Digital Aurora][nov. de 2023]
Reconhecimento pela liderança na implementação do programa de segurança em cloud e redução de 40% nos incidentes críticos\.
]

= Certificados
#resume-pad[
#resume-subheading[OSCP \- Offensive Security Certified Professional][#link("https://www.offsec.com/certifications/oscp/")[https\:\/\/www\.offsec\.com\/certifications\/oscp\/]][Offensive Security][jun. de 2021]

#resume-subheading[CISSP \- Certified Information Systems Security Professional][#link("https://www.isc2.org/certifications/cissp")[https\:\/\/www\.isc2\.org\/certifications\/cissp]][ISC2][set. de 2022]

#resume-subheading[AWS Certified Security \- Specialty][#link("https://aws.amazon.com/certification/certified-security-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-security\-specialty\/]][Amazon Web Services][mar. de 2023]

#resume-subheading[CompTIA Security\+][#link("https://www.comptia.org/certifications/security")[https\:\/\/www\.comptia\.org\/certifications\/security]][CompTIA][fev. de 2020]
]

= Publicações
#resume-pad[
#resume-subheading[Detecção de Intrusão em Ambientes Cloud\-Native][#link("https://www.revistabsc.com.br/artigos/deteccao-intrusao-cloud-native")[https\:\/\/www\.revistabsc\.com\.br\/artigos\/deteccao\-intrusao\-cloud\-native]][Revista Brasileira de Segurança Cibernética][out. de 2023]
Artigo sobre abordagens de detecção de intrusão em ambientes de contêineres e Kubernetes, com foco em machine learning e correlação de eventos\.
]

= Projetos
#resume-pad[
#resume-subheading[ThreatIntel BR][#link("https://github.com/lucas-moliveira/threatintel-br")[https\:\/\/github\.com\/lucas\-moliveira\/threatintel\-br]][Plataforma open\-source para agregação e correlação de indicadores de ameaça\.][jan. de 2023–dez. de 2023]
Desenvolvimento de plataforma para coleta de feeds de threat intelligence e correlação com eventos de segurança; integração com SIEM e geração de alertas contextualizados\.
#strong[Palavras-chave]: Threat Intelligence, Python, SIEM, Open Source

#resume-subheading[LogHunter][#link("https://github.com/lucas-moliveira/loghunter")[https\:\/\/github\.com\/lucas\-moliveira\/loghunter]][Ferramenta de análise forense de logs para ambientes Linux\.][abr. de 2022–out. de 2022]
Criação de ferramenta em Python para análise de logs de autenticação e detecção de comportamentos anômalos; redução do tempo de triagem em 30%\.
#strong[Palavras-chave]: Python, Forensics, Log Analysis, Linux
]

= Interesses
#resume-pad[
#strong[Cibersegurança]: CTFs, Bug Bounty, Malware Analysis

#strong[Esportes]: Corrida, Natação, Ciclismo

#strong[Leitura]: Ficção Científica, Biografias
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentor e Palestrante][#link("https://owasp.org/www-chapter-sao-paulo/")[https\:\/\/owasp\.org\/www\-chapter\-sao\-paulo\/]][OWASP São Paulo Chapter][mar. de 2020–Atual]
- Atuação como mentor em programas de capacitação em segurança de aplicações\.
- Palestras sobre OWASP Top 10 e boas práticas de desenvolvimento seguro\.
- Organização de encontros técnicos e workshops para a comunidade\.
]