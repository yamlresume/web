#set document(
  title: "Camille Laurent - Ingénieur en cybersécurité – Sécurité cloud et réponse à incident",
  author: "Camille Laurent",
  keywords: "Sécurité des réseaux, Sécurité cloud, Opérations de sécurité, Gouvernance et conformité, Sécurité applicative, Programmation et automatisation",
  description: "Résumé of Camille Laurent",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Camille Laurent]] #v(-0.2em)

#text(size: 1.44em)[Ingénieur en cybersécurité – Sécurité cloud et réponse à incident]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+33 6 45 78 12 96")[\+33 6 45 78 12 96] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:camille.laurent@protonmail.com")[camille\.laurent\@protonmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.camille-laurent.fr")[https\:\/\/www\.camille\-laurent\.fr]

14 rue de la Paix, Paris, Île\-de\-France, France, 75002

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/camille-laurent-cyber")[camille\-laurent\-cyber] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/camille-laurent")[camille\-laurent]
]

= Informations de base

#resume-pad[
Ingénieur en cybersécurité avec plus de huit ans d\'expérience dans la protection des infrastructures critiques, la sécurité cloud et la réponse à incident\. Reconnu pour concevoir des architectures Zero Trust, automatiser les opérations de sécurité et accompagner les équipes dans une démarche de conformité durable\.

- Expertise en sécurité cloud AWS\/Azure, architecture Zero Trust et DevSecOps
- Pilotage d\'opérations SOC, réponse à incident et analyse forensique
- Maîtrise des référentiels ISO 27001, NIST CSF, RGPD et EBIOS RM
- Encadrement technique, mentorat et communication auprès des parties prenantes
]

= Formation
#resume-pad[
#resume-subheading[École Supérieure d\'Ingénierie Numérique de Paris][#link("https://www.esin-paris.fr")[https\:\/\/www\.esin\-paris\.fr]][Master, Cybersécurité et systèmes d\'information, Score : Mention Bien][2014\-09\-01–2016\-06\-30]
- Formation solide en sécurité des systèmes, cryptographie et gestion des risques
- Projets pratiques sur la détection d\'intrusion et la sécurisation d\'applications web
- Mémoire de fin d\'études consacré à la sécurité des environnements cloud multi\-tenant
#strong[Cours] : Sécurité des réseaux et protocoles, Cryptographie appliquée, Analyse forensique, Gestion des risques et conformité, Sécurité des systèmes d\'exploitation, Développement sécurisé, Virtualisation et sécurité cloud, Droit du numérique et protection des données
]

= Expérience professionnelle
#resume-pad[
#resume-subheading[Ingénieur en cybersécurité senior – Sécurité cloud][#link("https://www.finsecure-paris.fr")[https\:\/\/www\.finsecure\-paris\.fr]][FinSecure Paris][2022\-03\-01–Present]
- Pilotage de la stratégie de sécurité cloud pour un groupe bancaire de 4 000 collaborateurs
- Conception d\'architectures Zero Trust sur AWS et Azure, avec automatisation des contrôles par IaC
- Réduction de 35 % des incidents critiques grâce au déploiement d\'une plateforme SOAR et à la chasse aux menaces
- Encadrement d\'une équipe de quatre ingénieurs et animation du comité de sécurité applicative
- Mise en conformité RGPD, ISO 27001 et NIST CSF, en lien avec les auditeurs externes
#strong[Mots-clés] : Sécurité cloud, Zero Trust, SOAR, RGPD, ISO 27001, Mentorat

#resume-subheading[Analyste SOC et réponse à incident][#link("https://www.cloudnova.fr")[https\:\/\/www\.cloudnova\.fr]][CloudNova][2019\-01\-14–2022\-02\-28]
- Surveillance 24\/7 des infrastructures cloud et qualification des alertes SIEM pour 60 clients
- Investigation et réponse aux incidents de sécurité, de la détection à la remédiation
- Mise en place de playbooks SOAR et enrichissement des alertes via le renseignement sur les menaces
- Réalisation d\'analyses forensiques et rédaction de rapports post\-incident
- Participation à des tests d\'intrusion internes et à des revues de configuration
#strong[Mots-clés] : SOC, SIEM, SOAR, Forensique, Réponse à incident, Tests d\'intrusion

#resume-subheading[Administrateur sécurité réseaux][#link("https://www.santeaxe.fr")[https\:\/\/www\.santeaxe\.fr]][Groupe SantéAxe][2016\-09\-05–2018\-12\-21]
- Administration des équipements de sécurité réseau \: pare\-feu, proxy, IDS\/IPS et VPN
- Durcissement des systèmes et application des politiques de contrôle d\'accès
- Supervision des vulnérabilités et coordination des campagnes de correctifs
- Sensibilisation des utilisateurs à l\'hygiène numérique et aux risques de phishing
#strong[Mots-clés] : Pare\-feu, IDS\/IPS, VPN, Durcissement, Vulnérabilités, Sensibilisation
]

