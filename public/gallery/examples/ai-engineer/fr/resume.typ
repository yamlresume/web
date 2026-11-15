#set document(
  title: "Claire Moreau - Ingénieur en Intelligence Artificielle | Apprentissage profond et MLOps",
  author: "Claire Moreau",
  keywords: "Apprentissage automatique, Traitement du langage naturel, MLOps et Cloud, Science des données",
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

#text(size: 1.44em)[Ingénieur en Intelligence Artificielle | Apprentissage profond et MLOps]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 45 78 12 34")[\+33 6 45 78 12 34] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:claire.moreau@example.com")[claire\.moreau\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://clairemoreau.ai")[https\:\/\/clairemoreau\.ai]

24 rue de l\'Innovation, Paris, Île\-de\-France, France, 75011

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/clairemoreau-ai")[clairemoreau\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/clairemoreau")[clairemoreau] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@clairemoreau")[clairemoreau]
]

= Informations de base

#resume-pad[
Ingénieur en intelligence artificielle avec plus de 7 ans d\'expérience dans la conception, l\'entraînement et le déploiement de modèles d\'apprentissage automatique à grande échelle\. Spécialisée en vision par ordinateur et traitement du langage naturel, avec une expertise solide en MLOps et en industrialisation de solutions IA\.

- Conception de pipelines de données et d\'entraînement reproductibles avec Python, PyTorch et TensorFlow
- Déploiement de modèles en production sur AWS et GCP avec Docker, Kubernetes et MLflow
- Encadrement d\'équipes pluridisciplinaires et vulgarisation des concepts IA auprès des parties prenantes
- Veille technologique active et contribution à des projets open source
]

= Formation
#resume-pad[
#resume-subheading[Université Paris\-Saclay][#link("https://www.universite-paris-saclay.fr")[https\:\/\/www\.universite\-paris\-saclay\.fr]][Master, Intelligence Artificielle et Science des Données, Score : 16\.5\/20][sept. 2017–juil. 2019]
- Formation spécialisée en apprentissage profond, vision artificielle et traitement du langage
- Projet de fin d\'études sur la détection d\'anomalies industrielles par autoencodeurs
- Stage de recherche au sein de l\'équipe IA de l\'université
#strong[Cours] : Apprentissage automatique, Vision par ordinateur, Traitement du langage naturel, Optimisation convexe, Statistiques bayésiennes, Systèmes distribués, MLOps et cloud computing

#resume-subheading[Université de Bordeaux][#link("https://www.u-bordeaux.fr")[https\:\/\/www\.u\-bordeaux\.fr]][Licence, Mathématiques et Informatique, Score : 15\.8\/20][sept. 2014–juin 2017]
- Solide base en algorithmique, probabilités et statistiques
- Initiation à la programmation scientifique et aux bases de données
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Ingénieur IA Senior][#link("https://www.novamind.ai")[https\:\/\/www\.novamind\.ai]][NovaMind AI][janv. 2022–Present]
- Direction technique de la plateforme de vision par ordinateur pour le contrôle qualité industriel
- Conception et entraînement de modèles de détection d\'anomalies avec PyTorch et TensorFlow
- Mise en place de pipelines MLOps reproductibles sur AWS SageMaker et Kubernetes
- Encadrement de trois ingénieurs juniors et animation de revues de code
- Collaboration avec les équipes produit et métier pour prioriser les cas d\'usage à fort impact
#strong[Mots-clés] : Apprentissage profond, Vision par ordinateur, MLOps, Python

#resume-subheading[Ingénieur en Apprentissage Automatique][#link("https://www.dataforge-conseil.fr")[https\:\/\/www\.dataforge\-conseil\.fr]][DataForge Conseil][sept. 2019–déc. 2021]
- Développement de modèles de traitement du langage naturel pour l\'analyse de documents clients
- Industrialisation de solutions de scoring et de recommandation avec Scikit\-learn et Docker
- Automatisation des workflows de données avec Airflow et Spark sur Google Cloud Platform
- Rédaction de documentation technique et accompagnement des équipes métier dans l\'adoption des modèles
#strong[Mots-clés] : NLP, Scikit\-learn, Cloud, Docker
]

