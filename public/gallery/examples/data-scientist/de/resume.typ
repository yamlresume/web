#set document(
  title: "Anna Weber - Senior Data Scientistin für Machine Learning & Predictive Analytics",
  author: "Anna Weber",
  keywords: "Machine Learning, Datenanalyse, Cloud Computing, Statistik",
  description: "Résumé of Anna Weber",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Anna Weber]] #v(-0.2em)

#text(size: 1.44em)[Senior Data Scientistin für Machine Learning & Predictive Analytics]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+49 170 5557890")[\+49 170 5557890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:anna.weber@datacraft.de")[anna\.weber\@datacraft\.de] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.datacraft.de/anna-weber")[https\:\/\/www\.datacraft\.de\/anna\-weber]

Musterstraße 12, Berlin, Berlin, Deutschland, 10115

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/anna-weber")[anna\-weber] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/annaweber")[annaweber]
]

= Basisinformationen

#resume-pad[
Data Scientistin mit über sechs Jahren Erfahrung in der Entwicklung und Implementierung von Machine\-Learning\-Modellen und skalierbaren Datenpipelines\.

- Expertise in Python, statistischer Analyse und Big\-Data\-Technologien wie Apache Spark und Kubernetes
- Nachgewiesene Erfolge bei der Steigerung von Umsatz und Kundenzufriedenheit durch datengetriebene Entscheidungen
- Erfahrung in der Zusammenarbeit mit cross\-funktionalen Teams und der Kommunikation komplexer Ergebnisse an nicht\-technische Stakeholder
- Leidenschaft für die Verbesserung von Modellgenauigkeit und die Automatisierung von ML\-Workflows
]

= Ausbildung
#resume-pad[
#resume-subheading[Technische Universität München][#link("https://www.tum.de")[https\:\/\/www\.tum\.de]][Master, Data Science, Punkte: 1,3][Okt. 2015–Sept. 2017]
- Abschlussarbeit\: „Ein Deep\-Learning\-Ansatz zur Vorhersage des Energiebedarfs in intelligenten Stromnetzen\"
- Vertiefung in Machine Learning, statistischer Datenanalyse und verteilten Systemen
- Praktische Erfahrung durch Projekte mit TensorFlow, Spark und Cloud\-Technologien
#strong[Kurse]: Maschinelles Lernen, Statistische Modellierung, Big Data Infrastrukturen, Datenvisualisierung, Deep Learning, Zeitreihenanalyse

#resume-subheading[Universität Heidelberg][#link("https://www.uni-heidelberg.de")[https\:\/\/www\.uni\-heidelberg\.de]][Bachelor, Informatik, Punkte: 2,0][Okt. 2012–Sept. 2015]
- Bachelorarbeit\: „Entwicklung einer interaktiven Visualisierung zur explorativen Datenanalyse\"
- Grundlagen in Mathematik, Informatik und Statistik
#strong[Kurse]: Algorithmen und Datenstrukturen, Datenbanken, Softwaretechnik, Statistik
]

= Berufserfahrung
#resume-pad[
#resume-subheading[Senior Data Scientistin][#link("https://www.datacraft.de")[https\:\/\/www\.datacraft\.de]][DataCraft GmbH][Jan. 2020–Heute]
- Leitung der Entwicklung einer ML\-Plattform für Kundensegmentierung und personalisierte Empfehlungen
- Aufbau und Automatisierung von Data\-Pipelines auf AWS mit Docker, Kubernetes und Terraform
- Einführung von MLflow zur Modellverwaltung und Reproduzierbarkeit
- Enge Zusammenarbeit mit Produktmanagement und Softwareentwicklung zur Integration von Modellen in Produktionssysteme
#strong[Schlüsselwörter]: Machine Learning, Python, Kubernetes, AWS, MLflow

#resume-subheading[Data Scientistin][#link("https://www.finanzinsight.de")[https\:\/\/www\.finanzinsight\.de]][FinanzInsight AG][Okt. 2017–Dez. 2019]
- Entwicklung von Risikomodellen zur Betrugserkennung im Zahlungsverkehr
- Analyse großer Transaktionsdatensätze mit Apache Spark und SQL
- Erstellung interaktiver Dashboards zur Überwachung von Modell\-Performance und Geschäftskennzahlen
- Präsentation von Ergebnissen vor Fachbereichsleitungen und externen Partnern
#strong[Schlüsselwörter]: Risikomodellierung, Apache Spark, SQL, Tableau

