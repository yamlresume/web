#set document(
  title: "Dr. Anna Schmidt - Senior Projektmanagerin | Agile Transformation & Digitalisierung",
  author: "Dr. Anna Schmidt",
  keywords: "Projektmanagement, Agile Methoden, Tools, Führung & Kommunikation",
  description: "Résumé of Dr. Anna Schmidt",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Dr\. Anna Schmidt]] #v(-0.2em)

#text(size: 1.44em)[Senior Projektmanagerin | Agile Transformation & Digitalisierung]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+49 30 9876543")[\+49 30 9876543] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:anna.schmidt@example.de")[anna\.schmidt\@example\.de] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.annaschmidt-pm.de")[https\:\/\/www\.annaschmidt\-pm\.de]

Friedrichstraße 123, Berlin, Berlin, Deutschland, 10117

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/annaschmidtpm")[annaschmidtpm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/annaschmidt")[annaschmidt] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/annaschmidt_pm")[annaschmidt\_pm]
]

= Basisinformationen

#resume-pad[
Senior Projektmanagerin mit über 8 Jahren Erfahrung in der Leitung komplexer IT\- und Digitalisierungsprojekte\. Nachweisliche Erfolge in der agilen Transformation, im Stakeholder\-Management und in der Budgetverantwortung von bis zu 5 Mio\. EUR\.

- Führung interdisziplinärer Teams von bis zu 25 Mitarbeitenden
- Zertifizierte Scrum Masterin und PMP mit fundierten Kenntnissen in SAFe und Kanban
- Starke Kommunikationsfähigkeiten in Deutsch und Englisch, verhandlungssicher in Französisch
- Leidenschaft für nachhaltige Prozessoptimierung und datengetriebene Entscheidungen
]

= Ausbildung
#resume-pad[
#resume-subheading[Technische Universität München][#link("https://www.tum.de")[https\:\/\/www\.tum\.de]][Master, Wirtschaftsinformatik, Punkte: 1\.7][Okt. 2013–Sept. 2015]
- Schwerpunkt auf IT\-Projektmanagement und agile Methoden
- Masterarbeit\: \"Erfolgsfaktoren agiler Transformationsprojekte in mittelständischen Unternehmen\"
#strong[Kurse]: Projektmanagement, Agile Softwareentwicklung, Datenbanken, Unternehmensführung, IT\-Controlling

#resume-subheading[Universität Mannheim][#link("https://www.uni-mannheim.de")[https\:\/\/www\.uni\-mannheim\.de]][Bachelor, Betriebswirtschaftslehre, Punkte: 1\.9][Okt. 2010–Sept. 2013]
- Grundlagen in BWL, VWL und Informatik
- Auslandssemester an der Universität St\. Gallen
#strong[Kurse]: Betriebswirtschaftslehre, Statistik, Informatik
]

= Berufserfahrung
#resume-pad[
#resume-subheading[Senior Projektmanagerin][#link("https://www.digital-pioneers.de")[https\:\/\/www\.digital\-pioneers\.de]][Digital Pioneers GmbH][Jan. 2021–Heute]
- Leitung eines portfolioweiten agilen Transformationsprogramms mit 12 Projekten und einem Budget von 5 Mio\. EUR
- Einführung eines skalierbaren SAFe\-Frameworks, Steigerung der Liefergeschwindigkeit um 30%
- Coaching von 5 Scrum\-Teams und Aufbau eines internen PMO
- Berichterstattung an den Vorstand und Steuerung externer Dienstleister
#strong[Schlüsselwörter]: Agile Transformation, SAFe, PMO, Budgetverantwortung, Stakeholder\-Management

#resume-subheading[Projektmanager][#link("https://www.techsolutions.de")[https\:\/\/www\.techsolutions\.de]][TechSolutions AG][Juli 2017–Dez. 2020]
- Erfolgreiche Leitung von 15\+ IT\-Projekten in den Bereichen Cloud\-Migration und SAP\-Einführung
- Verantwortung für Projektplanung, Risikomanagement und Qualitätssicherung
- Enge Zusammenarbeit mit Product Ownern und Entwicklungsteams
- Einführung von Kanban in der Softwareentwicklung, Reduzierung der Durchlaufzeit um 25%
#strong[Schlüsselwörter]: Cloud\-Migration, SAP, Kanban, Risikomanagement, Jira

#resume-subheading[Junior Projektmanager][#link("https://www.startup-innovations.de")[https\:\/\/www\.startup\-innovations\.de]][StartUp Innovations GmbH][Aug. 2015–Juni 2017]
- Unterstützung bei der Planung und Umsetzung von Digitalisierungsprojekten
- Erstellung von Projektplänen, Statusberichten und Präsentationen
- Koordination von Meetings und Workshops
#strong[Schlüsselwörter]: Digitalisierung, Projektplanung, Reporting
]

