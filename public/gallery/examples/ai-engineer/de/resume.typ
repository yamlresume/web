#set document(
  title: "Dr. Lena Hartmann - Senior KI-Ingenieur – Maschinelles Lernen & Generative KI",
  author: "Dr. Lena Hartmann",
  keywords: "Maschinelles Lernen, Programmierung, MLOps & Cloud, Datenverarbeitung, Führung & Kommunikation",
  description: "Résumé of Dr. Lena Hartmann",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "de", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Dr\. Lena Hartmann]] #v(-0.2em)

#text(size: 1.44em)[Senior KI\-Ingenieur – Maschinelles Lernen & Generative KI]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+49 30 12345678")[\+49 30 12345678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lena.hartmann@example.com")[lena\.hartmann\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://lena-hartmann.ai")[https\:\/\/lena\-hartmann\.ai]

Friedrichstraße 123, Berlin, Berlin, Deutschland, 10117

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/lena-hartmann")[lena\-hartmann] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lena-hartmann")[lena\-hartmann] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/1234567/lena-hartmann")[lena\-hartmann]
]

= Basisinformationen

#resume-pad[
- Senior KI\-Ingenieur mit über 8 Jahren Erfahrung in der Entwicklung und produktiven Skalierung von Systemen für Maschinelles Lernen und Generative KI\.
- Spezialisiert auf Deep Learning, Sprachverarbeitung und MLOps; verantwortlich für End\-to\-End\-Pipelines von der Datenaufbereitung bis zum Monitoring im Betrieb\.
- Nachweisliche Erfolge bei der Führung interdisziplinärer Teams und der Übersetzung komplexer Geschäftsanforderungen in robuste, ethisch verantwortungsvolle KI\-Lösungen\.
- Leidenschaft für innovative Forschungsansätze, reproduzierbare Experimente und die kontinuierliche Verbesserung von Modellqualität und \-performance\.
]

= Ausbildung
#resume-pad[
#resume-subheading[Technische Universität Berlin][#link("https://www.tu.berlin")[https\:\/\/www\.tu\.berlin]][Doktor, Künstliche Intelligenz und Maschinelles Lernen, Punkte: summa cum laude][2012\-10\-01–2016\-09\-30]
- Promotion über selbstüberwachtes Lernen für die Sprachverarbeitung mit Fokus auf ressourcenarme Domänen\.
- Entwicklung neuartiger Architekturen, die auf mehreren Benchmarks state\-of\-the\-art Ergebnisse erzielten\.
- Publikationen auf führenden Konferenzen wie NeurIPS, ICML und ACL\.
#strong[Kurse]: Deep Learning, Probabilistische Graphenmodelle, Natural Language Processing, Reinforcement Learning, Bayesianische Inferenz

#resume-subheading[RWTH Aachen University][#link("https://www.rwth-aachen.de")[https\:\/\/www\.rwth\-aachen\.de]][Master, Informatik, Punkte: 1,2][2010\-10\-01–2012\-09\-30]
- Schwerpunkt auf statistischem Lernen und algorithmischer Datenanalyse\.
- Masterarbeit zur effizienten Inferenz in tiefen neuronalen Netzen\.
#strong[Kurse]: Maschinelles Lernen, Statistische Mustererkennung, Datenbanken und Datenanalyse, Algorithmen und Datenstrukturen, Computer Vision
]

= Berufserfahrung
#resume-pad[
#resume-subheading[Senior KI\-Ingenieur][#link("https://www.siemens.com/ai")[https\:\/\/www\.siemens\.com\/ai]][Siemens KI\-Labor][2021\-04\-01–Heute]
- Leitung eines Teams von 6 ML\-Ingenieur\:innen zur Entwicklung generativer KI\-Assistenten für industrielle Anwendungen\.
- Konzeption und Umsetzung einer skalierbaren LLM\-Plattform mit Retrieval\-Augmented Generation und strengen Governance\-Vorgaben\.
- Verantwortlich für Modellauswahl, Fine\-Tuning, Evaluation und kontinuierliches Monitoring in der Cloud\.
- Enge Zusammenarbeit mit Produktmanagement und Compliance zur Einhaltung des EU AI Act\.
#strong[Schlüsselwörter]: Generative KI, LLM, RAG, MLOps, Teamführung

