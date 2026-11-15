#set document(
  title: "Dr. Julia Schneider - Operations Manager | Prozessoptimierung & Supply Chain",
  author: "Dr. Julia Schneider",
  keywords: "Prozessoptimierung, Supply Chain Management, Teamführung, SAP ERP, Projektmanagement",
  description: "Résumé of Dr. Julia Schneider",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Dr\. Julia Schneider]] #v(-0.2em)

#text(size: 1.44em)[Operations Manager | Prozessoptimierung & Supply Chain]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+49 89 12345678")[\+49 89 12345678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:julia.schneider@example.com")[julia\.schneider\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.julia-schneider.de")[https\:\/\/www\.julia\-schneider\.de]

Maximilianstraße 12, München, Bayern, Deutschland, 80333

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/julia-schneider-ops")[julia\-schneider\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/j_schneider_ops")[j\_schneider\_ops]
]

= Basisinformationen

#resume-pad[
- Operations Manager mit über 10 Jahren Erfahrung in der Optimierung von Produktions\- und Logistikprozessen
- Nachweisliche Erfolge bei der Steigerung der Effizienz und Senkung der Betriebskosten durch Lean\-Management und Six Sigma
- Expertise in der Führung interdisziplinärer Teams und der Umsetzung strategischer Projekte
- Fundierte Kenntnisse in SAP ERP, Supply Chain Management und kontinuierlicher Verbesserung (KVP)
]

= Ausbildung
#resume-pad[
#resume-subheading[Technische Universität München][#link("https://www.tum.de")[https\:\/\/www\.tum\.de]][Master, Wirtschaftsingenieurwesen, Punkte: 1,8][Okt. 2010–Sept. 2012]
- Schwerpunkt auf der Optimierung von Wertschöpfungsketten und betrieblichen Prozessen
- Praktische Erfahrung durch Projekte mit Industriepartnern, z\. B\. zur Lagerhaltungsoptimierung
- Ausgezeichnet mit dem Preis der Fakultät für herausragende Masterarbeit
#strong[Kurse]: Produktionsmanagement, Logistik und Supply Chain Management, Operations Research, Qualitätsmanagement, Projektmanagement, Controlling und Finanzen
]

= Berufserfahrung
#resume-pad[
#resume-subheading[Senior Operations Manager][#link("https://www.nordlicht-logistik.de")[https\:\/\/www\.nordlicht\-logistik\.de]][Nordlicht Logistik GmbH][Jan. 2020–Heute]
- Leitung der Betriebsabteilung mit 45 Mitarbeitern und Verantwortung für ein Budget von 8 Mio\. EUR
- Einführung eines neuen Lagerverwaltungssystems (WMS) zur Steigerung der Lagerumschlagsgeschwindigkeit um 25 %
- Implementierung von Lean\-Management\-Prinzipien, wodurch die Durchlaufzeiten um 15 % reduziert wurden
- Aufbau eines KPI\-Dashboards zur Echtzeitüberwachung der operativen Leistung
#strong[Schlüsselwörter]: Lagerverwaltung, Lean Management, Budgetverantwortung, KPI\-Reporting

#resume-subheading[Operations Manager][#link("https://www.techflow-solutions.de")[https\:\/\/www\.techflow\-solutions\.de]][TechFlow Solutions AG][März 2017–Dez. 2019]
- Verantwortung für die Auftragsabwicklung und Produktionsplanung in einem internationalen Umfeld
- Optimierung der Lieferkette durch Einführung von S&OP\-Prozessen, Reduzierung der Lieferzeiten um 20 %
- Führung eines Teams von 20 Mitarbeitern und Einführung regelmäßiger Schulungen zu Qualitätsstandards
- Zusammenarbeit mit Zulieferern zur Sicherstellung der Materialverfügbarkeit und Kostensenkung
#strong[Schlüsselwörter]: Produktionsplanung, S&OP, Lieferkettenoptimierung, Qualitätsmanagement