#resume-subheading[Werkstudentin Datenanalyse][#link("https://www.analytiksolutions.de")[https\:\/\/www\.analytiksolutions\.de]][Analytik Solutions GmbH][Apr. 2015–Sept. 2016]
- Unterstützung des Data\-Science\-Teams bei der Datenaufbereitung und explorativen Analyse
- Automatisierung von Reporting\-Prozessen mit Python und Excel
- Durchführung statistischer Auswertungen für Kundenprojekte
#strong[Schlüsselwörter]: Python, Statistik, Excel, Reporting
]

= Sprachen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Deutsch]: Muttersprache oder zweisprachig], [#strong[Schlüsselwörter]: Muttersprache])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Englisch]: Verhandlungssichere Kenntnisse], [#strong[Schlüsselwörter]: TOEFL 108, Verhandlungssicher])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Französisch]: Gute Kenntnisse], [#strong[Schlüsselwörter]: Grundkenntnisse])
]

= Fähigkeiten
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Machine Learning]: Experte], [#strong[Schlüsselwörter]: Python, TensorFlow, PyTorch, scikit\-learn, XGBoost])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Datenanalyse]: Experte], [#strong[Schlüsselwörter]: Pandas, NumPy, SQL, Apache Spark, Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud Computing]: Erfahren], [#strong[Schlüsselwörter]: AWS, Azure, Docker, Kubernetes, Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Statistik]: Erfahren], [#strong[Schlüsselwörter]: Hypothesentests, Regressionsanalyse, Clusteranalyse, Zeitreihen])
]

= Auszeichnungen
#resume-pad[
#resume-subheading[KI\-Innovationspreis 2019][][Bitkom][Sept. 2019]
Auszeichnung für die Arbeit zur Optimierung von Prognosemodellen für den Energiebedarf mittels Deep Learning\.
]

= Zertifikate
#resume-pad[
#resume-subheading[AWS Certified Machine Learning – Specialty][#link("https://aws.amazon.com/certification/aws-certified-machine-learning-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/aws\-certified\-machine\-learning\-specialty\/]][Amazon Web Services][Feb. 2021]
]

= Veröffentlichungen
#resume-pad[
#resume-subheading[Vorhersage von Kundenabwanderung mittels Ensemble\-Methoden][#link("https://www.zfpd.de/publikationen/abwanderung-ensemble")[https\:\/\/www\.zfpd\.de\/publikationen\/abwanderung\-ensemble]][Zeitschrift für Praktische Datenwissenschaft][Juni 2021]
Vergleich verschiedener Ensemble\-Methoden zur Prognose der Kundenabwanderung im Telekommunikationssektor\.
]

= Projekte
#resume-pad[
#resume-subheading[Churn Prediction Platform][#link("https://github.com/annaweber/churn-prediction")[https\:\/\/github\.com\/annaweber\/churn\-prediction]][End\-to\-End\-Machine\-Learning\-Pipeline zur Identifikation von Kundinnen und Kunden mit hohem Abwanderungsrisiko\.][Feb. 2020–Nov. 2020]
- Entwicklung einer skalierbaren ML\-Pipeline mit automatisiertem Retraining und Monitoring
- Integration von Kafka zur Echtzeit\-Datenverarbeitung
- Deployment als Docker\-Container auf Kubernetes
#strong[Schlüsselwörter]: Python, MLflow, AWS, Kafka
]

= Interessen
#resume-pad[
#strong[Datenvisualisierung]: D3\.js, ggplot2, Storytelling mit Daten

#strong[Bergsteigen]: Alpen, Trekking
]

= Ehrenamtliche Tätigkeiten
#resume-pad[
#resume-subheading[Freiwillige Datenexpertin][#link("https://codefor.de")[https\:\/\/codefor\.de]][Code for Germany][Juni 2019–Heute]
- Unterstützung gemeinnütziger Organisationen bei der Analyse offener Daten
- Entwicklung datenbasierter Anwendungen für bürgernahe Projekte
]