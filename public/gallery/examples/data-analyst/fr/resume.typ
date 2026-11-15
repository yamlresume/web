#set document(
  title: "Claire Moreau - Analyste de données — Data Visualisation & Business Intelligence",
  author: "Claire Moreau",
  keywords: "Data Visualisation, Langages et requêtage, Statistiques et analyse, Outils et collaboration",
  description: "Résumé of Claire Moreau",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Claire Moreau]] #v(-0.2em)

#text(size: 1.44em)[Analyste de données — Data Visualisation & Business Intelligence]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:claire.moreau@email.fr")[claire\.moreau\@email\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://clairemoreau.fr")[https\:\/\/clairemoreau\.fr]

Paris, Île\-de\-France, France, 75011

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/claire-moreau-analytics")[claire\-moreau\-analytics] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/clairemoreau")[clairemoreau]
]

= Informations de base

#resume-pad[
- Plus de 4 ans d\'expérience en tant qu\'analyste de données dans les secteurs SaaS, retail et banque\-assurance
- Expertise en requêtage SQL, analyse statistique avec Python\/R et conception de tableaux de bord interactifs
- Capacité à traduire les besoins métiers en indicateurs clés et à formuler des recommandations actionnables
- Rigueur méthodologique, sens du détail et forte appétence pour la datavisualisation
- Habituée à collaborer avec les équipes produit, marketing, finance et direction générale
]

= Formation
#resume-pad[
#resume-subheading[Toulouse School of Management][#link("https://www.tsm-education.fr/")[https\:\/\/www\.tsm\-education\.fr\/]][Master, Data Science & Marketing, Score : 16\/20][sept. 2017–juil. 2019]
- Spécialisation en analyse de données, méthodes quantitatives et outils décisionnels
- Réalisation d\'un mémoire sur la prévision du comportement client à l\'aide de modèles de régression
- Obtention d\'une certification universitaire en data mining et scoring prédictif
#strong[Cours] : Data Mining, Statistiques inférentielles, Économétrie appliquée, Base de données avancée, Machine Learning, Stratégie digitale

#resume-subheading[Université de Bordeaux][#link("https://www.u-bordeaux.fr/")[https\:\/\/www\.u\-bordeaux\.fr\/]][Licence, Économie\-Gestion, Score : 14\/20][sept. 2014–juin 2017]
- Formation pluridisciplinaire alliant économie, gestion et outils quantitatifs
- Acquisition des fondamentaux en statistiques et en analyse de données économiques
#strong[Cours] : Statistiques, Microéconomie, Comptabilité de gestion, Informatique appliquée
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Data Analyst Senior][#link("https://www.datasquad.fr")[https\:\/\/www\.datasquad\.fr]][DataSquad Conseil][janv. 2023–Present]
- Pilotage de projets d\'analyse de données pour des clients grands comptes dans les secteurs retail et banque\-assurance
- Conception et automatisation de tableaux de bord Power BI utilisés par plus de 200 utilisateurs métiers
- Développement de modèles de segmentation client et de prédiction d\'attrition en Python
- Animation d\'ateliers de formation à la datavisualisation et accompagnement des équipes dans l\'adoption des outils décisionnels
- Mise en place de référentiels d\'indicateurs et de procédures de validation de la qualité des données
#strong[Mots-clés] : Power BI, Python, SQL, Segmentation, Tableau de bord

#resume-subheading[Data Analyst][#link("https://www.novabank.fr")[https\:\/\/www\.novabank\.fr]][Novabank][oct. 2020–déc. 2022]
- Production d\'analyses de performance commerciale pour la direction des risques et les équipes marketing
- Consolidation et requêtage de bases relationnelles de plus de 5 millions de lignes en SQL
- Automatisation de rapports hebdomadaires avec Python et Excel VBA, réduisant le temps de traitement de 60 %
- Participation à la refonte du datamart clients et à l\'amélioration de la fiabilité des indicateurs de reporting
#strong[Mots-clés] : SQL, Python, Datamart, Reporting, VBA

#resume-subheading[Data Analyst Junior][#link("https://www.ecomedia.fr")[https\:\/\/www\.ecomedia\.fr]][Ecomedia][sept. 2019–août 2020]
- Analyse des campagnes d\'acquisition web et mesure de la performance des canaux SEO, SEA et réseaux sociaux
- Création de rapports hebdomadaires Google Analytics et amélioration du suivi des conversions
- Contribution à l\'identification de leviers de croissance grâce aux analyses de cohortes et aux tests A\/B
- Collaboration avec les équipes produit pour fiabiliser la collecte des données utilisateur
#strong[Mots-clés] : Google Analytics, SEO, SEA, Tests A\/B, Cohorte
]