#resume-subheading[Ingenieur für Maschinelles Lernen][#link("https://www.bosch-ai.com")[https\:\/\/www\.bosch\-ai\.com]][Bosch Center for Artificial Intelligence][2018\-10\-01–2021\-03\-31]
- Entwicklung und Deployment von Deep\-Learning\-Modellen für Qualitätskontrolle und Predictive Maintenance\.
- Aufbau einer unternehmensweiten Feature\-Store\-Infrastruktur zur reproduzierbaren Modellierung\.
- Automatisierung von Trainingspipelines mit Kubernetes, Kubeflow und MLflow\.
- Durchführung von A\/B\-Tests und Modellüberwachung im Produktivbetrieb\.
#strong[Schlüsselwörter]: Deep Learning, Predictive Maintenance, Kubeflow, Feature Store, Computer Vision

#resume-subheading[KI\-Ingenieur][#link("https://www.zalando.de")[https\:\/\/www\.zalando\.de]][Zalando SE][2016\-10\-01–2018\-09\-30]
- Entwicklung von Empfehlungssystemen zur Personalisierung des Online\-Shops\.
- Implementierung von NLP\-Pipelines zur automatischen Produktklassifikation\.
- Optimierung von Modellen für Latenz und Skalierbarkeit im Hochlastbetrieb\.
- Zusammenarbeit mit Data Engineering und Product Analytics\.
#strong[Schlüsselwörter]: Recommender Systems, NLP, Python, Spark, Personalisierung
]

= Sprachen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Deutsch]: Muttersprache oder zweisprachig], [#strong[Schlüsselwörter]: Muttersprache])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Englisch]: Verhandlungssichere Kenntnisse], [#strong[Schlüsselwörter]: C2, Verhandlungssicher])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Französisch]: Gute Kenntnisse], [#strong[Schlüsselwörter]: B1])
]

= Fähigkeiten
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Maschinelles Lernen]: Experte], [#strong[Schlüsselwörter]: Deep Learning, NLP, Computer Vision, Generative KI, Reinforcement Learning])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programmierung]: Experte], [#strong[Schlüsselwörter]: Python, PyTorch, TensorFlow, SQL, Bash])

#grid(columns: (1fr, auto), align: (left, right), [#strong[MLOps & Cloud]: Erfahren], [#strong[Schlüsselwörter]: Kubernetes, Docker, MLflow, Kubeflow, AWS SageMaker, Azure ML])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Datenverarbeitung]: Erfahren], [#strong[Schlüsselwörter]: Spark, Pandas, Airflow, dbt, Kafka])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Führung & Kommunikation]: Erfahren], [#strong[Schlüsselwörter]: Teamführung, Agile Methoden, Stakeholder\-Management, Technische Dokumentation, Mentoring])
]

= Auszeichnungen
#resume-pad[
#resume-subheading[Preis für den besten Beitrag][][NeurIPS 2023][2023\-12\-05]
- Auszeichnung für die Publikation „Effiziente Selbstüberwachung für domänenspezifische Sprachmodelle“\.
- Anerkennung für herausragende Beiträge zu ressourceneffizientem Training großer Sprachmodelle\.

#resume-subheading[Innovationspreis KI][][Siemens AG][2022\-06\-15]
- Preis für die Entwicklung einer skalierbaren RAG\-Plattform mit messbarer Reduktion von Halluzinationen\.
- Würdigung der interdisziplinären Zusammenarbeit und des produktiven Einsatzes im industriellen Umfeld\.
]

= Zertifikate
#resume-pad[
#resume-subheading[AWS Certified Machine Learning – Specialty][#link("https://aws.amazon.com/certification/certified-machine-learning-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-machine\-learning\-specialty\/]][Amazon Web Services][2022\-03\-10]

