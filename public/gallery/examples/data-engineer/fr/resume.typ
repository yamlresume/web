#set document(
  title: "Camille Morel - Ingénieur Données et Plateformes",
  author: "Camille Morel",
  keywords: "Ingénierie des données, Cloud & DevOps, Bases de données, Visualisation et BI",
  description: "Résumé of Camille Morel",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Camille Morel]] #v(-0.2em)

#text(size: 1.44em)[Ingénieur Données et Plateformes]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.morel@dataforge.fr")[camille\.morel\@dataforge\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://camillemorel-data.fr")[https\:\/\/camillemorel\-data\.fr]

24 rue des Lilas, Lyon, Auvergne\-Rhône\-Alpes, France, 69003

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-morel-data")[camille\-morel\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/camillemorel-data")[camillemorel\-data]
]

= Informations de base

#resume-pad[
Ingénieur données avec plus de 5 ans d\'expérience dans la conception et l\'exploitation de plateformes data à grande échelle\. J\'accompagne les équipes métier et produit dans la valorisation de leurs données, de l\'ingestion à la mise à disposition dans des outils décisionnels\.

- Conception de pipelines ETL\/ELT robustes et orchestrés avec Airflow et dbt
- Modélisation d\'entrepôts de données et de lacs de données sur Snowflake, BigQuery et AWS
- Mise en place de pratiques DataOps \: tests automatisés, CI\/CD, observabilité et gouvernance
- Collaboration étroite avec les scientifiques des données, analystes et équipes plateforme
- Encadrement et mentorat de développeurs juniors
]

= Formation
#resume-pad[
#resume-subheading[INSA Lyon][#link("https://www.insa-lyon.fr")[https\:\/\/www\.insa\-lyon\.fr]][Master, Informatique et Science des Données, Score : Mention Bien][2016\-09\-01–2021\-07\-01]
- Formation d\'ingénieur orientée ingénierie des données, statistiques et systèmes distribués
- Projet de fin d\'études sur l\'optimisation de requêtes dans un entrepôt de données cloud
- Stage de 6 mois en équipe plateforme data chez un éditeur logiciel lyonnais
#strong[Cours] : Bases de données avancées, Algorithmique distribuée, Apprentissage automatique, Entrepôts de données, Cloud computing, Statistiques appliquées, Architecture logicielle, Sécurité des données
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Ingénieur Données Senior][#link("https://www.dataforge.fr")[https\:\/\/www\.dataforge\.fr]][DataForge][2023\-03\-01–Present]
- Conception et maintien de pipelines ELT orchestrés avec Airflow et dbt pour 12 sources hétérogènes
- Modélisation d\'un entrepôt Snowflake et mise en place de tests de qualité automatisés
- Réduction de 35 % du temps de traitement des flux critiques grâce à l\'optimisation SQL et au parallélisme
- Contribution à la gouvernance des données \: catalogage, documentation et gestion des accès
- Mentorat de deux ingénieurs données juniors et animation de revues de code hebdomadaires
#strong[Mots-clés] : Airflow, dbt, Snowflake, DataOps, Gouvernance

#resume-subheading[Ingénieur Données][#link("https://www.groupe-voltaire.fr")[https\:\/\/www\.groupe\-voltaire\.fr]][Groupe Voltaire][2021\-09\-01–2023\-02\-28]
- Développement de flux d\'ingestion temps réel avec Kafka et traitement batch avec Spark
- Migration d\'un entrepôt PostgreSQL vers BigQuery avec réduction des coûts de 20 %
- Industrialisation des déploiements via GitLab CI et conteneurs Docker
- Participation à la définition du modèle de données et des indicateurs métier avec les analystes
#strong[Mots-clés] : Python, SQL, Kafka, BigQuery, CI\/CD

#resume-subheading[Ingénieur Données Junior][#link("https://www.lumiere-analytics.fr")[https\:\/\/www\.lumiere\-analytics\.fr]][Lumière Analytics][2021\-02\-01–2021\-08\-31]
- Création de jobs ETL Python pour alimenter un entrepôt PostgreSQL à partir de sources CRM et ERP
- Automatisation de contrôles de cohérence et de rapports de qualité des données
- Développement de tableaux de bord Power BI pour les équipes commerciales
- Rédaction de la documentation technique et des procédures d\'exploitation
#strong[Mots-clés] : ETL, PostgreSQL, Docker, Power BI
]

