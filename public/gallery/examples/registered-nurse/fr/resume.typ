#set document(
  title: "Camille Lefèvre - Infirmière diplômée d'État",
  author: "Camille Lefèvre",
  keywords: "Soins infirmiers, Urgences, Relation d'aide, Informatique médicale",
  description: "Résumé of Camille Lefèvre",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Camille Lefèvre]] #v(-0.2em)

#text(size: 1.44em)[Infirmière diplômée d\'État]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.lefevre@example.fr")[camille\.lefevre\@example\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camille-lefevre-infirmiere.fr")[https\:\/\/www\.camille\-lefevre\-infirmiere\.fr]

45 Rue de la République, Lyon, Auvergne\-Rhône\-Alpes, France, 69003

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-lefevre")[camille\-lefevre] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M224.3 141a115 115 0 1 0 -.6 230 115 115 0 1 0 .6-230zm-.6 40.4a74.6 74.6 0 1 1 .6 149.2 74.6 74.6 0 1 1 -.6-149.2zm93.4-45.1a26.8 26.8 0 1 1 53.6 0 26.8 26.8 0 1 1 -53.6 0zm129.7 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM399 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.instagram.com/camille.infirmiere")[camille\.infirmiere]
]

= Informations de base

#resume-pad[
- Infirmière diplômée d\'État avec 5 ans d\'expérience en milieu hospitalier, spécialisée en soins généraux et urgences
- Excellente capacité à travailler en équipe pluridisciplinaire et à communiquer avec les patients et leurs familles
- Maîtrise des protocoles de soins, de l\'hygiène hospitalière et de la gestion des dossiers patients informatisés
- Reconnue pour son sens de l\'écoute, sa rigueur et sa réactivité face aux situations d\'urgence
]

= Formation
#resume-pad[
#resume-subheading[Institut de Formation en Soins Infirmiers (IFSI) de Lyon][#link("https://www.ifsi-lyon.fr")[https\:\/\/www\.ifsi\-lyon\.fr]][Licence, Soins Infirmiers, Score : Mention Bien][sept. 2017–juil. 2020]
- Formation complète aux soins infirmiers, incluant stages en hôpital, EHPAD et soins à domicile
- Acquisition de compétences techniques et relationnelles pour la prise en charge globale du patient
- Participation à des projets de recherche en soins infirmiers
#strong[Cours] : Sciences infirmières, Anatomie et physiologie, Pharmacologie, Soins d\'urgence, Hygiène hospitalière, Relation d\'aide, Santé publique, Stages cliniques
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Infirmière diplômée d\'État][#link("https://www.chu-lyon.fr")[https\:\/\/www\.chu\-lyon\.fr]][CHU de Lyon \- Hôpital Édouard Herriot][mars 2023–Present]
- Prise en charge de patients en service de médecine polyvalente (30 lits)
- Réalisation des soins techniques \: prises de sang, injections, pansements, sondages
- Gestion des dossiers patients informatisés et coordination avec les médecins et aides\-soignants
- Éducation thérapeutique des patients et de leurs familles
- Participation à la démarche qualité et à la lutte contre les infections nosocomiales
#strong[Mots-clés] : Soins généraux, Médecine polyvalente, Éducation thérapeutique, Dossier patient informatisé

#resume-subheading[Infirmière diplômée d\'État][#link("https://www.clinique-sauvegarde.fr")[https\:\/\/www\.clinique\-sauvegarde\.fr]][Clinique de la Sauvegarde][sept. 2020–févr. 2023]
- Soins infirmiers en service de chirurgie orthopédique (25 lits)
- Préparation et suivi des patients avant et après opération
- Administration des traitements antalgiques et surveillance post\-opératoire
- Collaboration avec les chirurgiens, kinésithérapeutes et équipes de rééducation
- Accompagnement des patients dans leur parcours de soins et de rééducation
#strong[Mots-clés] : Chirurgie orthopédique, Soins post\-opératoires, Gestion de la douleur, Rééducation
]

= Langues
#resume-pad[
#strong[Français] : Niveau natif ou bilingue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 850, Communication médicale])

#strong[Espagnol] : Niveau élémentaire
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Soins infirmiers] : Expert], [#strong[Mots-clés] : Prise de constantes, Injections, Pansements, Sondages, Prélèvements sanguins])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Urgences] : Avancé], [#strong[Mots-clés] : Gestion du stress, Protocoles d\'urgence, AFGSU 2])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Relation d\'aide] : Avancé], [#strong[Mots-clés] : Écoute active, Communication, Éducation thérapeutique])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Informatique médicale] : Intermédiaire], [#strong[Mots-clés] : DPI, Logiciel Hôpital, Microsoft Office])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix d\'excellence en soins infirmiers][][IFSI de Lyon][juil. 2020]
Récompense décernée pour la qualité des soins prodigués lors des stages et l\'implication dans la formation\.
]

= Certificats
#resume-pad[
#resume-subheading[AFGSU 2 \- Attestation de Formation aux Gestes et Soins d\'Urgence][#link("https://www.cesu-lyon.fr")[https\:\/\/www\.cesu\-lyon\.fr]][CESU de Lyon][sept. 2021]

#resume-subheading[Formation aux bonnes pratiques d\'hygiène][#link("https://www.chu-lyon.fr/formation-hygiene")[https\:\/\/www\.chu\-lyon\.fr\/formation\-hygiene]][Hospices Civils de Lyon][janv. 2022]

#resume-subheading[Certification en éducation thérapeutique du patient][#link("https://www.univ-lyon1.fr")[https\:\/\/www\.univ\-lyon1\.fr]][Université Claude Bernard Lyon 1][juin 2023]
]

= Publications
#resume-pad[
#resume-subheading[Prise en charge infirmière de la douleur post\-opératoire \: une revue de la littérature][#link("https://www.congres-infirmiers.fr")[https\:\/\/www\.congres\-infirmiers\.fr]][Congrès National des Infirmiers][oct. 2022]
- Poster présenté lors du congrès annuel
- Analyse des pratiques et recommandations pour l\'amélioration de la prise en charge
]

= Projets
#resume-pad[
#resume-subheading[Projet d\'amélioration de la prise en charge des patients douloureux][#link("https://www.chu-lyon.fr/projet-douleur")[https\:\/\/www\.chu\-lyon\.fr\/projet\-douleur]][Mise en place d\'un protocole d\'évaluation systématique de la douleur en service de chirurgie orthopédique][janv. 2023–juin 2023]
- Élaboration d\'un outil d\'évaluation de la douleur (EVA) et formation des équipes
- Réduction de 30% des douleurs non contrôlées signalées
#strong[Mots-clés] : Douleur, Qualité, Protocole
]

= Centres d\'intérêt
#resume-pad[
#strong[Sports] : Randonnée, Yoga, Natation

#strong[Culture] : Lecture, Cinéma, Musique
]

= Bénévolat
#resume-pad[
#resume-subheading[Infirmière bénévole][#link("https://www.croix-rouge.fr")[https\:\/\/www\.croix\-rouge\.fr]][Croix\-Rouge française \- Unité locale de Lyon][janv. 2021–Present]
- Participation à des maraudes et à des consultations infirmières pour personnes précaires
- Réalisation de soins de base, prévention et orientation vers les structures de soins
- Sensibilisation aux gestes de premiers secours
]