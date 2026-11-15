#set document(
  title: "Camille Moreau - Ingénieur mécanique senior spécialisé en conception énergétique",
  author: "Camille Moreau",
  keywords: "Conception mécanique, Simulation numérique, Gestion de projet, Industrialisation",
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

#text(size: 1.44em)[Ingénieur mécanique senior spécialisé en conception énergétique]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.moreau@example.fr")[camille\.moreau\@example\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camillemoreau-ingenierie.fr")[https\:\/\/www\.camillemoreau\-ingenierie\.fr]

24 rue des Ateliers, Lyon, Auvergne\-Rhône\-Alpes, France, 69003

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-moreau-meca")[camille\-moreau\-meca] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/camillemeca")[camillemeca]
]

= Informations de base

#resume-pad[
- Ingénieur mécanique avec plus de 8 ans d\'expérience dans la conception, la simulation et l\'industrialisation de systèmes mécaniques et thermiques\.
- Expertise en CAO 3D, calcul de structures, CFD et gestion de projets industriels, du cahier des charges à la mise en production\.
- Solide expérience en environnement réglementé, coordination de fournisseurs et amélioration continue de la performance produit\.
- Reconnu pour la rigueur technique, la communication transversale et la capacité à transformer des besoins clients en solutions fiables\.
]

= Formation
#resume-pad[
#resume-subheading[INSA Lyon][#link("https://www.insa-lyon.fr")[https\:\/\/www\.insa\-lyon\.fr]][Master, Génie mécanique, Score : 3\.7\/4\.0][2012\-09\-01–2017\-07\-01]
- Formation d\'ingénieur généraliste orientée conception mécanique, énergétique et industrialisation\.
- Projets d\'équipe sur des systèmes de transmission, des échangeurs thermiques et des bancs d\'essai instrumentés\.
- Mémoire de fin d\'études consacré à l\'optimisation topologique de pièces mécaniques allégées\.
#strong[Cours] : Résistance des matériaux, Thermodynamique appliquée, Mécanique des fluides, Conception assistée par ordinateur, Fabrication mécanique, Vibrations et dynamique des structures, Science des matériaux, Automatique et systèmes embarqués
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Ingénieur mécanique senior][#link("https://www.voltaire-energie.fr")[https\:\/\/www\.voltaire\-energie\.fr]][Voltaire Énergie][2021\-04\-01–Present]
- Piloter la conception mécanique de modules de récupération de chaleur pour des sites industriels et des réseaux de chaleur urbains\.
- Coordonner les études thermiques, les calculs de résistance et la sélection des matériaux avec les équipes procédés et électriques\.
- Gérer les revues de conception, les analyses de risques et la documentation technique jusqu\'à la réception client\.
- Encadrer deux ingénieurs juniors et animer les échanges avec les fournisseurs stratégiques\.
#strong[Mots-clés] : Conception mécanique, Thermique, CAO, Gestion de projet, Validation

#resume-subheading[Ingénieur mécanique][#link("https://www.atelier-aerotech.fr")[https\:\/\/www\.atelier\-aerotech\.fr]][Atelier Aérotech][2017\-09\-01–2021\-03\-31]
- Concevoir des ensembles mécaniques et des supports de fixation pour des équipements aéronautiques\.
- Réaliser des simulations statiques et modales sous ANSYS afin de valider les choix de conception\.
- Collaborer avec l\'atelier de fabrication pour optimiser les tolérances, les matériaux et les coûts de production\.
- Participer aux essais de qualification et rédiger les rapports techniques associés\.
#strong[Mots-clés] : Aéronautique, ANSYS, Tolérancement, Essais, Fabrication

#resume-subheading[Ingénieur mécanique stagiaire][#link("https://www.groupe-mecallia.fr")[https\:\/\/www\.groupe\-mecallia\.fr]][Groupe Mécallia][2016\-02\-01–2016\-08\-31]
- Contribuer à la refonte d\'un banc d\'essai de pompes industrielles\.
- Modéliser les pièces sous SolidWorks et produire les plans de fabrication\.
- Analyser les résultats d\'essais et proposer des améliorations de montage\.
#strong[Mots-clés] : SolidWorks, Pompes, Banc d\'essai, Analyse
]

