#set document(
  title: "Camille Moreau - Analyste financière senior spécialisée en valorisation et pilotage budgétaire",
  author: "Camille Moreau",
  keywords: "Modélisation financière, Analyse financière, Outils bureautiques, Data et automatisation",
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

#text(size: 1.44em)[Analyste financière senior spécialisée en valorisation et pilotage budgétaire]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 1 44 55 66 77")[\+33 1 44 55 66 77] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.moreau@example.fr")[camille\.moreau\@example\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camille-moreau.fr")[https\:\/\/www\.camille\-moreau\.fr]

24 rue de la Banque, Paris, Île\-de\-France, France, 75002

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-moreau-finance")[camille\-moreau\-finance] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/camillem_finance")[camillem\_finance]
]

= Informations de base

#resume-pad[
Analyste financière senior avec plus de 8 ans d\'expérience en analyse de performance, modélisation financière et pilotage budgétaire\. Solide expertise en valorisation d\'entreprises, reporting consolidé et accompagnement des décisions d\'investissement\.

- Élaboration de modèles financiers robustes (DCF, comparables, scénarios)
- Analyse de rentabilité, de trésorerie et des risques financiers
- Préparation de reportings destinés à la direction générale et aux investisseurs
- Maîtrise d\'Excel, Power BI, SQL et Python pour l\'automatisation des analyses
]

= Formation
#resume-pad[
#resume-subheading[Université Paris\-Dauphine][#link("https://dauphine.psl.eu/")[https\:\/\/dauphine\.psl\.eu\/]][Master, Finance, Score : Mention Très Bien][sept. 2015–juin 2017]
- Formation axée sur la valorisation, les marchés financiers et la décision d\'investissement
- Réalisation d\'un mémoire sur l\'impact des taux bas sur les stratégies de financement
- Projet de fin d\'études \: valorisation d\'une entreprise cotée du secteur industriel
#strong[Cours] : Finance de marché, Évaluation d\'entreprise, Analyse financière approfondie, Gestion de portefeuille, Modélisation stochastique, Audit financier, Fiscalité des entreprises, Contrôle de gestion

#resume-subheading[Université de Bordeaux][#link("https://www.u-bordeaux.fr/")[https\:\/\/www\.u\-bordeaux\.fr\/]][Licence, Économie, Score : Mention Bien][sept. 2012–juin 2015]
- Acquisition des fondamentaux en économie, statistiques et comptabilité
- Premier projet d\'analyse financière sur une entreprise locale
#strong[Cours] : Microéconomie, Macroéconomie, Statistiques appliquées, Comptabilité générale, Mathématiques financières, Économie internationale
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Analyste Financier Senior][#link("https://www.axium-finance.fr")[https\:\/\/www\.axium\-finance\.fr]][Groupe Axium][mars 2021–Present]
- Pilote la modélisation financière et le processus budgétaire annuel pour un périmètre de 120 M€ de chiffre d\'affaires
- Réalise les analyses de variance, les prévisions de trésorerie et les scénarios de performance trimestriels
- Prépare les supports de comité d\'audit et les reportings mensuels à destination du comité exécutif
- Coordonne les échanges avec les auditeurs externes et les équipes contrôle de gestion
- Contribue à l\'amélioration continue des outils de pilotage et à l\'automatisation des reportings
#strong[Mots-clés] : Modélisation financière, Prévisions, Reporting, Audit

#resume-subheading[Analyste Financier][#link("https://www.bellecour-finance.fr")[https\:\/\/www\.bellecour\-finance\.fr]][Société Financière Bellecour][sept. 2017–févr. 2021]
- Construit des modèles de valorisation pour des opérations de croissance externe et des revues stratégiques
- Analyse les états financiers, la rentabilité par activité et les indicateurs clés de performance
- Participe à la due diligence financière de trois acquisitions et à la préparation des mémorandums d\'investissement
- Automatise la production de tableaux de bord mensuels sous Excel et Power BI
#strong[Mots-clés] : Valorisation, Due diligence, Capital\-investissement, Analyse financière, Tableaux de bord
]