= Langues
#resume-pad[
#strong[Français] : Niveau natif ou bilingue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Anglais] : Niveau professionnel complet], [#strong[Mots-clés] : TOEIC 940])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espagnol] : Niveau de travail limité], [#strong[Mots-clés] : Niveau B1])
]

= Compétences
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Sécurité des réseaux] : Avancé], [#strong[Mots-clés] : Pare\-feu, IDS\/IPS, VPN, Segmentation, 802\.1X])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Sécurité cloud] : Expert], [#strong[Mots-clés] : AWS, Azure, GCP, Zero Trust, CASB, CSPM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Opérations de sécurité] : Avancé], [#strong[Mots-clés] : SIEM, SOAR, EDR, XDR, MITRE ATT&CK, Renseignement sur les menaces])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gouvernance et conformité] : Avancé], [#strong[Mots-clés] : ISO 27001, NIST CSF, RGPD, EBIOS RM, SOC 2])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Sécurité applicative] : Avancé], [#strong[Mots-clés] : OWASP Top 10, SAST, DAST, DevSecOps, IaC])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programmation et automatisation] : Avancé], [#strong[Mots-clés] : Python, Bash, PowerShell, Terraform, Ansible, Docker, Kubernetes])
]

= Récompenses
#resume-pad[
#resume-subheading[Prix d\'excellence en cybersécurité][][École Supérieure d\'Ingénierie Numérique de Paris][2023\-11\-15]
- Récompense décernée pour un projet de détection automatisée des menaces dans les environnements cloud
- Distinction attribuée parmi 120 candidats pour l\'impact opérationnel et la qualité de la recherche
]

= Certificats
#resume-pad[
#resume-subheading[CISSP – Professionnel certifié en sécurité des systèmes d\'information][#link("https://www.isc2.org/Certifications/CISSP")[https\:\/\/www\.isc2\.org\/Certifications\/CISSP]][ISC2][2024\-03\-20]

#resume-subheading[Certification AWS Security – Spécialité sécurité cloud][#link("https://aws.amazon.com/certification/certified-security-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-security\-specialty\/]][Amazon Web Services][2023\-06\-12]

#resume-subheading[CompTIA Security\+ – Certification en cybersécurité][#link("https://www.comptia.org/certifications/security")[https\:\/\/www\.comptia\.org\/certifications\/security]][CompTIA][2021\-09\-08]

#resume-subheading[ISO\/IEC 27001 Lead Implementer – Mise en œuvre d\'un SMSI][#link("https://pecb.com/en/education-and-certification-for-individuals/iso-iec-27001/iso-iec-27001-lead-implementer")[https\:\/\/pecb\.com\/en\/education\-and\-certification\-for\-individuals\/iso\-iec\-27001\/iso\-iec\-27001\-lead\-implementer]][PECB][2022\-04\-25]
]

= Publications
#resume-pad[
#resume-subheading[Détection des intrusions par apprentissage automatique en environnement cloud][#link("https://www.rfcyber.fr/articles/detection-intrusions-apprentissage-automatique")[https\:\/\/www\.rfcyber\.fr\/articles\/detection\-intrusions\-apprentissage\-automatique]][Revue Française de Cybersécurité][2024\-02\-10]
- Étude comparative de modèles supervisés pour la détection d\'anomalies réseau dans des environnements multi\-cloud
- Proposition d\'un pipeline de réduction du bruit et d\'enrichissement des alertes pour les équipes SOC
- Retours d\'expérience sur le déploiement en production et mesure du taux de faux positifs
]

= Projets
#resume-pad[
#resume-subheading[Plateforme SOAR de réponse à incident][#link("https://github.com/camille-laurent/soar-incident-response")[https\:\/\/github\.com\/camille\-laurent\/soar\-incident\-response]][Plateforme open source d\'automatisation de la qualification des alertes et de la réponse aux incidents\.][2023\-01\-10–2023\-12\-15]
- Développement de playbooks Python pour l\'enrichissement et la remédiation automatique
- Intégration avec SIEM, EDR et solutions de ticketing via API REST
- Réduction du temps moyen de réponse de 40 % sur un périmètre de 200 serveurs
#strong[Mots-clés] : SOAR, Python, Automatisation, API REST, SIEM
]

= Centres d\'intérêt
#resume-pad[
#strong[Cybersécurité offensive] : CTF, Chasse aux vulnérabilités, Rétro\-ingénierie

#strong[Sport] : Escalade, Course à pied

#strong[Musique] : Guitare, MAO
]

= Bénévolat
#resume-pad[
#resume-subheading[Mentor et formateur en cybersécurité][#link("https://www.cybersensibilisation.fr")[https\:\/\/www\.cybersensibilisation\.fr]][Association CyberSensibilisation France][2019\-09\-01–2024\-06\-30]
- Animation d\'ateliers de sensibilisation auprès de collégiens, lycéens et demandeurs d\'emploi
- Conception de supports pédagogiques sur le phishing, les mots de passe et la protection des données
- Accompagnement de jeunes professionnels dans leur préparation aux métiers de la cybersécurité
]