#resume-subheading[Google Cloud Professional Machine Learning Engineer][#link("https://cloud.google.com/learn/certification/machine-learning-engineer")[https\:\/\/cloud\.google\.com\/learn\/certification\/machine\-learning\-engineer]][Google Cloud][2023\-05\-22]

#resume-subheading[TensorFlow Developer Certificate][#link("https://www.tensorflow.org/certificate")[https\:\/\/www\.tensorflow\.org\/certificate]][Google][2020\-11\-30]
]

= Veröffentlichungen
#resume-pad[
#resume-subheading[Effiziente Selbstüberwachung für domänenspezifische Sprachmodelle][#link("https://proceedings.neurips.cc/paper/2023")[https\:\/\/proceedings\.neurips\.cc\/paper\/2023]][NeurIPS 2023][2023\-12\-05]
- Vorstellung eines selbstüberwachten Verfahrens, das ohne große Mengen annotierter Daten wettbewerbsfähige Ergebnisse erzielt\.
- Analyse der Übertragbarkeit auf ressourcenarme Sprachen und Fachdomänen\.

#resume-subheading[Skalierbare Inferenz für Generative Modelle in der Industrie][#link("https://www.ki-fachzeitschrift.de/artikel/2022-09")[https\:\/\/www\.ki\-fachzeitschrift\.de\/artikel\/2022\-09]][KI\-Fachzeitschrift][2022\-09\-15]
- Diskussion architektonischer Muster für latenzarme Inferenz großer Sprachmodelle\.
- Praxisbericht zur Integration von RAG und Vektordatenbanken in bestehende Unternehmenslandschaften\.
]

= Projekte
#resume-pad[
#resume-subheading[DocuMind – Intelligenter Dokumentenassistent][#link("https://github.com/lena-hartmann/documind")[https\:\/\/github\.com\/lena\-hartmann\/documind]][RAG\-basierter Assistent zur semantischen Suche und Zusammenfassung technischer Dokumente\.][2023\-01\-15–2023\-10\-30]
- Entwicklung einer Ende\-zu\-Ende\-Plattform mit Ingestion, Chunking, Embedding und Vektordatenbank\.
- Evaluation von LLMs hinsichtlich Genauigkeit, Latenz und Kosten\.
- Bereitstellung einer REST\-API und eines Web\-Frontends für interne Nutzer\:innen\.
#strong[Schlüsselwörter]: RAG, LLM, Vektordatenbank, FastAPI, Evaluation

#resume-subheading[VisionQC – Qualitätskontrolle mit Computer Vision][#link("https://github.com/lena-hartmann/visionqc")[https\:\/\/github\.com\/lena\-hartmann\/visionqc]][Deep\-Learning\-System zur automatischen Fehlererkennung in der Fertigung\.][2019\-03\-01–2020\-08\-31]
- Training von Convolutional Neural Networks auf hochauflösenden Industriebildern\.
- Implementierung einer aktiven Lernschleife zur Reduktion des Annotationsaufwands\.
- Deployment auf Edge\-Geräten mit TensorRT und Überwachung der Modell\-Drift\.
#strong[Schlüsselwörter]: Computer Vision, Edge AI, TensorRT, Active Learning, Fertigung
]

= Interessen
#resume-pad[
#strong[Open Source]: PyTorch, Hugging Face, MLflow

#strong[Wissenschaft & Forschung]: NeurIPS, ICML, ACL

#strong[Freizeit]: Wandern, Klettern, Fotografie, Lesen
]

= Ehrenamtliche Tätigkeiten
#resume-pad[
#resume-subheading[Mentorin für Maschinelles Lernen][#link("https://www.ai-ethics-berlin.de")[https\:\/\/www\.ai\-ethics\-berlin\.de]][AI Ethics Initiative Berlin][2021\-09\-01–Heute]
- Mentoring von Nachwuchswissenschaftler\:innen und Berufseinsteiger\:innen im Bereich KI\.
- Organisation von Workshops zu verantwortungsvoller KI und reproduzierbarer Forschung\.
- Beitrag zur Entwicklung eines Leitfadens für ethische Evaluierung von Sprachmodellen\.
]