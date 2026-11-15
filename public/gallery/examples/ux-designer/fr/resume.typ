#set document(
  title: "Camille Moreau - Designer UX senior — conception de produits numériques centrés utilisateur",
  author: "Camille Moreau",
  keywords: "Recherche utilisateur, Prototypage et design d'interface, Design system et accessibilité, Collaboration et méthodes agiles",
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

#text(size: 1.44em)[Designer UX senior — conception de produits numériques centrés utilisateur]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.moreau@email.fr")[camille\.moreau\@email\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camillemoreau.fr")[https\:\/\/www\.camillemoreau\.fr]

12 Rue de la Paix, Paris, Île\-de\-France, France, 75002

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camillemoreau")[camillemoreau] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M232 237.2c31.8-15.2 48.4-38.2 48.4-74 0-70.6-52.6-87.8-113.3-87.8l-167.1 0 0 354.4 171.8 0c64.4 0 124.9-30.9 124.9-102.9 0-44.5-21.1-77.4-64.7-89.7zM77.9 135.9l73.1 0c28.1 0 53.4 7.9 53.4 40.5 0 30.1-19.7 42.2-47.5 42.2l-79 0 0-82.7zm83.3 233.7l-83.3 0 0-97.6 84.9 0c34.3 0 56 14.3 56 50.6 0 35.8-25.9 47-57.6 47zM519.7 128.9l-143.7 0 0-34.9 143.7 0 0 34.9zM576 305.2c0-75.9-44.4-139.2-124.9-139.2-78.2 0-131.3 58.8-131.3 135.8 0 79.9 50.3 134.7 131.3 134.7 61.3 0 101-27.6 120.1-86.3l-62.2 0c-6.7 21.9-34.3 33.5-55.7 33.5-41.3 0-63-24.2-63-65.3l185.1 0c.3-4.2 .6-8.7 .6-13.2zM390.4 274c2.3-33.7 24.7-54.8 58.5-54.8 35.4 0 53.2 20.8 56.2 54.8l-114.7 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.behance.net/camillemoreau")[camillemoreau] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M256 8a248 248 0 1 0 0 496 248 248 0 1 0 0-496zM420 122.4c29.5 36 47.4 82 47.8 132-7-1.5-77-15.7-147.5-6.8-5.8-14-11.2-26.4-18.6-41.6 78.3-32 113.8-77.5 118.3-83.5zM396.4 97.9c-3.8 5.4-35.7 48.3-111 76.5-34.7-63.8-73.2-116.2-79-124 67.2-16.2 138 1.3 190.1 47.5zM165.9 64.6c5.6 7.7 43.4 60.1 78.5 122.5-99.1 26.3-186.4 25.9-195.8 25.8 13.7-65.7 58-120.4 117.3-148.3zM44.2 256.3c0-2.2 0-4.3 .1-6.5 9.3 .2 111.9 1.5 217.7-30.1 6.1 11.9 11.9 23.9 17.2 35.9-76.6 21.6-146.2 83.5-180.5 142.3-33.8-37.6-54.5-87.2-54.5-141.6zM126 423.4c22.1-45.2 82.2-103.6 167.6-132.8 29.7 77.3 42 142.1 45.2 160.6-68.1 29-150 21.1-212.8-27.9zm248.4 8.5c-2.2-12.9-13.4-74.9-41.2-151 66.4-10.6 124.7 6.8 131.9 9.1-9.4 58.9-43.3 109.8-90.8 142z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://dribbble.com/camillemoreau")[camillemoreau]
]

= Informations de base

#resume-pad[
Designer UX senior avec plus de 7 ans d\'expérience dans la conception de produits numériques pour les secteurs de la santé, du e\-commerce et des services financiers\. Je m\'applique à comprendre les besoins réels des utilisateurs pour concevoir des interfaces intuitives, accessibles et désirables\.

- Expertise en recherche utilisateur, prototypage interactif et design system
- Approche centrée utilisateur, guidée par les données et les tests d\'utilisabilité
- Collaboration étroite avec les développeurs, les product managers et les métiers
- Passionnée par l\'accessibilité numérique et le design inclusif
]

= Formation
#resume-pad[
#resume-subheading[L\'École de design Nantes Atlantique][#link("https://www.lecolededesign.com/")[https\:\/\/www\.lecolededesign\.com\/]][Master, Design d\'interaction et expérience utilisateur, Score : 3\.8][sept. 2014–juil. 2016]
- Formation centrée sur la conception d\'interfaces et de services numériques innovants
- Projet de fin d\'études sur la conception d\'un parcours de soin connecté pour patients chroniques
- Stage de fin d\'études en agence UX, avec création de tests utilisateurs et de wireframes
#strong[Cours] : Ergonomie cognitive, Design thinking, Prototypage interactif, Recherche utilisateur, Design visuel, Méthodes agiles

