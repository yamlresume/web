#set document(
  title: "Camille Moreau - Ingénieur QA senior spécialisé en automatisation des tests",
  author: "Camille Moreau",
  keywords: "Tests automatisés, Tests d'API et intégration, Tests de performance, Gestion de la qualité, Outils et DevOps, Méthodes",
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

#text(size: 1.44em)[Ingénieur QA senior spécialisé en automatisation des tests]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 12 34 56 78")[\+33 6 12 34 56 78] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.moreau@example.fr")[camille\.moreau\@example\.fr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camille-moreau-qa.fr")[https\:\/\/www\.camille\-moreau\-qa\.fr]

24 rue des Ateliers, Paris, Île\-de\-France, France, 75011

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-moreau-qa")[camille\-moreau\-qa] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/camillemoreau-qa")[camillemoreau\-qa] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M504 204.6l-.7-1.8-69.7-181.8c-1.4-3.6-3.9-6.6-7.2-8.6-2.4-1.6-5.1-2.5-8-2.8s-5.7 .1-8.4 1.1-5.1 2.7-7.1 4.8c-1.9 2.1-3.3 4.7-4.1 7.4l-47 144-190.5 0-47.1-144c-.8-2.8-2.2-5.3-4.1-7.4-2-2.1-4.4-3.7-7.1-4.8-2.6-1-5.5-1.4-8.4-1.1s-5.6 1.2-8 2.8c-3.2 2-5.8 5.1-7.2 8.6L9.8 202.8 9 204.6c-10 26.2-11.3 55-3.5 82 7.7 26.9 24 50.7 46.4 67.6l.3 .2 .6 .4 106 79.5c38.5 29.1 66.7 50.3 84.6 63.9 3.7 1.9 8.3 4.3 13 4.3s9.3-2.4 13-4.3c17.9-13.5 46.1-34.9 84.6-63.9l106.7-79.9 .3-.3c22.4-16.9 38.7-40.6 45.6-67.5 8.6-27 7.4-55.8-2.6-82z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://gitlab.com/camillemoreau-qa")[camillemoreau\-qa]
]

= Informations de base

#resume-pad[
Ingénieur QA senior avec plus de 8 ans d\'expérience dans la conception, l\'automatisation et le pilotage de stratégies de test pour des applications web et des API critiques\.

- Expertise en tests fonctionnels, d\'intégration, de régression et de performance
- Maîtrise de Cypress, Playwright, Selenium, Postman, JMeter et des pipelines CI\/CD
- Solide culture qualité \: ISTQB, métriques, gestion des risques et amélioration continue
- Leadership technique, mentorat et collaboration étroite avec les équipes produit et développement
]

= Formation
#resume-pad[
#resume-subheading[Université Paris\-Dauphine][#link("https://www.dauphine.psl.eu/")[https\:\/\/www\.dauphine\.psl\.eu\/]][Master, Ingénierie logicielle et qualité, Score : 16\/20][sept. 2015–juil. 2017]
- Formation solide en assurance qualité logicielle et en conduite de projets de test
- Projets universitaires centrés sur l\'automatisation, la non\-régression et la mesure de la qualité
- Pratique des méthodes agiles et de la collaboration avec les équipes de développement
#strong[Cours] : Fondamentaux des tests logiciels, Automatisation des tests fonctionnels, Gestion de la qualité et métriques, Architecture des systèmes d\'information, Méthodes agiles et Scrum, Tests de performance et charge
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Ingénieur QA senior][#link("https://www.hexafinance.fr")[https\:\/\/www\.hexafinance\.fr]][HexaFinance][mars 2021–Present]
- Pilotage de la stratégie de test multi\-produits sur des applications web et des API bancaires critiques
- Conception et maintenance de suites automatisées avec Cypress, Playwright et REST Assured
- Réduction de 35 % des défauts détectés en production grâce à une meilleure couverture des scénarios à risque
- Mise en place de tests d\'API contractuels et de contrôles de régression intégrés aux pipelines GitLab CI
- Animation de revues de qualité, définition des métriques et accompagnement des équipes produit
- Mentorat de deux ingénieurs QA juniors et diffusion des bonnes pratiques d\'automatisation
#strong[Mots-clés] : Automatisation, Cypress, API REST, CI\/CD, Qualité logicielle, Mentorat

#resume-subheading[Ingénieur QA][#link("https://www.novatech-sante.fr")[https\:\/\/www\.novatech\-sante\.fr]][Novatech Santé][janv. 2018–févr. 2021]
- Rédaction des plans de test, des cas de test et des jeux de données pour des applications de santé réglementées
- Exécution de campagnes de tests fonctionnels, de non\-régression et d\'intégration
- Développement de tests automatisés avec Selenium WebDriver et Robot Framework
- Suivi rigoureux des anomalies dans Jira et coordination des corrections avec les développeurs
- Participation active aux cérémonies Scrum et aux revues de sprint
- Contribution à la traçabilité des exigences et à la préparation des livraisons
#strong[Mots-clés] : Tests manuels, Selenium, Jira, Zephyr, SQL, Agile

#resume-subheading[Analyste QA junior][#link("https://www.atelier-logiciel.fr")[https\:\/\/www\.atelier\-logiciel\.fr]][Atelier Logiciel][sept. 2017–déc. 2017]
- Analyse des exigences fonctionnelles et traduction en scénarios de test vérifiables
- Création et exécution de tests fonctionnels sur une application de gestion interne
- Documentation des résultats, des anomalies et des écarts par rapport aux spécifications
- Collaboration avec les équipes support et développement pour qualifier les incidents
#strong[Mots-clés] : Tests fonctionnels, Postman, Documentation, Reporting
]

