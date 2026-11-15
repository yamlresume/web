#set document(
  title: "Julia Schneider - Marketing Manager | Digitale Kampagnen & Markenstrategie",
  author: "Julia Schneider",
  keywords: "Marketingstrategie, Digitale Kanäle, Analytik & Tools, Führung & Kommunikation",
  description: "Résumé of Julia Schneider",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Julia Schneider]] #v(-0.2em)

#text(size: 1.44em)[Marketing Manager | Digitale Kampagnen & Markenstrategie]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+49 30 12345678")[\+49 30 12345678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:julia.schneider@example.de")[julia\.schneider\@example\.de] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.juliaschneider-marketing.de")[https\:\/\/www\.juliaschneider\-marketing\.de]

Friedrichstraße 123, Berlin, Berlin, Deutschland, 10117

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/julia-schneider-marketing")[julia\-schneider\-marketing] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/julia_marketing")[julia\_marketing]
]

= Basisinformationen

#resume-pad[
Marketing Manager mit über 8 Jahren Erfahrung in der Entwicklung und Umsetzung datengetriebener Marketingstrategien\. Spezialisiert auf digitale Kampagnen, Markenführung und Lead\-Generierung im B2B\- und B2C\-Umfeld\.

- Erfolgreiche Steuerung von Marketingbudgets bis 1,5 Mio\. €
- Führung interdisziplinärer Teams von bis zu 8 Mitarbeitenden
- Ausgeprägte analytische Fähigkeiten und Erfahrung mit CRM\- und Marketing\-Automation\-Tools
- Kreative Denkweise mit starkem Fokus auf messbare Ergebnisse und ROI
]

= Ausbildung
#resume-pad[
#resume-subheading[Freie Universität Berlin][#link("https://www.fu-berlin.de")[https\:\/\/www\.fu\-berlin\.de]][Master, Betriebswirtschaftslehre mit Schwerpunkt Marketing, Punkte: 1,7][Okt. 2014–Sept. 2016]
- Vertiefung in marktorientierter Unternehmensführung und digitalen Geschäftsmodellen
- Masterarbeit zum Thema \"Einfluss von Social Media auf die Markenloyalität\"
- Praktika bei einer Werbeagentur und einem E\-Commerce\-Unternehmen
#strong[Kurse]: Strategisches Marketing, Konsumentenverhalten, Marktforschung, Digitales Marketing, Internationales Management, Kommunikationspolitik
]

= Berufserfahrung
#resume-pad[
#resume-subheading[Marketing Manager][#link("https://www.technova.de")[https\:\/\/www\.technova\.de]][TechNova GmbH][Jan. 2020–Heute]
- Entwicklung und Umsetzung der ganzheitlichen Marketingstrategie für den DACH\-Raum
- Steuerung eines jährlichen Budgets von 1,5 Mio\. € über alle digitalen und Offline\-Kanäle
- Führung eines Teams von 6 Marketing\-Spezialisten (Content, Performance, Design)
- Einführung eines Marketing\-Automation\-Systems (HubSpot) und Steigerung der qualifizierten Leads um 45 %
- Enge Zusammenarbeit mit Produktmanagement und Vertrieb zur Markteinführung neuer Produkte
#strong[Schlüsselwörter]: Digitale Kampagnen, Markenstrategie, Lead\-Generierung, Budgetplanung, Teamführung, Marketing\-Automation

#resume-subheading[Senior Marketing Specialist][#link("https://www.greenwave.de")[https\:\/\/www\.greenwave\.de]][GreenWave AG][März 2017–Dez. 2019]
- Konzeption und Durchführung von Multi\-Channel\-Kampagnen zur Steigerung der Markenbekanntheit
- Verantwortung für SEO\/SEM\-Maßnahmen und Steigerung des organischen Traffics um 60 %
- Aufbau und Betreuung des Content\-Marketings inkl\. Blog, Whitepaper und Social Media
- Analyse von Kampagnenkennzahlen und Ableitung von Optimierungsmaßnahmen
#strong[Schlüsselwörter]: SEO, SEM, Content\-Marketing, Social Media, Kampagnenmanagement

#resume-subheading[Marketing Assistant][#link("https://www.startuplabs.de")[https\:\/\/www\.startuplabs\.de]][StartUp Labs][Juli 2016–Feb. 2017]
- Unterstützung bei der Erstellung von Marketingmaterialien und Präsentationen
- Pflege der Social\-Media\-Kanäle und Erstellung von Grafiken mit Canva
- Mithilfe bei der Organisation von Events und Messen
- Erste Erfahrungen in der Auswertung von Google Analytics
#strong[Schlüsselwörter]: Social Media, Event\-Marketing, Content\-Erstellung
]