= Langues
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Français] : Niveau natif ou bilingue], [#strong[Mots-clés] : Langue maternelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEFL 105, Anglais professionnel])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Visualisation] : Expert], [#strong[Mots-clés] : Power BI, Tableau, Looker Studio, D3\.js])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Langages et requêtage] : Expert], [#strong[Mots-clés] : SQL, Python, Pandas, R, DAX])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Statistiques et analyse] : Avancé], [#strong[Mots-clés] : Analyse exploratoire, Tests statistiques, Régression, Segmentation, Prévision])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Outils et collaboration] : Avancé], [#strong[Mots-clés] : Excel, Google Sheets, Git, Jira, Confluence])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de l\'innovation data][][DataSquad Conseil][déc. 2023]
- Récompensée pour la conception d\'un outil interne de suivi automatisé de la qualité des données clients\.
]

= Certificats
#resume-pad[
#resume-subheading[Microsoft PL\-300 \: Power BI Data Analyst][#link("https://learn.microsoft.com/fr-fr/credentials/")[https\:\/\/learn\.microsoft\.com\/fr\-fr\/credentials\/]][Microsoft][mars 2023]

#resume-subheading[Google Data Analytics][#link("https://grow.google/intl/fr_fr/products/certificates/data-analytics/")[https\:\/\/grow\.google\/intl\/fr\_fr\/products\/certificates\/data\-analytics\/]][Google][nov. 2021]
]

= Projets
#resume-pad[
#resume-subheading[Tableau de bord des performances e\-commerce][#link("https://github.com/clairemoreau/ecommerce-dashboard")[https\:\/\/github\.com\/clairemoreau\/ecommerce\-dashboard]][Projet personnel de création d\'un tableau de bord interactif à partir de données e\-commerce publiques\.][janv. 2024–mai 2024]
- Récupération et nettoyage de données de ventes avec Python et Pandas
- Modélisation d\'un schéma en étoile et chargement dans une base SQLite
- Développement d\'un rapport Power BI avec indicateurs de ventes, panier moyen et rétention client
#strong[Mots-clés] : Power BI, Pandas, SQLite, E\-commerce

#resume-subheading[Analyse des avis consommateurs][#link("https://github.com/clairemoreau/sentiment-analysis")[https\:\/\/github\.com\/clairemoreau\/sentiment\-analysis]][Analyse de sentiments appliquée aux avis consommateurs pour identifier les facteurs de satisfaction\.][sept. 2023–déc. 2023]
- Collecte et prétraitement de plus de 50 000 avis en français
- Utilisation de modèles de traitement du langage naturel \: TF\-IDF et régression logistique
- Visualisation des thèmes émergents et formulation de recommandations d\'amélioration produit
#strong[Mots-clés] : NLP, Python, Scikit\-learn, Avis clients
]

= Centres d\'intérêt
#resume-pad[
#strong[Data visualisation] : Dataviz, Infographie, Open data

#strong[Sports] : Course à pied, Yoga
]

= Bénévolat
#resume-pad[
#resume-subheading[Data Analyst Bénévole][#link("https://datacitoyens.fr")[https\:\/\/datacitoyens\.fr]][Datacitoyens][mars 2021–déc. 2022]
- Accompagnement d\'associations dans l\'exploitation et la visualisation de leurs données d\'activité
- Création de rapports et de tableaux de bord simplifiés pour faciliter la prise de décision des équipes
]