= Langues
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Français] : Niveau natif ou bilingue], [#strong[Mots-clés] : Langue maternelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 920, Rédaction technique])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Conversation professionnelle])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Conception mécanique] : Expert], [#strong[Mots-clés] : SolidWorks, CATIA V5, Tolérancement, RDM, DFM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Simulation numérique] : Avancé], [#strong[Mots-clés] : ANSYS, CFD, Thermique, Fatigue, Matériaux composites])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestion de projet] : Avancé], [#strong[Mots-clés] : Planification, Budget, Fournisseurs, Agile, Documentation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Industrialisation] : Intermédiaire], [#strong[Mots-clés] : Lean, Prototypage, Essais, Qualité, Amélioration continue])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de l\'innovation mécanique][][Association Française de Mécanique][2023\-06\-15]
Distinction remise pour un module compact de récupération de chaleur réduisant les pertes thermiques de 18 % sur une ligne de production\.
]

= Certificats
#resume-pad[
#resume-subheading[Certification professionnelle SolidWorks][#link("https://www.solidworks.com/certification")[https\:\/\/www\.solidworks\.com\/certification]][Dassault Systèmes][2019\-11\-20]

#resume-subheading[Ceinture verte Lean Six Sigma][#link("https://www.iassc.org")[https\:\/\/www\.iassc\.org]][IASSC][2022\-05\-10]
]

= Publications
#resume-pad[
#resume-subheading[Optimisation thermique des échangeurs à plaques pour réseaux de chaleur][#link("https://www.rfgm.fr/articles/echangeurs-plaques")[https\:\/\/www\.rfgm\.fr\/articles\/echangeurs\-plaques]][Revue Française de Génie Mécanique][2022\-10\-01]
- Article présentant une méthode de dimensionnement d\'échangeurs à plaques intégrant les contraintes de maintenance\.
- Résultats issus d\'une campagne de mesures sur trois sites industriels et d\'un modèle CFD validé\.
]

= Projets
#resume-pad[
#resume-subheading[Récupérateur de chaleur industriel][#link("https://www.voltaire-energie.fr/projets/recuperateur")[https\:\/\/www\.voltaire\-energie\.fr\/projets\/recuperateur]][Module compact de récupération de chaleur destiné aux procédés industriels\.][2022\-01\-01–2023\-09\-30]
- Conception mécanique complète d\'un échangeur air\-eau modulaire\.
- Intégration des contraintes de maintenance, d\'isolation et de sécurité\.
- Validation par calculs thermomécaniques et essais sur banc\.
#strong[Mots-clés] : Thermique, Échangeur, Industrie, Modélisation

#resume-subheading[Banc d\'essai pour pompes à haut rendement][][Banc instrumenté pour caractériser le rendement et la fiabilité de pompes industrielles\.][2019\-03\-01–2020\-02\-29]
- Définition de l\'architecture mécanique, des capteurs et de la chaîne d\'acquisition\.
- Réalisation des plans, du dossier de fabrication et du protocole d\'essai\.
- Réduction du temps de qualification des pompes de 25 %\.
#strong[Mots-clés] : Banc d\'essai, Instrumentation, Pompes, Essais
]

= Centres d\'intérêt
#resume-pad[
#strong[Sports] : Randonnée, Escalade, Cyclisme

#strong[Musique] : Guitare, Jazz

#strong[Fabrication] : Impression 3D, Menuiserie
]

= Bénévolat
#resume-pad[
#resume-subheading[Bénévole technique][#link("https://www.isf-france.org")[https\:\/\/www\.isf\-france\.org]][Ingénieurs Sans Frontières France][2018\-09\-01–Present]
- Apporter un appui technique à des projets d\'accès à l\'eau et d\'énergie rurale\.
- Participer à la revue de plans, au dimensionnement d\'équipements et à la formation des équipes locales\.
- Contribuer à la documentation et au retour d\'expérience des missions\.
]