= Sprachen
#resume-pad[
#strong[Deutsch]: Muttersprache oder zweisprachig

#grid(columns: (1fr, auto), align: (left, right), [#strong[Englisch]: Verhandlungssichere Kenntnisse], [#strong[Schlüsselwörter]: C1, Business English])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Französisch]: Gute Kenntnisse], [#strong[Schlüsselwörter]: A2])
]

= Fähigkeiten
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Marketingstrategie]: Experte], [#strong[Schlüsselwörter]: Markenpositionierung, Zielgruppenanalyse, Wettbewerbsanalyse, Marketingplanung])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Digitale Kanäle]: Erfahren], [#strong[Schlüsselwörter]: Google Ads, Meta Ads, LinkedIn Ads, SEO, E\-Mail\-Marketing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analytik & Tools]: Erfahren], [#strong[Schlüsselwörter]: Google Analytics 4, HubSpot, Salesforce, Tableau, A\/B\-Testing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Führung & Kommunikation]: Erfahren], [#strong[Schlüsselwörter]: Teamleitung, Projektmanagement, Stakeholder, Präsentation])
]

= Auszeichnungen
#resume-pad[
#resume-subheading[Marketing Manager des Jahres][][Deutscher Marketing Verband][Nov. 2022]
Auszeichnung für herausragende Leistungen in der strategischen Marketingführung und nachweisbare Steigerung der Markenbekanntheit\.

#resume-subheading[Best Digital Campaign][][European Marketing Awards][Mai 2021]
Prämierung der Kampagne \"TechNova Future\" für Kreativität, Innovation und messbaren ROI\.
]

= Zertifikate
#resume-pad[
#resume-subheading[Google Ads Zertifizierung][#link("https://ads.google.com/certification")[https\:\/\/ads\.google\.com\/certification]][Google][März 2021]

#resume-subheading[HubSpot Inbound Marketing Zertifizierung][#link("https://academy.hubspot.com")[https\:\/\/academy\.hubspot\.com]][HubSpot Academy][Juni 2020]
]

= Veröffentlichungen
#resume-pad[
#resume-subheading[Die Zukunft des datengetriebenen Marketings][#link("https://www.marketingjournal.de")[https\:\/\/www\.marketingjournal\.de]][Marketing Journal][Apr. 2023]
Fachartikel über die Bedeutung von Datenanalyse und KI für personalisierte Marketingstrategien\.

#resume-subheading[Nachhaltige Markenführung][#link("https://www.springer.com")[https\:\/\/www\.springer\.com]][Springer Gabler][Sept. 2022]
Buchkapitel über die Integration von Nachhaltigkeit in die Markenpositionierung\.
]

= Projekte
#resume-pad[
#resume-subheading[Markenrelaunch TechNova][#link("https://www.technova.de/markenrelaunch")[https\:\/\/www\.technova\.de\/markenrelaunch]][Neupositionierung der Marke TechNova für den europäischen Markt][Jan. 2021–Dez. 2021]
- Entwicklung eines neuen Markenleitbilds und visuellen Erscheinungsbilds
- Umsetzung einer integrierten Kampagne über Social Media, PR und Events
- Steigerung der Markenbekanntheit um 35 % innerhalb von 12 Monaten
#strong[Schlüsselwörter]: Markenrelaunch, Positionierung, Integrierte Kampagne

#resume-subheading[B2B Lead\-Funnel][#link("https://www.technova.de/lead-funnel")[https\:\/\/www\.technova\.de\/lead\-funnel]][Aufbau eines automatisierten B2B\-Lead\-Funnels][März 2022–Nov. 2022]
- Konzeption und Implementierung von Content\-Angeboten für jede Funnel\-Phase
- Nutzung von LinkedIn Ads und E\-Mail\-Nurturing zur Lead\-Qualifizierung
- Erhöhung der Conversion\-Rate um 28 %
#strong[Schlüsselwörter]: Lead\-Generierung, B2B, Marketing\-Automation
]

= Interessen
#resume-pad[
#strong[Sport]: Laufen, Yoga, Radfahren

#strong[Kultur]: Fotografie, Reisen, Literatur
]

= Ehrenamtliche Tätigkeiten
#resume-pad[
#resume-subheading[Ehrenamtliche Marketingleitung][#link("https://www.marketing-nonprofit.de")[https\:\/\/www\.marketing\-nonprofit\.de]][Marketing für Non\-Profit e\.V\.][Jan. 2018–Dez. 2020]
- Entwicklung und Umsetzung der Online\-Marketingstrategie für ein soziales Projekt
- Betreuung der Website und Social\-Media\-Kanäle
- Organisation von Spendenkampagnen mit einem Spendenvolumen von über 50\.000 €
]