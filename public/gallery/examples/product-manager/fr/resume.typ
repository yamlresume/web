#set document(
  title: "Camille Rousseau - Product Manager Senior — SaaS & Fintech",
  author: "Camille Rousseau",
  keywords: "Gestion de produit, Méthodes agiles, Analyse de données, Design et recherche utilisateur",
  description: "Résumé of Camille Rousseau",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Camille Rousseau]] #v(-0.2em)

#text(size: 1.44em)[Product Manager Senior — SaaS & Fintech]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.rousseau@protonmail.com")[camille\.rousseau\@protonmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camillerousseau.fr")[https\:\/\/www\.camillerousseau\.fr]

12 rue Oberkampf, Paris, Île\-de\-France, France, 75011

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-rousseau")[camille\-rousseau] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@camille.rousseau")[camille\.rousseau]
]

= Informations de base

#resume-pad[
Product Manager expérimentée avec #strong[plus de 8 ans d\'expérience] dans le développement de produits SaaS et fintech, de l\'idéation au lancement à grande échelle\.

- Vision produit, feuille de route et priorisation fondées sur la data et les besoins utilisateurs
- Encadrement d\'équipes pluridisciplinaires (design, ingénierie, marketing) en méthode Agile\/Scrum
- Forte expertise en discovery, tests utilisateurs, OKR et analytics produit
- Passionnée par la création de solutions simples et impactantes pour résoudre des problèmes complexes
]

= Formation
#resume-pad[
#resume-subheading[HEC Paris][#link("https://www.hec.edu")[https\:\/\/www\.hec\.edu]][Master, Management de l\'Innovation — Spécialisation Product Management, Score : 3\.8][sept. 2012–juin 2015]
- Développement d\'une double compétence stratégie et digital
- Projet de fin d\'études \: création d\'un prototype d\'application mobile remarqué par un comité d\'entrepreneurs
- Échange universitaire à l\'Université de Montréal (HEC Montréal) orienté vers le commerce électronique
#strong[Cours] : Stratégie marketing et innovation, Gestion de projet et méthodes agiles, Analyse de données pour la décision, Expérience client et design thinking, Entrepreneuriat et business model
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Lead Product Manager][#link("https://www.alto.io")[https\:\/\/www\.alto\.io]][Alto][janv. 2022–Present]
- Définition et exécution de la feuille de route produit d\'une plateforme SaaS B2B dédiée aux paiements internationaux
- Animation d\'une équipe produit de 4 PM et coordination avec 6 équipes de développement
- Mise en place d\'un cadre de priorisation basé sur l\'impact business et la valeur client, réduisant les délais de mise sur le marché de 30 %
- Conduite de plus de 50 entretiens utilisateurs et tests d\'utilisabilité par trimestre pour éclairer les décisions produit
- Pilotage des OKR produit et présentation des résultats à la direction générale et au conseil d\'administration
#strong[Mots-clés] : SaaS, Fintech, Leadership, Feuille de route, OKR, Data driven

#resume-subheading[Product Manager][#link("https://www.numera.fr")[https\:\/\/www\.numera\.fr]][Numera][janv. 2020–déc. 2021]
- Gestion du cycle de vie complet de l\'application mobile de gestion de finances personnelles (2,5 M d\'utilisateurs)
- Collaboration étroite avec le design et l\'ingénierie pour livrer des fonctionnalités majeures \: agrégation bancaire, scores financiers, notifications prédictives
- Optimisation du parcours d\'onboarding, avec une augmentation de \+18 % de l\'activation à 7 jours
- Expérimentations A\/B en continu et analyse des entonnoirs de conversion via Amplitude et SQL
#strong[Mots-clés] : Mobile, Tests A\/B, Amplitude, SQL, Recherche utilisateur

#resume-subheading[Product Owner][#link("https://www.lifya.com")[https\:\/\/www\.lifya\.com]][Lifya][mars 2018–déc. 2019]
- Conduite de la refonte du parcours d\'achat du site e\-commerce Lifya (CA annuel de 40 M€)
- Rédaction des user stories, priorisation du backlog et animation des cérémonies Agile pour 3 équipes de développement
- Coordination avec les équipes marketing, logistique et support pour améliorer la satisfaction client (NPS \+24 points)
- Mise en place des premiers indicateurs produit et des tableaux de bord de suivi de performance
#strong[Mots-clés] : E\-commerce, Scrum, Backlog, NPS, KPIs
]

