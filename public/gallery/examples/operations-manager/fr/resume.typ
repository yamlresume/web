#set document(
  title: "Camille Moreau - Responsable des opérations",
  author: "Camille Moreau",
  keywords: "Gestion des opérations, Management d'équipe, Amélioration continue, Supply chain, Analyse et pilotage",
  description: "Résumé of Camille Moreau",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Camille Moreau]] #v(-0.2em)

#text(size: 1.44em)[Responsable des opérations]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.moreau@example.fr")[camille\.moreau\@example\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camille-moreau.fr")[https\:\/\/www\.camille\-moreau\.fr]

24 rue des Archives, Paris, Île\-de\-France, France, 75004

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-moreau-ops")[camille\-moreau\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/camille_ops")[camille\_ops]
]

= Informations de base

#resume-pad[
- Responsable des opérations avec plus de 10 ans d\'expérience dans la logistique, la supply chain et le pilotage de sites\.
- Solide expertise en management d\'équipes pluridisciplinaires, en amélioration continue et en optimisation des processus\.
- Capacité démontrée à piloter des budgets, des indicateurs de performance et des projets transverses\.
- Anglais professionnel et pratique courante des outils de reporting et d\'analyse de données\.
]

= Formation
#resume-pad[
#resume-subheading[Université Paris\-Dauphine][#link("https://www.dauphine.psl.eu")[https\:\/\/www\.dauphine\.psl\.eu]][Master, Management des opérations et de la supply chain, Score : Mention Bien][sept. 2012–juin 2014]
- Formation solide en pilotage des opérations et en gestion des flux\.
- Projets académiques consacrés à l\'optimisation logistique et à la performance industrielle\.
- Développement de compétences en analyse quantitative et en management d\'équipe\.
#strong[Cours] : Gestion des opérations, Supply Chain Management, Contrôle de gestion, Gestion de projet, Analyse de données, Management d\'équipe
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Responsable des opérations][#link("https://www.groupehorizon.fr")[https\:\/\/www\.groupehorizon\.fr]][Groupe Horizon][janv. 2020–Present]
- Pilotage quotidien des opérations d\'un site logistique de 120 collaborateurs\.
- Management direct de 18 personnes et animation d\'une équipe transverse de 6 responsables\.
- Déploiement d\'indicateurs de performance et de tableaux de bord hebdomadaires\.
- Réduction des coûts opérationnels de 12 % en deux ans grâce à la refonte des processus\.
- Coordination des relations avec les transporteurs, fournisseurs et clients grands comptes\.
#strong[Mots-clés] : Pilotage opérationnel, Management d\'équipe, Amélioration continue, KPI, Budget

#resume-subheading[Chef d\'équipe logistique][#link("https://www.logifret-solutions.fr")[https\:\/\/www\.logifret\-solutions\.fr]][LogiFret Solutions][mars 2017–déc. 2019]
- Encadrement d\'une équipe de 25 préparateurs et caristes sur deux shifts\.
- Mise en place d\'un plan de formation et de polyvalence pour réduire les ruptures de service\.
- Suivi des stocks, des expéditions et de la qualité de service client\.
- Participation active à la certification ISO 9001 du site\.
#strong[Mots-clés] : Logistique, Planification, Sécurité, Performance, Qualité

#resume-subheading[Coordinateur des opérations][#link("https://www.maison-delcourt.fr")[https\:\/\/www\.maison\-delcourt\.fr]][Maison Delcourt][sept. 2014–févr. 2017]
- Coordination des approvisionnements et des livraisons pour trois sites régionaux\.
- Optimisation des tournées de transport et réduction des délais de livraison\.
- Suivi budgétaire des achats et négociation avec les fournisseurs\.
- Amélioration de la satisfaction client par la mise en place d\'un suivi des réclamations\.
#strong[Mots-clés] : Coordination, Approvisionnement, Stocks, Transport, Relation fournisseurs
]

= Langues
#resume-pad[
#strong[Français] : Niveau natif ou bilingue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 920])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Niveau B1])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestion des opérations] : Expert], [#strong[Mots-clés] : Planification, Organisation, Processus, Qualité])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Management d\'équipe] : Expert], [#strong[Mots-clés] : Recrutement, Coaching, Animation, Évaluation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Amélioration continue] : Avancé], [#strong[Mots-clés] : Lean, Six Sigma, Kaizen, PDCA])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Supply chain] : Avancé], [#strong[Mots-clés] : Approvisionnement, Stocks, Transport, Logistique])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analyse et pilotage] : Intermédiaire], [#strong[Mots-clés] : KPI, Tableaux de bord, Excel, Power BI])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de l\'innovation opérationnelle][][Groupe Horizon][mars 2023]
Distinction attribuée pour la refonte d\'un processus logistique ayant permis de réduire les coûts et les délais de traitement\.
]

= Certificats
#resume-pad[
#resume-subheading[Ceinture Verte Lean Six Sigma][#link("https://www.iassc.org")[https\:\/\/www\.iassc\.org]][IASSC][juin 2021]

#resume-subheading[Certification en gestion de la supply chain][#link("https://www.ascm.org")[https\:\/\/www\.ascm\.org]][ASCM][janv. 2022]
]

= Projets
#resume-pad[
#resume-subheading[Déploiement ERP][#link("https://www.groupehorizon.fr/projets/erp")[https\:\/\/www\.groupehorizon\.fr\/projets\/erp]][Migration et déploiement d\'un ERP pour les opérations logistiques et achats\.][janv. 2021–nov. 2021]
- Coordination des équipes métiers, informatiques et fournisseurs\.
- Cartographie et simplification des processus avant migration\.
- Plan de formation des utilisateurs et accompagnement du changement\.
#strong[Mots-clés] : ERP, Conduite du changement, Processus, Formation

#resume-subheading[Optimisation des tournées][#link("https://www.logifret-solutions.fr/projets/tournees")[https\:\/\/www\.logifret\-solutions\.fr\/projets\/tournees]][Refonte des tournées de livraison pour améliorer la ponctualité et réduire les coûts\.][avr. 2018–oct. 2018]
- Analyse des données de transport et des contraintes clients\.
- Nouveau découpage des zones et ajustement des fréquences de livraison\.
- Réduction des kilomètres parcourus et amélioration du taux de service\.
#strong[Mots-clés] : Optimisation, Tournées, Coûts, Délais
]

= Centres d\'intérêt
#resume-pad[
#strong[Randonnée] : Sentiers, Nature, Photographie

#strong[Cuisine] : Cuisine française, Pâtisserie, Œnologie
]

= Bénévolat
#resume-pad[
#resume-subheading[Bénévole logistique][#link("https://www.restosducoeur.org")[https\:\/\/www\.restosducoeur\.org]][Les Restos du Cœur][oct. 2019–Present]
- Participation à la collecte et à la distribution de denrées alimentaires\.
- Aide à l\'organisation des stocks et à la préparation des campagnes hivernales\.
- Sensibilisation des équipes bénévoles aux bonnes pratiques logistiques\.
]