#resume-subheading[Operations Manager][#link("https://www.rhein-main-produktion.de")[https\:\/\/www\.rhein\-main\-produktion\.de]][Rhein\-Main Produktion GmbH][Juli 2014–Feb. 2017]
- Steuerung der täglichen Betriebsabläufe in einem Produktionswerk mit 120 Mitarbeitern
- Einführung von Kanban\-Systemen zur Bestandsreduzierung um 30 %
- Durchführung von Wertstromanalysen und Ableitung von Maßnahmen zur Effizienzsteigerung
- Enge Zusammenarbeit mit der Geschäftsleitung zur Entwicklung langfristiger Betriebsstrategien
#strong[Schlüsselwörter]: Kanban, Wertstromanalyse, Betriebssteuerung, Effizienzsteigerung
]

= Sprachen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Deutsch]: Muttersprache oder zweisprachig], [#strong[Schlüsselwörter]: Muttersprache])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Englisch]: Verhandlungssichere Kenntnisse], [#strong[Schlüsselwörter]: TOEFL iBT 110, Verhandlungsführung])
]

= Fähigkeiten
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Prozessoptimierung]: Experte], [#strong[Schlüsselwörter]: Lean Management, Six Sigma, Wertstromanalyse, KVP, Kanban])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Supply Chain Management]: Erfahren], [#strong[Schlüsselwörter]: S&OP, Lieferkettenoptimierung, Lagerverwaltung, Beschaffung])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Teamführung]: Erfahren], [#strong[Schlüsselwörter]: Mitarbeiterentwicklung, Konfliktmanagement, Changemanagement, Coaching])

#grid(columns: (1fr, auto), align: (left, right), [#strong[SAP ERP]: Erfahren], [#strong[Schlüsselwörter]: SAP MM, SAP PP, SAP WM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Projektmanagement]: Erfahren], [#strong[Schlüsselwörter]: PMP, Agile Methoden, Stakeholder\-Management, Risikomanagement])
]

= Auszeichnungen
#resume-pad[
#resume-subheading[Best Operations Excellence Award][][Nordlicht Logistik GmbH][Nov. 2022]
Auszeichnung für die erfolgreiche Implementierung eines ganzheitlichen Lean\-Management\-Programms, das zu einer jährlichen Kosteneinsparung von 1,2 Mio\. EUR führte\.

#resume-subheading[Preis der Fakultät für herausragende Masterarbeit][][Technische Universität München][Okt. 2012]
Für die Masterarbeit zum Thema \"Optimierung von Lagerhaltungsstrategien mittels simulationsbasierter Analyse\"\.
]

= Zertifikate
#resume-pad[
#resume-subheading[Lean Six Sigma Green Belt][#link("https://www.tuv.com/lean-six-sigma")[https\:\/\/www\.tuv\.com\/lean\-six\-sigma]][TÜV Rheinland][Juni 2016]

#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][Sept. 2018]

#resume-subheading[SAP Certified Application Associate \- Supply Chain][#link("https://www.sap.com/certification")[https\:\/\/www\.sap\.com\/certification]][SAP SE][März 2015]
]

= Projekte
#resume-pad[
#resume-subheading[Einführung eines WMS][#link("https://www.nordlicht-logistik.de/projekte/wms")[https\:\/\/www\.nordlicht\-logistik\.de\/projekte\/wms]][Implementierung eines modernen WMS zur Optimierung der Lagerprozesse][März 2021–Nov. 2021]
- Auswahl und Einführung eines neuen Warehouse\-Management\-Systems bei Nordlicht Logistik
- Analyse der bestehenden Prozesse und Definition von Anforderungen
- Schulung der Mitarbeiter und Begleitung der Inbetriebnahme
- Erzielung einer 25%igen Steigerung der Lagerumschlagsgeschwindigkeit
#strong[Schlüsselwörter]: WMS, Logistik, Prozessoptimierung
]

= Interessen
#resume-pad[
#strong[Sport]: Laufen, Radfahren, Wandern

#strong[Logistik und Technologie]: Industrie 4\.0, Automatisierung, Nachhaltigkeit
]

= Ehrenamtliche Tätigkeiten
#resume-pad[
#resume-subheading[Ehrenamtlicher Fachgruppenleiter][#link("https://www.bme.de")[https\:\/\/www\.bme\.de]][Bundesverband Materialwirtschaft, Einkauf und Logistik e\.V\. (BME)][Jan. 2019–Heute]
- Leitung der regionalen Fachgruppe München zum Thema \"Digitale Supply Chain\"
- Organisation von Fachvorträgen und Networking\-Events für über 100 Mitglieder
- Förderung des Wissensaustauschs zwischen Industrie und Wissenschaft
]