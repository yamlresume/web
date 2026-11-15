#set document(
  title: "Camille Renard - Ingénieure logicielle full-stack & cloud",
  author: "Camille Renard",
  keywords: "Développement front-end, Développement back-end, Cloud & DevOps, Bases de données",
  description: "Résumé of Camille Renard",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "fr", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Camille Renard]] #v(-0.2em)

#text(size: 1.44em)[Ingénieure logicielle full\-stack & cloud]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:contact@camille-renard.dev")[contact\@camille\-renard\.dev] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://camille-renard.dev")[https\:\/\/camille\-renard\.dev]

12 rue de la Paix, Paris, Île\-de\-France, France, 75002

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/camille-renard")[camille\-renard] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-renard")[camille\-renard]
]

= Informations de base

#resume-pad[
Ingénieure logicielle passionnée par la conception d’applications web robustes et scalables\.
Forte de six ans d’expérience en développement full\-stack et en architecture cloud, j’accompagne les équipes produit de la conception au déploiement continu\.

Compétences clés \:

- Développement front\-end avec React, TypeScript et Next\.js
- Conception d’API REST et GraphQL, intégration de bases de données SQL\/NoSQL
- Déploiement sur AWS avec conteneurisation Docker et orchestration Kubernetes
- Pratiques DevOps \: CI\/CD, automatisation, monitoring et observabilité
- Collaboration Agile, revues de code exigeantes et mentorat technique
]

= Formation
#resume-pad[
#resume-subheading[Télécom Paris][#link("https://www.telecom-paris.fr/")[https\:\/\/www\.telecom\-paris\.fr\/]][Master, Ingénierie logicielle et systèmes informatiques, Score : 3\.8\/4\.0][sept. 2015–juin 2018]
- Formation d\'ingénieur spécialisée en génie logiciel, systèmes distribués et informatique en nuage
- Projet de fin d’études sur la mise en place d’une plateforme de traitement de données en temps réel
- Engagement associatif actif au sein du laboratoire d’innovation numérique de l’école
#strong[Cours] : Algorithmique et structures de données, Génie logiciel et méthodes Agiles, Systèmes distribués, Architectures cloud et virtualisation, Programmation concurrente et parallèle, Bases de données avancées, Sécurité des systèmes d\'information, Interactions homme\-machine
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Ingénieure logicielle senior][#link("https://bluewave-tech.fr")[https\:\/\/bluewave\-tech\.fr]][Bluewave Technologies][janv. 2022–Present]
- Pilote la conception et le développement d’une plateforme SaaS de gestion documentaire utilisée par plus de 120 000 utilisateurs
- Encadre une équipe de cinq développeurs et développeuses, en favorisant les revues de code et la montée en compétence
- Modernise l’architecture monolithique vers une architecture microservices déployée sur Kubernetes
- Met en place une chaîne CI\/CD complète avec GitHub Actions et Argo CD, réduisant les délais de livraison de 40 %
- Collabore avec les équipes produit, design et infrastructure pour définir les feuilles de route techniques
#strong[Mots-clés] : Architecture microservices, Kubernetes, React, Node\.js, Mentorat, CI\/CD

#resume-subheading[Ingénieure full\-stack][#link("https://dataflow-sas.fr")[https\:\/\/dataflow\-sas\.fr]][Dataflow SAS][mars 2019–déc. 2021]
- Développe des applications web de traitement et de visualisation de données pour des clients grands comptes
- Conçoit des API REST performantes avec Node\.js, Express et PostgreSQL
- Réalise des interfaces riches en React et TypeScript, avec une attention particulière à l’accessibilité
- Participe à l’industrialisation des déploiements via Docker et AWS Elastic Beanstalk
- Rédige la documentation technique et organise des ateliers de partage de connaissances
#strong[Mots-clés] : TypeScript, React, Node\.js, PostgreSQL, Docker, AWS

#resume-subheading[Développeuse web][#link("https://pixely.fr")[https\:\/\/pixely\.fr]][Agence Pixely][juil. 2018–févr. 2019]
- Conçoit des sites vitrines et des applications e\-commerce pour des clients PME et associations
- Intervient sur la partie front\-end (HTML, CSS, JavaScript vanilla) et l’intégration de CMS
- Optimise les performances et l’accessibilité des sites, améliorant le score Lighthouse moyen de 65 à 92
- Assure la maintenance évolutive et corrective des projets livrés
#strong[Mots-clés] : JavaScript, HTML\/CSS, CMS, Performance, Accessibilité
]