= Langues
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Français] : Niveau natif ou bilingue], [#strong[Mots-clés] : Langue maternelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 950, Travail en équipe internationale])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Conversation professionnelle])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Ingénierie des données] : Expert], [#strong[Mots-clés] : Python, SQL, dbt, Apache Airflow, Apache Spark, Kafka, Snowflake, BigQuery])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud & DevOps] : Avancé], [#strong[Mots-clés] : AWS, GCP, Docker, Kubernetes, Terraform, GitLab CI, GitHub Actions])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Bases de données] : Avancé], [#strong[Mots-clés] : PostgreSQL, Snowflake, BigQuery, MongoDB, Redis, Elasticsearch])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Visualisation et BI] : Intermédiaire], [#strong[Mots-clés] : Power BI, Tableau, Looker, Metabase])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de l\'impact data][][DataForge][2024\-06\-15]
Récompense interne attribuée pour la refonte de la plateforme d\'ingestion et l\'amélioration significative de la fiabilité des données\.

#resume-subheading[Meilleur projet de fin d\'études][][INSA Lyon][2021\-07\-01]
Projet sur l\'optimisation de requêtes analytiques dans un entrepôt cloud, distingué pour sa rigueur technique et son impact pédagogique\.
]

= Certificats
#resume-pad[
#resume-subheading[AWS Certified Data Engineer \- Associate][#link("https://aws.amazon.com/certification/certified-data-engineer-associate/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-data\-engineer\-associate\/]][Amazon Web Services][2024\-04\-20]

#resume-subheading[dbt Certified Developer][#link("https://www.getdbt.com/certifications/")[https\:\/\/www\.getdbt\.com\/certifications\/]][dbt Labs][2023\-11\-10]

#resume-subheading[Google Cloud Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google Cloud][2022\-09\-15]
]

= Publications
#resume-pad[
#resume-subheading[Modernisation d\'un entrepôt de données \: retour d\'expérience][#link("https://www.revue-data-systemes.fr/articles/modernisation-entrepot")[https\:\/\/www\.revue\-data\-systemes\.fr\/articles\/modernisation\-entrepot]][Revue Data & Systèmes][2024\-02\-01]
- Présentation d\'une démarche de migration vers Snowflake menée en équipe
- Retour sur les choix d\'architecture, la qualité des données et la conduite du changement
- Bonnes pratiques pour industrialiser les pipelines avec dbt et Airflow
]

= Projets
#resume-pad[
#resume-subheading[OpenData Lyon][#link("https://github.com/camillemorel-data/opendata-lyon")[https\:\/\/github\.com\/camillemorel\-data\/opendata\-lyon]][Pipeline libre de valorisation des données publiques de la métropole lyonnaise][2023\-01\-01–2023\-06\-30]
- Collecte automatisée de jeux de données ouvertes et stockage dans PostgreSQL
- Transformations dbt et documentation du lignage des données
- Tableau de bord public pour explorer les indicateurs de mobilité et de qualité de l\'air
#strong[Mots-clés] : Open Data, Airflow, dbt, PostgreSQL

#resume-subheading[Moniteur Qualité des Données][#link("https://github.com/camillemorel-data/data-quality-monitor")[https\:\/\/github\.com\/camillemorel\-data\/data\-quality\-monitor]][Outil de surveillance de la qualité des données pour pipelines analytiques][2022\-03\-01–2022\-12\-31]
- Définition de règles de validation configurables et génération de rapports quotidiens
- Intégration dans une chaîne CI\/CD pour bloquer les déploiements en cas d\'anomalie critique
- Réduction du temps de détection des incidents de données de plusieurs heures à quelques minutes
#strong[Mots-clés] : Qualité des données, Python, Great Expectations, Docker
]

= Centres d\'intérêt
#resume-pad[
#strong[Sport] : Course à pied, Escalade, Randonnée

#strong[Musique] : Guitare, Jazz

#strong[Communauté] : Rencontres professionnelles, Mentorat
]

= Bénévolat
#resume-pad[
#resume-subheading[Bénévole en ingénierie des données][#link("https://dataforgood.fr")[https\:\/\/dataforgood\.fr]][Data for Good Lyon][2022\-01\-01–2024\-12\-31]
- Participation à des projets data à impact social avec des associations locales
- Conception de pipelines de collecte et de nettoyage de données ouvertes
- Animation d\'ateliers d\'initiation à la donnée pour des bénévoles non techniques

#resume-subheading[Marraine][#link("https://www.ellesbougent.com")[https\:\/\/www\.ellesbougent\.com]][Elles bougent][2023\-09\-01–Present]
- Intervention dans des collèges et lycées pour promouvoir les carrières scientifiques et techniques auprès des jeunes filles
- Organisation d\'ateliers de découverte des métiers de la donnée et de l\'ingénierie
]