#set document(
  title: "Camille Moreau - Data Scientist spécialisée en machine learning et analyse prédictive",
  author: "Camille Moreau",
  keywords: "Machine Learning, Analyse et Visualisation de Données, Big Data et Cloud, Statistiques",
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

#text(size: 1.44em)[Data Scientist spécialisée en machine learning et analyse prédictive]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.moreau@email.fr")[camille\.moreau\@email\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://camillemoreau.fr")[https\:\/\/camillemoreau\.fr]

12 rue de la Paix, Paris, Île\-de\-France, France, 75002

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-moreau-data")[camille\-moreau\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/camillemoreau")[camillemoreau] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@camillemoreau")[camillemoreau]
]

= Informations de base

#resume-pad[
Data Scientist avec plus de 6 ans d\'expérience dans la conception, le déploiement et le suivi de modèles de machine learning en environnement production\.

- Expertise en Python, SQL et visualisation de données (Power BI, Tableau)
- Expérience en modélisation prédictive, traitement du langage naturel et détection de fraude
- Solide connaissance des environnements cloud (AWS, GCP) et des pratiques MLOps
- Esprit analytique, rigueur scientifique et capacité à vulgariser les résultats auprès des parties prenantes non techniques
]

= Formation
#resume-pad[
#resume-subheading[Sorbonne Université][#link("https://www.sorbonne-universite.fr/")[https\:\/\/www\.sorbonne\-universite\.fr\/]][Master, Data Science et Intelligence Artificielle, Score : Mention Bien][sept. 2017–juin 2019]
- Diplômée avec mention Bien, spécialisation en apprentissage automatique
- Mémoire de fin d\'études sur l\'utilisation du deep learning pour la détection de fraude financière
- Projet de fin d\'études réalisé en collaboration avec un grand acteur bancaire
#strong[Cours] : Apprentissage statistique, Deep Learning, Big Data Analytics, Visualisation de données, Optimisation et recherche opérationnelle, Systèmes de recommandation, Traitement automatique du langage naturel, Éthique des données

#resume-subheading[Université Claude Bernard Lyon 1][#link("https://www.univ-lyon1.fr/")[https\:\/\/www\.univ\-lyon1\.fr\/]][Licence, Mathématiques et Informatique][sept. 2014–juin 2017]
- Formation fondamentale en mathématiques, algorithmique et programmation
- Projets pratiques de statistiques et d\'analyse de données
- Stage de fin de licence sur l\'analyse exploratoire de données de consommation énergétique
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Data Scientist Senior][#link("https://www.nova-analytics.fr/")[https\:\/\/www\.nova\-analytics\.fr\/]][Nova Analytics][mars 2021–Present]
- Conception et déploiement de modèles de machine learning pour l\'optimisation de la chaîne logistique
- Développement de pipelines de données automatisés en Python et Spark, réduisant de 30 % le temps de préparation des données
- Mise en place de tableaux de bord interactifs avec Power BI pour suivre les indicateurs de performance
- Encadrement d\'une équipe de trois data scientists juniors, avec revue de code et suivi des bonnes pratiques
- Collaboration avec les équipes produit et métier pour traduire les besoins en solutions analytiques
#strong[Mots-clés] : Python, Spark, Power BI, Machine Learning, MLOps, AWS, Management

#resume-subheading[Data Scientist][#link("https://www.paylogic.fr/")[https\:\/\/www\.paylogic\.fr\/]][PayLogic][juil. 2019–févr. 2021]
- Développement de modèles de scoring pour la détection de fraude aux transactions bancaires
- Amélioration de la précision du modèle de détection de 15 % grâce à l\'ingénierie de caractéristiques
- Mise en œuvre d\'algorithmes de traitement du langage naturel pour l\'analyse des retours clients
- Rédaction de rapports d\'analyse et présentation des résultats aux comités de direction
#strong[Mots-clés] : Python, Scikit\-learn, SQL, Détection de fraude, NLP
]