= Langues
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Français] : Niveau natif ou bilingue], [#strong[Mots-clés] : Langue maternelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 950, CFA Level II])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Conversation professionnelle])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Modélisation financière] : Expert], [#strong[Mots-clés] : Valorisation DCF, Modèles trois états, Scénarios, Analyse de sensibilité])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analyse financière] : Avancé], [#strong[Mots-clés] : Analyse de rentabilité, Ratios financiers, Analyse de risques, Due diligence])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Outils bureautiques] : Expert], [#strong[Mots-clés] : Excel avancé, Power BI, VBA, SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data et automatisation] : Avancé], [#strong[Mots-clés] : Python, Pandas, Power Query, Tableau])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix d\'excellence en finance][][Université Paris\-Dauphine][juin 2017]
Distinction remise pour les résultats académiques et la qualité du mémoire de Master en finance\.

#resume-subheading[Bourse d\'études au mérite][][Université de Bordeaux][sept. 2014]
Bourse attribuée aux étudiants ayant obtenu les meilleurs résultats de leur promotion\.
]

= Certificats
#resume-pad[
#resume-subheading[CFA Niveau II][#link("https://www.cfainstitute.org/")[https\:\/\/www\.cfainstitute\.org\/]][CFA Institute][sept. 2023]

#resume-subheading[Certification AMF][#link("https://www.amf-france.org/")[https\:\/\/www\.amf\-france\.org\/]][Autorité des marchés financiers][mars 2019]

#resume-subheading[Certification Excel Expert][#link("https://learn.microsoft.com/fr-fr/certifications/")[https\:\/\/learn\.microsoft\.com\/fr\-fr\/certifications\/]][Microsoft][janv. 2020]
]

= Publications
#resume-pad[
#resume-subheading[L\'impact des taux bas sur la valorisation des entreprises][#link("https://www.finance-strategie.fr/publications/taux-bas-valorisation")[https\:\/\/www\.finance\-strategie\.fr\/publications\/taux\-bas\-valorisation]][Revue Finance & Stratégie][nov. 2022]
- Analyse des effets persistants des taux d\'intérêt bas sur les primes de risque et les multiples de valorisation
- Étude de cas sur des entreprises européennes du secteur industriel
]

= Projets
#resume-pad[
#resume-subheading[Tableau de bord de pilotage budgétaire][#link("https://www.axium-finance.fr/projets/tableau-bord")[https\:\/\/www\.axium\-finance\.fr\/projets\/tableau\-bord]][Conception d\'un tableau de bord consolidé pour suivre le budget, les écarts et les prévisions de trésorerie\.][janv. 2022–juin 2022]
- Centralisation des données de trois entités dans un modèle unique
- Automatisation des actualisations mensuelles avec Power Query et Power BI
- Réduction du temps de préparation du reporting de 40 %
#strong[Mots-clés] : Pilotage budgétaire, Power BI, Automatisation, Prévisions

#resume-subheading[Modèle de valorisation d\'une PME industrielle][#link("https://www.axium-finance.fr/projets/valorisation-pme")[https\:\/\/www\.axium\-finance\.fr\/projets\/valorisation\-pme]][Construction d\'un modèle DCF et d\'une analyse par comparables pour préparer une opération de cession\.][mars 2021–sept. 2021]
- Élaboration de scénarios de croissance et de marges sur cinq ans
- Analyse de sensibilité au coût du capital et au taux de croissance perpétuelle
- Présentation des conclusions au comité d\'investissement
#strong[Mots-clés] : Valorisation, DCF, Analyse de sensibilité, PME
]

= Centres d\'intérêt
#resume-pad[
#strong[Finance durable] : Investissement ESG, Obligations vertes, Transition énergétique

#strong[Sports] : Course à pied, Tennis, Randonnée

#strong[Lecture] : Économie, Histoire financière, Essais
]

= Bénévolat
#resume-pad[
#resume-subheading[Bénévole formatrice][#link("https://www.education-financiere-citoyenne.fr/")[https\:\/\/www\.education\-financiere\-citoyenne\.fr\/]][Association Éducation Financière Citoyenne][sept. 2019–juin 2023]
- Animation d\'ateliers de sensibilisation à la gestion budgétaire auprès de jeunes adultes
- Conception de supports pédagogiques sur l\'épargne, le crédit et les choix d\'investissement
- Participation à l\'organisation d\'une journée annuelle dédiée à l\'éducation financière
]