#set document(
  title: "Camille Laurent - Chef de projet senior | Transformation digitale et Agile",
  author: "Camille Laurent",
  keywords: "Gestion de projet, Méthodes agiles, Outils, Management",
  description: "Résumé of Camille Laurent",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Camille Laurent]] #v(-0.2em)

#text(size: 1.44em)[Chef de projet senior | Transformation digitale et Agile]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.laurent@example.fr")[camille\.laurent\@example\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camillelaurent.fr")[https\:\/\/www\.camillelaurent\.fr]

12 rue de la Paix, Paris, Île\-de\-France, France, 75002

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camillelaurent")[camillelaurent] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/camillelaurent")[camillelaurent]
]

= Informations de base

#resume-pad[
Chef de projet senior avec plus de 8 ans d\'expérience dans le pilotage de projets de transformation digitale, principalement dans les secteurs bancaire, assurance et santé\.

- Expertise en méthodologies agiles (Scrum, Kanban, SAFe) et gestion de projets complexes
- Solide expérience en management d\'équipes pluridisciplinaires et coordination de parties prenantes
- Maîtrise du budget, des risques, de la qualité et du reporting
- Certifié PMP, PRINCE2 et Scrum Master
]

= Formation
#resume-pad[
#resume-subheading[Université Paris\-Dauphine][#link("https://www.dauphine.psl.eu/")[https\:\/\/www\.dauphine\.psl\.eu\/]][Master, Management de projets et systèmes d\'information, Score : Mention Bien][sept. 2014–juil. 2016]
- Formation spécialisée en pilotage de projets complexes et transformation digitale
- Projets académiques en collaboration avec des entreprises partenaires
- Développement de compétences en leadership et communication
#strong[Cours] : Gestion de projet avancée, Méthodes agiles et Scrum, Analyse des risques, Management d\'équipe, Budget et contrôle de gestion, Systèmes d\'information
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Chef de projet senior][#link("https://atos.net/fr")[https\:\/\/atos\.net\/fr]][Atos][janv. 2021–Present]
- Pilote de projets de transformation digitale pour des clients grands comptes (banque, assurance, santé)
- Management d\'équipes pluridisciplinaires de 10 à 15 personnes (développeurs, business analysts, UX)
- Mise en place de méthodologies agiles (Scrum, Kanban) et animation des rituels
- Gestion du budget, des risques et des délais ; reporting auprès du comité de direction
- Coordination des parties prenantes internes et externes, en France et à l\'international
#strong[Mots-clés] : Gestion de projet, Agile, Scrum, Budget, Risques

#resume-subheading[Chef de projet][#link("https://www.capgemini.com/fr-fr/")[https\:\/\/www\.capgemini\.com\/fr\-fr\/]][Capgemini][sept. 2016–déc. 2020]
- Gestion de projets web et mobiles pour des clients du secteur public et privé
- Rédaction des cahiers des charges, planification et suivi de l\'avancement
- Animation d\'ateliers de cadrage et de recettes fonctionnelles
- Encadrement d\'une équipe de 5 à 8 personnes
- Contribution à l\'amélioration continue des processus internes
#strong[Mots-clés] : Web, Mobile, Cadrage, Planification, Recette
]

= Langues
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Français] : Niveau natif ou bilingue], [#strong[Mots-clés] : Langue maternelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 950, Affaires])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Conversation])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestion de projet] : Expert], [#strong[Mots-clés] : Planification, Budget, Risques, Qualité, Reporting])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Méthodes agiles] : Avancé], [#strong[Mots-clés] : Scrum, Kanban, SAFe, Jira, Confluence])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Outils] : Avancé], [#strong[Mots-clés] : MS Project, Jira, Trello, Power BI, Excel avancé])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Management] : Avancé], [#strong[Mots-clés] : Leadership, Communication, Négociation, Coaching])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de l\'Innovation Project Management][][Atos][juin 2022]
Récompense pour la mise en place d\'un tableau de bord prédictif de suivi des risques projet, adopté par 5 équipes\.
]

= Certificats
#resume-pad[
#resume-subheading[PMP (Project Management Professional)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][PMI][mars 2020]

#resume-subheading[PRINCE2 Practitioner][#link("https://www.axelos.com/certifications/prince2")[https\:\/\/www\.axelos\.com\/certifications\/prince2]][AXELOS][nov. 2019]

#resume-subheading[Professional Scrum Master I][#link("https://www.scrum.org/professional-scrum-master-i-certification")[https\:\/\/www\.scrum\.org\/professional\-scrum\-master\-i\-certification]][Scrum\.org][mai 2021]
]

= Publications
#resume-pad[
#resume-subheading[Pilotage agile des projets de transformation digitale][#link("https://www.revues.org/rfg")[https\:\/\/www\.revues\.org\/rfg]][Revue Française de Gestion][oct. 2023]
- Article sur les bonnes pratiques de gouvernance agile dans les grands projets
- Analyse de cas concrets et retours d\'expérience
]

= Références
#resume-pad[
#resume-subheading[Sophie Martin][Directrice de programme, Atos][sophie\.martin\@atos\.net][\+33 6 98 76 54 32]
Camille a démontré une excellente capacité à fédérer les équipes et à livrer des projets complexes dans les délais\. Sa rigueur et son leadership sont remarquables\.
]

= Projets
#resume-pad[
#resume-subheading[Refonte du portail client][#link("https://www.example.com/portail-client")[https\:\/\/www\.example\.com\/portail\-client]][Refonte complète du portail client d\'un grand groupe bancaire][janv. 2022–déc. 2022]
- Pilotage du projet de A à Z, de la phase de cadrage à la mise en production
- Coordination de 3 équipes réparties entre Paris et Casablanca
- Livraison dans les délais avec un budget de 1,2 M€
#strong[Mots-clés] : Transformation digitale, Banque, Agile

#resume-subheading[Application mobile santé][#link("https://www.example.com/app-sante")[https\:\/\/www\.example\.com\/app\-sante]][Développement d\'une application mobile pour le suivi des patients][mars 2019–nov. 2019]
- Gestion du projet en méthode Scrum avec des sprints de 2 semaines
- Collaboration étroite avec les équipes médicales et techniques
- Obtention d\'un taux de satisfaction utilisateur de 4,7\/5
#strong[Mots-clés] : Santé, Mobile, Scrum
]

= Centres d\'intérêt
#resume-pad[
#strong[Sports] : Course à pied, Natation, Randonnée

#strong[Culture] : Lecture, Cinéma, Voyages
]

= Bénévolat
#resume-pad[
#resume-subheading[Bénévole logistique][#link("https://www.restosducoeur.org/")[https\:\/\/www\.restosducoeur\.org\/]][Les Restos du Cœur][sept. 2018–déc. 2020]
- Participation à la collecte alimentaire et à la distribution des repas
- Organisation des plannings des bénévoles
- Contribution à la coordination locale
]