= Langues
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Français] : Niveau natif ou bilingue], [#strong[Mots-clés] : Langue maternelle])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 960, Lecture d\'articles scientifiques, Présentations internationales])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Machine Learning] : Expert], [#strong[Mots-clés] : Python, Scikit\-learn, TensorFlow, PyTorch, XGBoost, LightGBM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analyse et Visualisation de Données] : Expert], [#strong[Mots-clés] : Pandas, NumPy, Matplotlib, Seaborn, Power BI, Tableau, SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Big Data et Cloud] : Avancé], [#strong[Mots-clés] : Apache Spark, Hadoop, AWS, GCP, Docker, Airflow])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Statistiques] : Avancé], [#strong[Mots-clés] : R, Régression, Séries temporelles, Statistiques inférentielles, Tests d\'hypothèses])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de la meilleure innovation data][][Data Innovation Summit France][nov. 2023]
Récompense attribuée pour le développement d\'un modèle prédictif de maintenance industrielle ayant réduit les coûts d\'arrêt de production de 20 %\.

#resume-subheading[Prix du meilleur mémoire de Master][][Sorbonne Université][oct. 2019]
Distinction décernée pour le mémoire portant sur la détection de fraude financière par réseaux de neurones profonds\.
]

= Certificats
#resume-pad[
#resume-subheading[AWS Certified Machine Learning – Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][sept. 2021]

#resume-subheading[Deep Learning Specialization][#link("https://www.coursera.org/specializations/deep-learning")[https\:\/\/www\.coursera\.org\/specializations\/deep\-learning]][Coursera][avr. 2020]
]

= Publications
#resume-pad[
#resume-subheading[Détection de fraude financière par réseaux de neurones profonds][#link("https://www.rfds.fr/articles/detection-fraude")[https\:\/\/www\.rfds\.fr\/articles\/detection\-fraude]][Revue Française de Data Science][févr. 2022]
Publication co\-écrite présentant une approche de deep learning pour détecter des transactions frauduleuses en temps réel\. L\'article détaille les architectures comparées et les résultats sur un jeu de données bancaires anonymisé\.
]

= Projets
#resume-pad[
#resume-subheading[Système de recommandation de contenus][#link("https://github.com/camillemoreau/reco-system")[https\:\/\/github\.com\/camillemoreau\/reco\-system]][Moteur de recommandation de contenus culturels basé sur le filtrage collaboratif et le deep learning\.][janv. 2023–juin 2023]
- Conception d\'un système de recommandation hybride combinant filtrage collaboratif et embeddings
- Amélioration de 12 % du taux de clics sur une plateforme de streaming culturel
- APIs Dockerisées déployées sur AWS Elastic Beanstalk
#strong[Mots-clés] : Recommandation, TensorFlow, AWS, API

#resume-subheading[Analyse de sentiments des tweets][#link("https://github.com/camillemoreau/sentiment-twitter")[https\:\/\/github\.com\/camillemoreau\/sentiment\-twitter]][Outil d\'analyse d\'opinions en temps réel à partir de Twitter\.][sept. 2022–déc. 2022]
- Modèle de NLP basé sur BERT pour classer les tweets en sentiments positifs, négatifs ou neutres
- Pipeline de collecte de données avec Twitter API et Kafka
- Visualisation des tendances avec Grafana
#strong[Mots-clés] : NLP, BERT, Kafka, Grafana
]

= Centres d\'intérêt
#resume-pad[
#strong[Randonnée] : Alpes, Mont Blanc

#strong[Photographie] : Photo de rue, Voyages

#strong[Lecture] : Science\-fiction, Essais
]

= Bénévolat
#resume-pad[
#resume-subheading[Data Scientist bénévole][#link("https://dataforgood.fr/")[https\:\/\/dataforgood\.fr\/]][Data for Good France][janv. 2022–Present]
- Accompagnement d\'associations à but non lucratif dans l\'analyse de leurs données
- Développement d\'un outil de suivi des bénéficiaires pour une association d\'aide alimentaire
- Animation d\'ateliers de sensibilisation aux enjeux éthiques de la donnée
]