#resume-subheading[Université de Rennes 2][#link("https://www.univ-rennes2.fr/")[https\:\/\/www\.univ\-rennes2\.fr\/]][Licence, Arts plastiques — Design][sept. 2011–juil. 2014]
- Acquisition des fondamentaux du design visuel, de l\'histoire de l\'art et de la sémiologie de l\'image
- Réalisation de projets graphiques individuels et collectifs, alliant créativité et rigueur
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Designer UX senior][#link("https://www.cortex-design.fr")[https\:\/\/www\.cortex\-design\.fr]][Cortex Design][janv. 2022–Present]
- Pilote la conception UX\/UI de la plateforme de télémédecine pour un client du secteur de la santé
- Anime des ateliers de co\-design avec les équipes produit, technique et médicale
- Développe et fait évoluer le design system multi\-produits (Figma, Storybook)
- Planifie et réalise des tests d\'utilisabilité, puis formalise des recommandations d\'amélioration
- Accompagne l\'équipe dans l\'application des critères d\'accessibilité RGAA et WCAG 2\.1
#strong[Mots-clés] : Recherche utilisateur, Tests d\'utilisabilité, Design system, Accessibilité, Figma

#resume-subheading[Product Designer][#link("https://www.numen-studio.fr")[https\:\/\/www\.numen\-studio\.fr]][Numen Studio][mars 2019–déc. 2021]
- Conception de parcours utilisateurs et de wireframes pour des applications web et mobiles
- Réalisation de prototypes interactifs présentés lors de recettes avec les clients
- Mise en place d\'un design system interne, réduisant de 30 % le temps de production
- Participation à la refonte de l\'application mobile d\'une grande enseigne de distribution
- Contribution aux tests utilisateurs en laboratoire et à distance
#strong[Mots-clés] : Wireframing, Prototypage, User journey, Design system, Sketch

#resume-subheading[UI\/UX Designer][#link("https://www.pixelea.fr")[https\:\/\/www\.pixelea\.fr]][Pixelea][sept. 2016–févr. 2019]
- Conception d\'interfaces responsives pour des sites vitrines et des outils intranet
- Création d\'identités visuelles et de chartes graphiques pour des PME
- Collaboration avec les développeurs pour assurer la faisabilité technique des maquettes
- Réalisation de supports de présentation pour les réponses aux appels d\'offres
#strong[Mots-clés] : UI design, Intégration HTML\/CSS, Identité visuelle, Responsive design
]

= Langues
#resume-pad[
#strong[Français] : Niveau natif ou bilingue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 950])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Recherche utilisateur] : Expert], [#strong[Mots-clés] : Entretiens utilisateurs, Personas, Parcours utilisateur, Tests d\'utilisabilité, Analyse de données])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prototypage et design d\'interface] : Expert], [#strong[Mots-clés] : Figma, Sketch, Adobe XD, InVision, Principle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Design system et accessibilité] : Avancé], [#strong[Mots-clés] : Design tokens, Composants, WCAG 2\.1, RGAA])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Collaboration et méthodes agiles] : Avancé], [#strong[Mots-clés] : Scrum, Kanban, Lean UX, Ateliers de co\-design])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix UX Design – Mention accessibilité][][UX Design Awards Europe][oct. 2021]
Récompense le projet « Mon Suivi Santé » pour sa conception inclusive et son interface accessible aux utilisateurs seniors\.
]

= Certificats
#resume-pad[
#resume-subheading[Certified User Experience Professional (CUP)][#link("https://www.nngroup.com/")[https\:\/\/www\.nngroup\.com\/]][Nielsen Norman Group][mars 2020]

#resume-subheading[Google UX Design Professional Certificate][#link("https://www.coursera.org/")[https\:\/\/www\.coursera\.org\/]][Coursera][août 2021]
]

= Publications
#resume-pad[
#resume-subheading[Améliorer l\'accessibilité des interfaces mobiles pour les seniors][#link("https://www.lescahiersdudesign.fr/")[https\:\/\/www\.lescahiersdudesign\.fr\/]][Les Cahiers du Design][juin 2022]
Article de synthèse présentant les bonnes pratiques d\'accessibilité numérique et les retours d\'expérience de tests utilisateurs menés auprès de personnes âgées\.
]

= Projets
#resume-pad[
#resume-subheading[Mon Suivi Santé][#link("https://www.monsuivisante.fr")[https\:\/\/www\.monsuivisante\.fr]][Conception UX\/UI d\'une application mobile de suivi médical pour patients chroniques\.][sept. 2021–Present]
- Conduite d\'entretiens utilisateurs et de tests d\'utilisabilité
- Création de l\'architecture de l\'information et des parcours clés
- Conception d\'une interface accessible conforme aux normes WCAG 2\.1
#strong[Mots-clés] : Mobile, Santé, Accessibilité, Figma, Tests utilisateurs

#resume-subheading[Maison Verte][#link("https://www.maisonverte.fr")[https\:\/\/www\.maisonverte\.fr]][Refonte de l\'expérience d\'achat d\'une marque de décoration éco\-responsable\.][janv. 2023–juin 2023]
- Audit UX et analyse des parcours d\'achat existants
- Conception d\'une interface épurée mettant en avant les engagements éco\-responsables
- Mise en place d\'un design system et de composants réutilisables
#strong[Mots-clés] : E\-commerce, UX\/UI, Design system, Conversion
]

= Centres d\'intérêt
#resume-pad[
#strong[Design social] : Design inclusif, Accessibilité numérique, Éco\-conception

#strong[Arts et culture] : Photographie, Musées, Littérature
]

= Bénévolat
#resume-pad[
#resume-subheading[Bénévole UX][#link("https://www.designersethiques.org/")[https\:\/\/www\.designersethiques\.org\/]][Designers Éthiques][sept. 2020–Present]
Accompagnement d\'associations à but non lucratif dans l\'amélioration de leurs outils numériques et la formation de leurs équipes aux bonnes pratiques d\'accessibilité\.
]