= Langues
#resume-pad[
#strong[Français] : Niveau natif ou bilingue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 920, Documentation technique])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Conversation professionnelle])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Tests automatisés] : Expert], [#strong[Mots-clés] : Cypress, Playwright, Selenium WebDriver, Robot Framework, Cucumber])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tests d\'API et intégration] : Avancé], [#strong[Mots-clés] : Postman, REST Assured, Swagger, SoapUI])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tests de performance] : Avancé], [#strong[Mots-clés] : JMeter, Gatling, k6, Analyse de charge])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestion de la qualité] : Expert], [#strong[Mots-clés] : Stratégie de test, Plans de test, Gestion des anomalies, Métriques qualité, ISTQB])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Outils et DevOps] : Avancé], [#strong[Mots-clés] : Jira, Xray, GitLab CI, Docker, Jenkins])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Méthodes] : Avancé], [#strong[Mots-clés] : Agile, Scrum, BDD, TDD, Revues de code])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix de l\'excellence qualité][][HexaFinance][juin 2023]
Récompense attribuée pour la refonte de la stratégie de test et la réduction significative des défauts en production\.
]

= Certificats
#resume-pad[
#resume-subheading[Certification ISTQB niveau fondation][#link("https://www.istqb.org/certifications/foundation-level")[https\:\/\/www\.istqb\.org\/certifications\/foundation\-level]][ISTQB][avr. 2018]

#resume-subheading[Testeur agile certifié][#link("https://www.isqi.org/certified-agile-tester")[https\:\/\/www\.isqi\.org\/certified\-agile\-tester]][iSQI][nov. 2020]

#resume-subheading[ISTQB ingénieur automatisation des tests][#link("https://www.istqb.org/certifications/test-automation-engineer")[https\:\/\/www\.istqb\.org\/certifications\/test\-automation\-engineer]][ISTQB][sept. 2022]
]

= Publications
#resume-pad[
#resume-subheading[Automatiser les tests sans sacrifier la maintenabilité][#link("https://www.qualite-logiciel.fr/articles/automatiser-tests-maintenabilite")[https\:\/\/www\.qualite\-logiciel\.fr\/articles\/automatiser\-tests\-maintenabilite]][Blog Qualité & Logiciel][févr. 2023]
Article pratique sur les bonnes pratiques d\'automatisation des tests, la conception de suites robustes et la réduction de la dette de test\.
]

= Projets
#resume-pad[
#resume-subheading[QualiDash][#link("https://github.com/camillemoreau-qa/qualidash")[https\:\/\/github\.com\/camillemoreau\-qa\/qualidash]][Tableau de bord de pilotage de la qualité logicielle pour les équipes produit\.][janv. 2022–juin 2023]
- Centralisation des métriques de test, des anomalies et des tendances de qualité
- Visualisation des risques par fonctionnalité et suivi de la couverture automatisée
- Réduction du temps de préparation des bilans qualité hebdomadaires
#strong[Mots-clés] : Qualité, Métriques, Automatisation, Reporting

#resume-subheading[TestAPIFactory][][Bibliothèque interne de scénarios réutilisables pour les tests d\'API REST\.][mars 2023–déc. 2023]
- Factorisation des appels, assertions et jeux de données pour accélérer l\'écriture des tests
- Intégration dans plusieurs pipelines CI avec exécution parallèle
- Documentation et formation des équipes à l\'utilisation de la bibliothèque
#strong[Mots-clés] : API REST, Tests automatisés, CI\/CD, Documentation
]

= Centres d\'intérêt
#resume-pad[
#strong[Technologie] : Automatisation, Logiciel libre, Veille technologique

#strong[Sport] : Escalade, Running, Yoga

#strong[Culture] : Lecture, Photographie, Cuisine
]

= Bénévolat
#resume-pad[
#resume-subheading[Bénévole formateur en tests logiciels][#link("https://www.testeurs-solidaires.fr")[https\:\/\/www\.testeurs\-solidaires\.fr]][Testeurs Solidaires][sept. 2020–juin 2023]
- Animation d\'ateliers d\'initiation aux tests logiciels pour des personnes en reconversion
- Accompagnement méthodologique sur la rédaction de cas de test et la gestion des anomalies
- Création de supports pédagogiques accessibles et adaptés aux débutants
]