#set document(
  title: "Lena Hartmann - Senior IT-Sicherheitsingenieurin",
  author: "Lena Hartmann",
  keywords: "Netzwerksicherheit, Penetration Testing, Incident Response, Cloud Security, Compliance und Datenschutz, Programmierung und Automatisierung",
  description: "Résumé of Lena Hartmann",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Lena Hartmann]] #v(-0.2em)

#text(size: 1.44em)[Senior IT\-Sicherheitsingenieurin]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+49 30 12345678")[\+49 30 12345678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lena.hartmann@security-mail.de")[lena\.hartmann\@security\-mail\.de] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.lhartmann.dev")[https\:\/\/www\.lhartmann\.dev]

Friedrichstraße 123, Berlin, Berlin, Deutschland, 10117

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/lhartmann")[lhartmann] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lhartmann")[lhartmann]
]

= Basisinformationen

#resume-pad[
- Mehr als 7 Jahre Erfahrung in der IT\-Sicherheit mit Fokus auf Angriffserkennung, Incident Response und Sicherheitsarchitekturen
- Fundierte Kenntnisse in Penetrationstests, Schwachstellenmanagement und der Absicherung von Cloud\-Infrastrukturen
- Erfahrung mit SIEM\-Systemen (Splunk, Wazuh), Firewalls und IDS\/IPS sowie der Automatisierung von Sicherheitsprozessen
- Teamorientiert, analytisch und kommunikationsstark; gewohnt, komplexe Sicherheitsrisiken verständlich zu erklären
]

= Ausbildung
#resume-pad[
#resume-subheading[Technische Universität Berlin][#link("https://www.tu.berlin")[https\:\/\/www\.tu\.berlin]][Master, IT\-Sicherheit, Punkte: 1\.3][2016\-10\-01–2018\-09\-30]
- Schwerpunkt auf angewandter Kryptographie und der Absicherung verteilter Systeme
- Masterarbeit zum Thema \"Erkennung von Advanced Persistent Threats mittels Machine Learning\"
- Praktische Erfahrung durch Laborprojekte zu Penetrationstests und Sicherheitsarchitekturen
#strong[Kurse]: Kryptographie und Sicherheitsprotokolle, Netzwerksicherheit und Firewalls, Secure Software Engineering, Incident Response und Forensik, Datenschutz und Compliance, Cloud Security und Virtualisierung

#resume-subheading[Hochschule für Technik und Wirtschaft Berlin][#link("https://www.htw-berlin.de")[https\:\/\/www\.htw\-berlin\.de]][Bachelor, Informatik, Punkte: 1\.7][2012\-10\-01–2016\-09\-30]
- Grundlagen in Programmierung, Datenbanken und Netzwerktechnik
- Wahlpflichtmodule zu IT\-Sicherheit und Systemadministration
]

= Berufserfahrung
#resume-pad[
#resume-subheading[Senior IT\-Sicherheitsingenieurin][#link("https://www.sap.com")[https\:\/\/www\.sap\.com]][SAP SE][2020\-04\-01–Heute]
- Leitung von Penetrationstests und Sicherheitsaudits für cloudbasierte Unternehmensanwendungen
- Entwicklung und Betrieb von SIEM\-Regeln zur Erkennung von Angriffsmustern und Anomalien
- Durchführung von Incident\-Response\-Maßnahmen und forensischen Analysen bei Sicherheitsvorfällen
- Mitwirkung bei der Implementierung und Zertifizierung nach ISO 27001 und BSI\-Grundschutz
- Automatisierung von Sicherheitsprüfungen mit Python und Terraform
#strong[Schlüsselwörter]: Penetration Testing, SIEM, Incident Response, ISO 27001, Cloud Security

#resume-subheading[IT\-Sicherheitsanalystin][#link("https://www.telekom.com")[https\:\/\/www\.telekom\.com]][Deutsche Telekom AG][2018\-10\-01–2020\-03\-31]
- Überwachung und Analyse von Sicherheitsereignissen im 24\/7\-Security\-Operations\-Center
- Bearbeitung von Sicherheitsvorfällen nach definierten Playbooks und Eskalationsprozessen
- Durchführung von Schwachstellenanalysen und Bewertung von Risiken in Netzwerk\- und Systemumgebungen
- Erstellung von Sicherheitsreports und Präsentationen für technische und nicht\-technische Stakeholder
#strong[Schlüsselwörter]: SOC, SIEM, Schwachstellenanalyse, Netzwerksicherheit, Incident Response
]

= Sprachen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Deutsch]: Muttersprache oder zweisprachig], [#strong[Schlüsselwörter]: Muttersprache])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Englisch]: Verhandlungssichere Kenntnisse], [#strong[Schlüsselwörter]: Verhandlungssicher, TOEFL 110])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Französisch]: Gute Kenntnisse], [#strong[Schlüsselwörter]: Grundkenntnisse])
]

