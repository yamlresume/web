#set document(
  title: "Dr. Katharina Vogel - Senior HR Managerin – Personalentwicklung, Arbeitsrecht & Change",
  author: "Dr. Katharina Vogel",
  keywords: "Recruiting & Employer Branding, Arbeitsrecht & Compliance, Personalentwicklung & Führung, HR-Systeme & Analytics, Change Management & Kommunikation",
  description: "Résumé of Dr. Katharina Vogel",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Dr\. Katharina Vogel]] #v(-0.2em)

#text(size: 1.44em)[Senior HR Managerin – Personalentwicklung, Arbeitsrecht & Change]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+49 30 5487 2190")[\+49 30 5487 2190] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:katharina.vogel@hr-vogel.de")[katharina\.vogel\@hr\-vogel\.de] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.katharina-vogel-hr.de")[https\:\/\/www\.katharina\-vogel\-hr\.de]

Friedrichstraße 112, Berlin, Berlin, Deutschland, 10117

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/katharina-vogel-hr")[katharina\-vogel\-hr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@katharina.vogel.hr")[katharina\.vogel\.hr]
]

= Basisinformationen

#resume-pad[
Senior HR Managerin mit über zehn Jahren Erfahrung in der Personalarbeit mittelständischer und wachsender Technologieunternehmen\. Schwerpunkte\: strategische Personalentwicklung, Arbeitsrecht, Employer Branding und die Begleitung von Veränderungsprozessen\.

- Erfolgreiche Leitung eines HR\-Teams von bis zu acht Personen und Verantwortung für rund 450 Mitarbeitende
- Aufbau datenbasierter HR\-Prozesse, Einführung von SAP SuccessFactors und Personio
- Enge Zusammenarbeit mit Geschäftsführung, Betriebsrat und Führungskräften zur Stärkung einer werteorientierten Unternehmenskultur
- Ausgeprägte Kommunikationsstärke, diplomatisches Geschick und hohe Umsetzungsorientierung
]

= Ausbildung
#resume-pad[
#resume-subheading[Humboldt\-Universität zu Berlin][#link("https://www.hu-berlin.de")[https\:\/\/www\.hu\-berlin\.de]][Master, Personalmanagement und Arbeitsrecht, Punkte: 1,7][2010\-10\-01–2013\-09\-30]
- Schwerpunkt auf strategischer Personalarbeit und arbeitsrechtlichen Fragestellungen
- Praxisprojekte zu Talentmanagement und Mitarbeiterbindung
- Ausgezeichnete Studienleistungen und stipendierte Forschungsarbeit
#strong[Kurse]: Arbeitsrecht im Personalwesen, Strategisches Personalmanagement, Organisationspsychologie, Vergütungsmanagement, Change Management, Arbeitsmarktpolitik

#resume-subheading[Universität Hamburg][#link("https://www.uni-hamburg.de")[https\:\/\/www\.uni\-hamburg\.de]][Bachelor, Betriebswirtschaftslehre, Punkte: 1,9][2007\-10\-01–2010\-09\-30]
- Fundierte betriebswirtschaftliche Grundlagen mit personalwirtschaftlichem Schwerpunkt
- Teilnahme an Fallstudien zu Personalstrategie und Organisationsentwicklung
#strong[Kurse]: Personalwirtschaft, Organisation und Führung, Wirtschaftsrecht, Statistik, Kosten\- und Leistungsrechnung
]

= Berufserfahrung
#resume-pad[
#resume-subheading[Senior HR Managerin \/ Personalleiterin][#link("https://www.nordlicht-technologies.de")[https\:\/\/www\.nordlicht\-technologies\.de]][Nordlicht Technologies GmbH][2021\-04\-01–Heute]
- Strategische und operative Leitung der Personalabteilung für rund 450 Mitarbeitende an drei Standorten
- Weiterentwicklung der Personalstrategie entlang von Unternehmenswachstum, Internationalisierung und hybriden Arbeitsmodellen
- Führung und Entwicklung eines Teams aus HR Business Partnern, Recruiting und Personaladministration
- Verantwortung für arbeitsrechtliche Fragestellungen, Betriebsratszusammenarbeit und Compliance im Personalbereich
- Einführung von SAP SuccessFactors und Personio zur Professionalisierung von Personalprozessen und HR\-Reporting
- Aufbau eines Employer\-Branding\-Programms zur Stärkung der Arbeitgeberattraktivität im Technologieumfeld
#strong[Schlüsselwörter]: Personalstrategie, Arbeitsrecht, Change Management, Employer Branding, Führungskräfteentwicklung