= Langues
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Français] : Niveau natif ou bilingue], [#strong[Mots-clés] : Langue maternelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 960, Lecture technique, Réunions clients])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Allemand] : Niveau de travail limité], [#strong[Mots-clés] : Bases de la conversation])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Développement front\-end] : Expert], [#strong[Mots-clés] : TypeScript, React, Next\.js, Tailwind CSS, Vitest])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Développement back\-end] : Expert], [#strong[Mots-clés] : Node\.js, Express, NestJS, GraphQL, REST API])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud & DevOps] : Avancé], [#strong[Mots-clés] : AWS, Docker, Kubernetes, Terraform, GitHub Actions])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Bases de données] : Avancé], [#strong[Mots-clés] : PostgreSQL, MongoDB, Redis, Elasticsearch, Prisma])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de l’innovation technique][][Bluewave Technologies][juin 2023]
Récompense décernée à l’issue du hackathon interne pour la conception d’un assistant de recherche documentaire basé sur l’IA générative\.
]

= Certificats
#resume-pad[
#resume-subheading[AWS Certified Solutions Architect – Associate][#link("https://aws.amazon.com/fr/certification/")[https\:\/\/aws\.amazon\.com\/fr\/certification\/]][Amazon Web Services][mars 2022]

#resume-subheading[Certified Kubernetes Application Developer][#link("https://www.cncf.io/certification/ckad/")[https\:\/\/www\.cncf\.io\/certification\/ckad\/]][Cloud Native Computing Foundation][oct. 2023]
]

= Projets
#resume-pad[
#resume-subheading[OpenTrack][#link("https://github.com/camille-renard/opentrack")[https\:\/\/github\.com\/camille\-renard\/opentrack]][Application open\-source de suivi de temps et de gestion de projets pour les équipes distribuées\.][janv. 2023–mars 2023]
- Conception complète d’une application full\-stack avec Next\.js, Prisma et PostgreSQL
- Authentification sécurisée avec NextAuth, déploiement sur Vercel et Supabase
- Intégration d’un tableau de bord temps réel à l’aide de WebSockets
#strong[Mots-clés] : Next\.js, Prisma, PostgreSQL, WebSockets, Open Source

#resume-subheading[DataViz – Tableau de bord énergie][#link("https://dataviz.camille-renard.dev")[https\:\/\/dataviz\.camille\-renard\.dev]][Visualisation interactive de la consommation énergétique de bâtiments publics à partir de données ouvertes\.][oct. 2020–févr. 2021]
- Création d’un pipeline de collecte et de transformation de données ouvertes avec Python et Pandas
- Développement d’une interface de visualisation avec D3\.js et TypeScript
- Publication du projet en open source et présentation lors d’un meetup Data Paris
#strong[Mots-clés] : D3\.js, Python, Pandas, Open Data
]

= Centres d\'intérêt
#resume-pad[
#strong[Randonnée] : Alpes, Trail, Photographie, Nature

#strong[Programmation créative] : Generative art, p5\.js, Processing, Musique électronique
]

= Bénévolat
#resume-pad[
#resume-subheading[Bénévole développeuse][#link("https://lescodeursdelespoir.org")[https\:\/\/lescodeursdelespoir\.org]][Les Codeurs de l’Espoir][sept. 2021–juin 2023]
- Accompagne des associations caritatives dans la création de leurs sites web et outils internes
- Anime des ateliers d’initiation au code pour des publics éloignés du numérique
- Participe au développement d’une plateforme solidaire de mise en relation des bénévoles et des associations
]