= Langues
#resume-pad[
#strong[Français] : Niveau natif ou bilingue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 950, Présentations techniques])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Espagnol des affaires])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Apprentissage automatique] : Expert], [#strong[Mots-clés] : Python, PyTorch, TensorFlow, Scikit\-learn, XGBoost])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Traitement du langage naturel] : Avancé], [#strong[Mots-clés] : Transformers, Hugging Face, spaCy, RAG, LangChain])

#grid(columns: (1fr, auto), align: (left, right), [#strong[MLOps et Cloud] : Avancé], [#strong[Mots-clés] : Docker, Kubernetes, AWS SageMaker, MLflow, CI\/CD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Science des données] : Avancé], [#strong[Mots-clés] : Pandas, NumPy, SQL, Spark, Airflow])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de l\'innovation en IA][][NovaMind AI][nov. 2023]
Récompense décernée pour la conception d\'un système de détection d\'anomalies industrielles réduisant les faux positifs de 35 %\.

#resume-subheading[Meilleur mémoire de Master][][Université Paris\-Saclay][juil. 2019]
Distinction attribuée pour un mémoire sur les autoencodeurs variationnels appliqués à la maintenance prédictive\.
]

= Certificats
#resume-pad[
#resume-subheading[AWS Certified Machine Learning – Specialty][#link("https://aws.amazon.com/certification/certified-machine-learning-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-machine\-learning\-specialty\/]][AWS][mars 2022]

#resume-subheading[TensorFlow Developer Certificate][#link("https://www.tensorflow.org/certificate")[https\:\/\/www\.tensorflow\.org\/certificate]][Google][juin 2021]
]

= Publications
#resume-pad[
#resume-subheading[Vers des modèles de vision robustes pour la détection d\'anomalies industrielles][#link("https://www.rfia.fr/article/modeles-vision-robustes")[https\:\/\/www\.rfia\.fr\/article\/modeles\-vision\-robustes]][Revue Française d\'Intelligence Artificielle][oct. 2023]
- Étude de la robustesse des modèles de vision face aux variations d\'éclairage et de capteurs
- Évaluation comparative de plusieurs architectures convolutives sur des jeux de données industriels
- Proposition d\'une stratégie d\'augmentation de données adaptée aux environnements de production
]

= Références
#resume-pad[
#resume-subheading[Sophie Bernard][Directrice de l\'ingénierie IA][sophie\.bernard\@novamind\.ai][\+33 1 23 45 67 89]
Claire allie une excellente maîtrise technique à une vraie capacité de leadership\. Elle a su structurer notre plateforme MLOps et faire monter en compétence toute l\'équipe\.
]

= Projets
#resume-pad[
#resume-subheading[Assistant documentaire RAG][#link("https://github.com/clairemoreau/rag-assistant")[https\:\/\/github\.com\/clairemoreau\/rag\-assistant]][Plateforme de recherche augmentée par génération pour documents techniques][févr. 2023–août 2023]
- Indexation vectorielle de documents techniques avec FAISS et embeddings spécialisés
- Chaîne de génération augmentée avec LangChain et un modèle LLM open source
- Interface de question\-réponse avec citations des sources et gestion des droits d\'accès
#strong[Mots-clés] : RAG, LangChain, LLM, FAISS

#resume-subheading[Détection d\'anomalies sur chaîne de production][#link("https://github.com/clairemoreau/anomaly-detection")[https\:\/\/github\.com\/clairemoreau\/anomaly\-detection]][Système de vision industrielle pour la détection précoce de défauts][mars 2021–nov. 2021]
- Entraînement d\'autoencodeurs convolutifs sur des images de pièces industrielles
- Mise en place d\'un tableau de bord de suivi des alertes et des performances du modèle
- Réduction du taux de rebut de 12 % lors du pilote sur une ligne de production
#strong[Mots-clés] : Vision, Autoencodeurs, Industrie 4\.0
]

= Centres d\'intérêt
#resume-pad[
#strong[Sport] : Escalade, Course à pied, Yoga

#strong[Culture] : Photographie, Lecture, Musique classique

#strong[Communauté] : Éthique de l\'IA, Open Source
]

= Bénévolat
#resume-pad[
#resume-subheading[Mentore][#link("https://www.womeninai.co/fr")[https\:\/\/www\.womeninai\.co\/fr]][Women in AI France][sept. 2021–Present]
- Accompagnement de femmes en reconversion vers les métiers de l\'IA
- Animation d\'ateliers pratiques sur Python, la science des données et les entretiens techniques
- Participation à des actions de sensibilisation dans des écoles et universités
]