#resume-subheading[HR Managerin][#link("https://www.berlin-digital-services.de")[https\:\/\/www\.berlin\-digital\-services\.de]][Berlin Digital Services AG][2017\-08\-01–2021\-03\-31]
- Betreuung von Führungskräften und Mitarbeitenden in allen personalrelevanten Themen über den gesamten Employee Lifecycle
- Verantwortung für Recruiting, Onboarding und Personalentwicklung in einem dynamischen Digitalumfeld
- Mitwirkung an der Neuausrichtung von Vergütungsstrukturen und Leistungsbeurteilungsprozessen
- Zusammenarbeit mit dem Betriebsrat bei organisatorischen Veränderungen und personellen Einzelmaßnahmen
- Einführung standardisierter HR\-Kennzahlen und regelmäßiger Personalberichte für die Geschäftsführung
#strong[Schlüsselwörter]: Recruiting, Onboarding, Personalentwicklung, Betriebsrat, HR\-Reporting

#resume-subheading[HR Business Partner][#link("https://www.hanseatic-consulting.de")[https\:\/\/www\.hanseatic\-consulting\.de]][Hanseatic Consulting GmbH][2014\-06\-01–2017\-07\-31]
- Beratung von Fachbereichen zu Personalplanung, Talentmanagement und organisatorischen Fragestellungen
- Begleitung von Reorganisationsprojekten und Entwicklung passender Personalmaßnahmen
- Unterstützung bei Arbeitsvertragsgestaltung, Zielvereinbarungen und Konfliktlösungen
- Mitaufbau eines strukturierten Onboarding\- und Mentoring\-Programms
#strong[Schlüsselwörter]: Talentmanagement, Vergütung, Arbeitsverträge, Konfliktmanagement, Projektarbeit
]

= Sprachen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Deutsch]: Muttersprache oder zweisprachig], [#strong[Schlüsselwörter]: Muttersprache])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Englisch]: Verhandlungssichere Kenntnisse], [#strong[Schlüsselwörter]: Business English, C1])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Französisch]: Gute Kenntnisse], [#strong[Schlüsselwörter]: B1, DELF])
]

= Fähigkeiten
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Recruiting & Employer Branding]: Experte], [#strong[Schlüsselwörter]: Talent Acquisition, Active Sourcing, Interviewführung, Candidate Experience, Onboarding])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Arbeitsrecht & Compliance]: Erfahren], [#strong[Schlüsselwörter]: Betriebsverfassungsrecht, Arbeitsvertragsgestaltung, Kündigungsrecht, Personalaktenführung, Datenschutz])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Personalentwicklung & Führung]: Erfahren], [#strong[Schlüsselwörter]: Führungskräftecoaching, Mitarbeitergespräche, Talentmanagement, Nachfolgeplanung, Weiterbildungsplanung])

#grid(columns: (1fr, auto), align: (left, right), [#strong[HR\-Systeme & Analytics]: Erfahren], [#strong[Schlüsselwörter]: SAP SuccessFactors, Personio, HR\-Kennzahlen, Power BI, Reporting])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Change Management & Kommunikation]: Erfahren], [#strong[Schlüsselwörter]: Change\-Kommunikation, Workshop\-Moderation, Stakeholder\-Management, Konfliktmanagement, Betriebsratskommunikation])
]

= Auszeichnungen
#resume-pad[
#resume-subheading[HR Excellence Award][][Berlin Digital Services AG][2020\-11\-01]
- Auszeichnung für die erfolgreiche Einführung eines integrierten Onboarding\-Programms
- Würdigung der messbaren Verbesserung von Time\-to\-Hire und Mitarbeiterbindung

#resume-subheading[Top\-Arbeitgeber\-Zertifizierung][][Nordlicht Technologies GmbH][2022\-05\-01]
- Mitverantwortung für die Zertifizierung als attraktiver Arbeitgeber im Technologieumfeld
- Besondere Anerkennung für Diversität, Entwicklungsperspektiven und flexible Arbeitsmodelle
]