= Langues
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Français] : Niveau natif ou bilingue], [#strong[Mots-clés] : Langue maternelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 985, Travail quotidien en anglais])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Niveau opérationnel])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestion de produit] : Expert], [#strong[Mots-clés] : Découverte produit, Feuille de route, Priorisation, OKR, Spécifications fonctionnelles])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Méthodes agiles] : Expert], [#strong[Mots-clés] : Scrum, Kanban, Lean Startup, Agilité à l\'échelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analyse de données] : Avancé], [#strong[Mots-clés] : SQL, Amplitude, Mixpanel, Tableau de bord, Tests A\/B])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Design et recherche utilisateur] : Avancé], [#strong[Mots-clés] : Recherche utilisateur, Entretiens terrain, Personas, Figma, Tests utilisateurs])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix du meilleur produit SaaS][][Grand Prix Innovation \- Bpifrance][nov. 2023]
Récompense attribuée à la refonte de la plateforme Alto, saluée pour son expérience utilisateur et son impact sur la satisfaction client\.
]

= Certificats
#resume-pad[
#resume-subheading[Certificat Product Management \- Niveau avancé][#link("https://www.pragmaticinstitute.com")[https\:\/\/www\.pragmaticinstitute\.com]][Pragmatic Institute][mars 2021]

#resume-subheading[Certified Scrum Product Owner (CSPO)][#link("https://www.scrumalliance.org/certifications/cspo")[https\:\/\/www\.scrumalliance\.org\/certifications\/cspo]][Scrum Alliance][août 2017]
]

= Publications
#resume-pad[
#resume-subheading[Priorisation produit \: méthodes RICE et WSJF comparées][#link("https://www.productblog.fr/priorisation-rice-wsjf")[https\:\/\/www\.productblog\.fr\/priorisation\-rice\-wsjf]][Le Product Blog][juin 2023]
Article de synthèse sur les méthodes de priorisation produit, illustré par des cas pratiques issus du secteur fintech\. Partage des critères d\'impact, d\'effort et de confiance pour aider les équipes à arbitrer efficacement\.
]

= Références
#resume-pad[
#resume-subheading[Claire Dubois][Directrice produit chez Alto][claire\.dubois\@alto\.io][\+33 1 45 67 89 10]
Camille est une product manager exceptionnelle \: elle sait combiner vision stratégique, rigueur d\'exécution et intelligence relationnelle\. Elle a considérablement élevé le niveau de notre organisation produit\.
]

= Projets
#resume-pad[
#resume-subheading[BudgetFlow][#link("https://www.budgetflow.fr")[https\:\/\/www\.budgetflow\.fr]][Application personnelle de gestion budgétaire utilisée par plus de 500 personnes\.][janv. 2023–déc. 2023]
- Conception et développement d\'un MVP de suivi budgétaire en no\-code (Bubble, Airtable)
- Réalisation d\'entretiens utilisateurs et de tests d\'empathie pour définir les fonctionnalités clés
- Déploiement d\'une première version publique et itérations basées sur les retours de la communauté
#strong[Mots-clés] : No\-code, MVP, Bubble, Airtable, Retours utilisateurs
]

= Centres d\'intérêt
#resume-pad[
#strong[Sport] : Course à pied, Yoga, Randonnée

#strong[Technologie] : Intelligence artificielle, No\-code, Veille technologique

#strong[Lecture] : Essais économiques, Science\-fiction
]

= Bénévolat
#resume-pad[
#resume-subheading[Mentor produit][#link("https://www.parisproductclub.fr")[https\:\/\/www\.parisproductclub\.fr]][Paris Product Club][janv. 2021–déc. 2023]
- Accompagnement de startups en phase d\'amorçage sur leur stratégie produit
- Animation d\'ateliers de découverte et de priorisation pour des équipes fondatrices
- Participation à des sessions de coaching collectif sur les méthodes Lean et Agile
]