= Sprachen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Deutsch]: Muttersprache oder zweisprachig], [#strong[Schlüsselwörter]: Muttersprache])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Englisch]: Verhandlungssichere Kenntnisse], [#strong[Schlüsselwörter]: Verhandlungssicher, TOEFL 110])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Französisch]: Gute Kenntnisse], [#strong[Schlüsselwörter]: Grundkenntnisse])
]

= Fähigkeiten
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Projektmanagement]: Experte], [#strong[Schlüsselwörter]: Agiles Projektmanagement, Wasserfall, Hybrid, PMI, PRINCE2])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Agile Methoden]: Experte], [#strong[Schlüsselwörter]: Scrum, Kanban, SAFe, Lean, OKR])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tools]: Erfahren], [#strong[Schlüsselwörter]: Jira, Confluence, MS Project, Trello, Miro])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Führung & Kommunikation]: Erfahren], [#strong[Schlüsselwörter]: Teamentwicklung, Moderation, Konfliktmanagement, Stakeholder\-Management])
]

= Auszeichnungen
#resume-pad[
#resume-subheading[Projektmanagerin des Jahres 2023][][Digital Pioneers GmbH][Dez. 2023]
Auszeichnung für die herausragende Leitung des agilen Transformationsprogramms und die erfolgreiche Einführung des PMO\.

#resume-subheading[Best Master Thesis Award][][Technische Universität München][Okt. 2015]
Auszeichnung für die beste Masterarbeit im Bereich Wirtschaftsinformatik\.
]

= Zertifikate
#resume-pad[
#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][März 2020]

#resume-subheading[Professional Scrum Master I][#link("https://www.scrum.org/professional-scrum-master-i-certification")[https\:\/\/www\.scrum\.org\/professional\-scrum\-master\-i\-certification]][Scrum\.org][Juni 2019]

#resume-subheading[SAFe 5 Agilist][#link("https://www.scaledagile.com/certification/safe-agilist/")[https\:\/\/www\.scaledagile\.com\/certification\/safe\-agilist\/]][Scaled Agile][Sept. 2021]
]

= Veröffentlichungen
#resume-pad[
#resume-subheading[Erfolgsfaktoren agiler Transformationsprojekte][#link("https://www.pm-aktuell.de/artikel/erfolgsfaktoren-agiler-transformation")[https\:\/\/www\.pm\-aktuell\.de\/artikel\/erfolgsfaktoren\-agiler\-transformation]][Projektmanagement aktuell][Mai 2018]
- Analyse von 20 agilen Transformationsprojekten in mittelständischen Unternehmen
- Identifikation von kritischen Erfolgsfaktoren wie Führung, Kommunikation und Kultur
- Handlungsempfehlungen für Projektmanager und Führungskräfte
]

= Projekte
#resume-pad[
#resume-subheading[Einführung eines agilen PMO][#link("https://www.digital-pioneers.de/projekte/agiles-pmo")[https\:\/\/www\.digital\-pioneers\.de\/projekte\/agiles\-pmo]][Aufbau eines zentralen PMO zur Steuerung von 12 agilen Projekten][März 2021–Nov. 2022]
- Etablierung von standardisierten Prozessen und Reporting
- Einführung von Jira und Confluence als zentrale Plattformen
- Schulung von 50 Mitarbeitenden in agilen Methoden
- Reduzierung der Projektdurchlaufzeit um 20%
#strong[Schlüsselwörter]: PMO, Agile, Jira, Confluence

#resume-subheading[Cloud\-Migration für einen DAX\-Konzern][#link("https://www.techsolutions.de/projekte/cloud-migration")[https\:\/\/www\.techsolutions\.de\/projekte\/cloud\-migration]][Migration von 200\+ Anwendungen in die AWS\-Cloud][Jan. 2019–Dez. 2020]
- Leitung eines Teams von 15 Entwicklern und Architekten
- Sicherstellung der Termin\- und Budgettreue
- Erfolgreiche Abnahme durch den Kunden
#strong[Schlüsselwörter]: AWS, Cloud, Migration
]

= Interessen
#resume-pad[
#strong[Sport]: Marathon, Skifahren, Wandern

#strong[Musik]: Klavier, Gitarre
]

= Ehrenamtliche Tätigkeiten
#resume-pad[
#resume-subheading[Mentorin][#link("https://www.pmi-germany.de")[https\:\/\/www\.pmi\-germany\.de]][PMI Germany Chapter][Jan. 2020–Dez. 2023]
- Mentoring von Nachwuchsprojektmanagern
- Organisation von Netzwerkveranstaltungen und Workshops
- Vorträge zu agilen Methoden und Karriereentwicklung
]