= Zertifikate
#resume-pad[
#resume-subheading[SHRM Certified Professional (SHRM\-CP)][#link("https://www.shrm.org/certification")[https\:\/\/www\.shrm\.org\/certification]][Society for Human Resource Management][2019\-06\-01]

#resume-subheading[Fachzertifikat Arbeitsrecht im Personalwesen][#link("https://www.haufe-akademie.de")[https\:\/\/www\.haufe\-akademie\.de]][Haufe Akademie][2021\-09\-01]

#resume-subheading[Design Thinking Facilitator][#link("https://hpi.de")[https\:\/\/hpi\.de]][Hasso\-Plattner\-Institut][2022\-03\-01]
]

= Veröffentlichungen
#resume-pad[
#resume-subheading[Hybrides Arbeiten\: Leitfaden für moderne Personalarbeit][#link("https://www.personalwirtschaft.de")[https\:\/\/www\.personalwirtschaft\.de]][Personalwirtschaft Verlag][2022\-09\-01]
- Praxisnaher Leitfaden zur Gestaltung hybrider Arbeitsmodelle
- Handlungsempfehlungen für Führung, Zusammenarbeit und Mitarbeiterbindung
- Fallbeispiele aus mittelständischen Technologieunternehmen
]

= Referenzen
#resume-pad[
#resume-subheading[Dr\. Martin Seidel][Geschäftsführer, Nordlicht Technologies GmbH][martin\.seidel\@nordlicht\-technologies\.de][\+49 30 5487 2100]
Frau Dr\. Vogel hat unsere Personalarbeit strategisch neu ausgerichtet und durch klare Prozesse, transparente Kommunikation und eine starke Führungskräfteentwicklung nachhaltig geprägt\. Sie verbindet arbeitsrechtliche Sicherheit mit unternehmerischem Denken\.
]

= Projekte
#resume-pad[
#resume-subheading[Mentoring\-Programm Female Leaders][#link("https://www.nordlicht-technologies.de/karriere/female-leaders")[https\:\/\/www\.nordlicht\-technologies\.de\/karriere\/female\-leaders]][Ein unternehmensweites Mentoring\-Programm zur gezielten Förderung von Frauen in Führungspositionen\.][2019\-03\-01–2023\-12\-01]
- Konzeption und Steuerung eines strukturierten Mentoring\-Programms mit externen Coachings
- Aufbau von Tandempartnerschaften zwischen Nachwuchsführungskräften und erfahrenen Führungspersönlichkeiten
- Regelmäßige Erfolgsmessung über Teilnehmerfeedback, Beförderungsquoten und Retention
- Aktive Einbindung der Geschäftsführung und des Betriebsrats
#strong[Schlüsselwörter]: Mentoring, Diversity, Führungskräfteentwicklung

#resume-subheading[HR\-Analytics\-Dashboard][][Aufbau eines Dashboards zur Visualisierung zentraler HR\-Kennzahlen für Geschäftsführung und Führungskräfte\.][2022\-01\-01–2022\-12\-01]
- Definition relevanter Kennzahlen zu Fluktuation, Recruiting, Krankheit und Personalentwicklung
- Entwicklung standardisierter Reports in Power BI auf Basis bereinigter Personaldaten
- Schulung von Führungskräften zur datenbasierten Personalsteuerung
- Verbesserung der Entscheidungsgrundlagen im monatlichen Management\-Review
#strong[Schlüsselwörter]: HR\-Kennzahlen, Power BI, Reporting, Datenqualität
]

= Interessen
#resume-pad[
#strong[Berufliches Engagement]: Diversity & Inclusion, Mentoring, Bildungsgerechtigkeit

#strong[Ausgleich]: Laufen, Yoga, Wandern
]

= Ehrenamtliche Tätigkeiten
#resume-pad[
#resume-subheading[Mentorin für Geflüchtete][#link("https://www.berufliche-integration-berlin.de")[https\:\/\/www\.berufliche\-integration\-berlin\.de]][Berliner Netzwerk für berufliche Integration e\.V\.][2019\-01\-01–Heute]
- Unterstützung von Geflüchteten bei der beruflichen Orientierung und Bewerbung
- Durchführung von Bewerbungstrainings und Einzelcoachings
- Vernetzung mit Unternehmen und Bildungsträgern
- Mitwirkung an Veranstaltungen zur interkulturellen Öffnung des Arbeitsmarkts
]