= Fähigkeiten
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Netzwerksicherheit]: Experte], [#strong[Schlüsselwörter]: Firewalls, VPN, IDS\/IPS, Wireshark, Netzwerksegmentierung])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Penetration Testing]: Erfahren], [#strong[Schlüsselwörter]: Metasploit, Burp Suite, Nmap, OpenVAS, Nessus])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Incident Response]: Erfahren], [#strong[Schlüsselwörter]: SIEM (Splunk, Wazuh), Forensik, Threat Hunting, Playbook\-Entwicklung])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud Security]: Fortgeschritten], [#strong[Schlüsselwörter]: AWS, Azure, IAM, Kubernetes, Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Compliance und Datenschutz]: Erfahren], [#strong[Schlüsselwörter]: ISO 27001, BSI\-Grundschutz, DSGVO, Risikomanagement])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programmierung und Automatisierung]: Erfahren], [#strong[Schlüsselwörter]: Python, Bash, PowerShell, Git, CI\/CD])
]

= Auszeichnungen
#resume-pad[
#resume-subheading[Cybersecurity Excellence Award][][Bundesverband IT\-Sicherheit e\.V\.][2022\-11\-01]
- Auszeichnung für die erfolgreiche Einführung eines unternehmensweiten Threat\-Intelligence\-Programms
- Anerkennung für besonderes Engagement in der Nachwuchsförderung im Bereich IT\-Sicherheit
]

= Zertifikate
#resume-pad[
#resume-subheading[Certified Information Systems Security Professional (CISSP)][#link("https://www.isc2.org")[https\:\/\/www\.isc2\.org]][ISC2][2021\-06\-01]

#resume-subheading[Offensive Security Certified Professional (OSCP)][#link("https://www.offsec.com")[https\:\/\/www\.offsec\.com]][Offensive Security][2019\-11\-01]

#resume-subheading[ISO\/IEC 27001 Lead Auditor][#link("https://www.tuv.com")[https\:\/\/www\.tuv\.com]][TÜV Rheinland][2020\-03\-01]
]

= Veröffentlichungen
#resume-pad[
#resume-subheading[Erkennung von Advanced Persistent Threats mittels Machine Learning][#link("https://www.zeitschrift-it-sicherheit.de/artikel/apt-ml")[https\:\/\/www\.zeitschrift\-it\-sicherheit\.de\/artikel\/apt\-ml]][Zeitschrift für IT\-Sicherheit][2019\-12\-01]
- Analyse von Netzwerk\- und Hostdaten zur frühzeitigen Erkennung komplexer Angriffsmuster
- Vergleich verschiedener Machine\-Learning\-Verfahren hinsichtlich Genauigkeit und False\-Positive\-Rate
- Praxisnahe Evaluation in einer virtualisierten Unternehmensumgebung
]

= Projekte
#resume-pad[
#resume-subheading[Aufbau eines Security Operations Center (SOC)][][Zentraler Aufbau eines SOC zur Erkennung und Reaktion auf Sicherheitsvorfälle in einer hybriden Cloud\-Umgebung\.][2021\-01\-01–2021\-12\-31]
- Konzeption und Implementierung eines SOC für die zentrale Überwachung von Sicherheitsereignissen
- Integration von SIEM\-, Ticketing\- und Threat\-Intelligence\-Systemen
- Definition von Alarmierungs\- und Eskalationsprozessen
#strong[Schlüsselwörter]: SOC, SIEM, Threat Intelligence, Incident Response

#resume-subheading[Threat\-Intelligence\-Plattform][][Eine Plattform zur Sammlung, Normalisierung und Priorisierung von Threat\-Intelligence\-Daten aus verschiedenen Quellen\.][2019\-03\-01–2020\-02\-28]
- Entwicklung einer Plattform zur Aggregation und Auswertung von Threat\-Intelligence\-Feeds
- Automatisierte Anreicherung von Sicherheitsereignissen mit Kontextdaten
- Bereitstellung von Dashboards für das Sicherheitsteam
#strong[Schlüsselwörter]: Threat Intelligence, Python, APIs, Elasticsearch
]

= Interessen
#resume-pad[
#strong[Capture the Flag (CTF)]: HackTheBox, TryHackMe, CTF\-Wettbewerbe

#strong[Open Source]: Security\-Tools, GitHub, Community

#strong[Sport]: Laufen, Klettern, Radfahren
]

= Ehrenamtliche Tätigkeiten
#resume-pad[
#resume-subheading[Mentorin für Nachwuchskräfte][#link("https://www.bv-it-sicherheit.de")[https\:\/\/www\.bv\-it\-sicherheit\.de]][Bundesverband IT\-Sicherheit e\.V\.][2021\-01\-01–Heute]
- Betreuung von Studierenden und Berufseinsteigern bei CTF\-Wettbewerben und Sicherheitsprojekten
- Durchführung von Workshops zu Themen wie Penetration Testing und Incident Response
- Förderung des Austauschs zwischen Hochschulen und Industrie
]