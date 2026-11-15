#set document(
  title: "Katrin Vogel - UX Designerin mit Fokus auf nutzerzentrierte Gestaltung",
  author: "Katrin Vogel",
  keywords: "UX Research, UI-Design, Prototyping, Methoden",
  description: "Résumé of Katrin Vogel",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Katrin Vogel]] #v(-0.2em)

#text(size: 1.44em)[UX Designerin mit Fokus auf nutzerzentrierte Gestaltung]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+49 151 23456789")[\+49 151 23456789] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:hallo@katrinvogel.de")[hallo\@katrinvogel\.de] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://katrinvogel.de")[https\:\/\/katrinvogel\.de]

München, Bayern, Deutschland, 80331

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/katrinvogel")[katrinvogel] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M232 237.2c31.8-15.2 48.4-38.2 48.4-74 0-70.6-52.6-87.8-113.3-87.8l-167.1 0 0 354.4 171.8 0c64.4 0 124.9-30.9 124.9-102.9 0-44.5-21.1-77.4-64.7-89.7zM77.9 135.9l73.1 0c28.1 0 53.4 7.9 53.4 40.5 0 30.1-19.7 42.2-47.5 42.2l-79 0 0-82.7zm83.3 233.7l-83.3 0 0-97.6 84.9 0c34.3 0 56 14.3 56 50.6 0 35.8-25.9 47-57.6 47zM519.7 128.9l-143.7 0 0-34.9 143.7 0 0 34.9zM576 305.2c0-75.9-44.4-139.2-124.9-139.2-78.2 0-131.3 58.8-131.3 135.8 0 79.9 50.3 134.7 131.3 134.7 61.3 0 101-27.6 120.1-86.3l-62.2 0c-6.7 21.9-34.3 33.5-55.7 33.5-41.3 0-63-24.2-63-65.3l185.1 0c.3-4.2 .6-8.7 .6-13.2zM390.4 274c2.3-33.7 24.7-54.8 58.5-54.8 35.4 0 53.2 20.8 56.2 54.8l-114.7 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.behance.net/katrinvogel")[katrinvogel] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M256 8a248 248 0 1 0 0 496 248 248 0 1 0 0-496zM420 122.4c29.5 36 47.4 82 47.8 132-7-1.5-77-15.7-147.5-6.8-5.8-14-11.2-26.4-18.6-41.6 78.3-32 113.8-77.5 118.3-83.5zM396.4 97.9c-3.8 5.4-35.7 48.3-111 76.5-34.7-63.8-73.2-116.2-79-124 67.2-16.2 138 1.3 190.1 47.5zM165.9 64.6c5.6 7.7 43.4 60.1 78.5 122.5-99.1 26.3-186.4 25.9-195.8 25.8 13.7-65.7 58-120.4 117.3-148.3zM44.2 256.3c0-2.2 0-4.3 .1-6.5 9.3 .2 111.9 1.5 217.7-30.1 6.1 11.9 11.9 23.9 17.2 35.9-76.6 21.6-146.2 83.5-180.5 142.3-33.8-37.6-54.5-87.2-54.5-141.6zM126 423.4c22.1-45.2 82.2-103.6 167.6-132.8 29.7 77.3 42 142.1 45.2 160.6-68.1 29-150 21.1-212.8-27.9zm248.4 8.5c-2.2-12.9-13.4-74.9-41.2-151 66.4-10.6 124.7 6.8 131.9 9.1-9.4 58.9-43.3 109.8-90.8 142z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://dribbble.com/katrinvogel")[katrinvogel]
]

= Basisinformationen

#resume-pad[
Leidenschaftliche UX Designerin mit über 6 Jahren Erfahrung in der Gestaltung digitaler Produkte, die Menschen begeistern und im Alltag echten Mehrwert schaffen\. Ich verbinde tiefes User Research mit klarem visuellem Design, um barrierefreie, intuitive und ästhetisch überzeugende Erlebnisse zu entwickeln\. Meine Expertise umfasst Design Thinking, Prototyping, Design Systems sowie die enge Zusammenarbeit mit Product Management und Entwicklung\.

- Schwerpunkt auf nutzerzentrierten Prozessen und datenbasierten Designentscheidungen
- Erfahrung in der Leitung von Design Sprints und Workshops
- Starkes Gespür für Typografie, Farbe und visuelle Hierarchie
- Überzeugte Verfechterin von Barrierefreiheit und Inklusion im digitalen Raum
]

= Ausbildung
#resume-pad[
#resume-subheading[Hochschule für Gestaltung München][#link("https://www.hfg-muenchen.de")[https\:\/\/www\.hfg\-muenchen\.de]][Bachelor, Kommunikationsdesign, Punkte: 1,6][Okt. 2015–Sept. 2019]
- Vertiefung in Interaktions\- und Interface\-Design mit Fokus auf digitale Produkte
- Praxisprojekte in Kooperation mit Unternehmen aus den Bereichen FinTech und Mobilität
- Abschlussarbeit zum Thema „Inclusive Design – Barrierefreiheit in digitalen Produkten“ mit der Note 1,3
- Studentische Hilfskraft im UX\-Labor, Betreuung von Usability\-Studien
#strong[Kurse]: Grundlagen der Gestaltung, Typografie, Interaktionsdesign, Usability Engineering, Design Research, Bewegtbild und Animation
]

= Berufserfahrung
#resume-pad[
#resume-subheading[Senior UX Designerin][#link("https://pixelwerk.de")[https\:\/\/pixelwerk\.de]][Pixelwerk GmbH][März 2022–Heute]
- Verantwortlich für die UX\-Strategie und die Weiterentwicklung des Design Systems der SaaS\-Plattform „DataFlow“
- Leitung von User\-Research\-Studien mit über 40 qualitativen Interviews und iterativen Usability\-Tests
- Etablierung eines Design\-Sprint\-Formats, das die Time\-to\-Market neuer Features um 30 % reduzierte
- Enge Zusammenarbeit mit Product Management, Engineering und Data Science zur Integration nutzerzentrierter Prozesse
- Mentoring von Junior UX Designerinnen und Designern sowie Aufbau einer internen Wissensdatenbank
#strong[Schlüsselwörter]: Design Thinking, Design System, User Research, Design Sprints, Mentoring

#resume-subheading[UX Designerin][#link("https://appsphere-solutions.de")[https\:\/\/appsphere\-solutions\.de]][Appsphere Solutions][Sept. 2019–Feb. 2022]
- Konzeption und Gestaltung von User Interfaces für iOS\- und Android\-Apps im Bereich Health und E\-Commerce
- Durchführung von Stakeholder\-Workshops und Ableitung von UX\-Strategien für neue Produktfunktionen
- Erstellung von interaktiven Prototypen mit Figma und InVision zur frühzeitigen Validierung von Ideen
- Durchführung von A\/B\-Tests und Ableitung datenbasierter Designentscheidungen
- Aufbau eines nutzerzentrierten Designprozesses in einem agilen Entwicklungsteam
#strong[Schlüsselwörter]: Mobile Apps, Prototyping, Usability Testing, A\/B\-Tests, Agile
]

= Sprachen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Deutsch]: Muttersprache oder zweisprachig], [#strong[Schlüsselwörter]: Muttersprache])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Englisch]: Verhandlungssichere Kenntnisse], [#strong[Schlüsselwörter]: Business English, UX\-Workshops])
]

= Fähigkeiten
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[UX Research]: Erfahren], [#strong[Schlüsselwörter]: Tiefeninterviews, Usability\-Tests, Personas, Customer Journey, Umfragen])

#grid(columns: (1fr, auto), align: (left, right), [#strong[UI\-Design]: Experte], [#strong[Schlüsselwörter]: Figma, Sketch, Adobe XD, Design Systems, Barrierefreiheit])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prototyping]: Erfahren], [#strong[Schlüsselwörter]: Figma Prototype, InVision, ProtoPie, Micro\-Interactions])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Methoden]: Erfahren], [#strong[Schlüsselwörter]: Design Thinking, Design Sprints, Service Blueprint, Jobs\-to\-be\-Done])
]

= Auszeichnungen
#resume-pad[
#resume-subheading[German Design Award 2023][][Rat für Formgebung][Feb. 2023]
Auszeichnung für herausragendes Interface\-Design der mobilen App „FairTrade Finder“ in der Kategorie „Excellent Communications Design“\.
]

= Zertifikate
#resume-pad[
#resume-subheading[Google UX Design Professional Certificate][#link("https://www.coursera.org/professional-certificates/google-ux-design")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-ux\-design]][Google][Jan. 2021]

#resume-subheading[Certified Professional for Usability and User Experience][#link("https://www.iao.fraunhofer.de")[https\:\/\/www\.iao\.fraunhofer\.de]][Fraunhofer\-Institut für Arbeitswirtschaft und Organisation][Nov. 2020]
]

= Veröffentlichungen
#resume-pad[
#resume-subheading[Barrierefreiheit im digitalen Produktdesign – Ein Leitfaden für Teams][#link("https://ux-love-magazin.de/artikel/barrierefreiheit")[https\:\/\/ux\-love\-magazin\.de\/artikel\/barrierefreiheit]][UX\-Love Magazin][März 2023]
- Praxisorientierter Leitfaden zur Integration von Barrierefreiheit in agile Designprozesse
- Vorstellung von Methoden und Tools für inklusive Nutzertests
- Plädoyer für Barrierefreiheit als Gestaltungsprinzip statt nachträglicher Anforderung
]

= Projekte
#resume-pad[
#resume-subheading[FairTrade Finder][#link("https://fairtrade-finder.de")[https\:\/\/fairtrade\-finder\.de]][Mobiler Produktbegleiter für nachhaltigen Konsum][Sept. 2021–Feb. 2022]
- Konzeption einer App, die Verbraucher\:innen transparente Informationen zu Herkunft und Nachhaltigkeit von Produkten bietet
- Durchführung von User Research mit 25 Teilnehmenden zur Identifikation von Entscheidungsmustern im Kaufprozess
- Erstellung von interaktiven Prototypen und iterative Usability\-Tests über drei Zyklen
- Finale Gestaltung des UI\-Kits unter Berücksichtigung der WCAG\-2\.1\-Richtlinien
#strong[Schlüsselwörter]: Mobile App, Nachhaltigkeit, User Research, WCAG

#resume-subheading[Design System „Kiosk“][#link("https://github.com/katrinvogel/kiosk")[https\:\/\/github\.com\/katrinvogel\/kiosk]][Open\-Source Design System für barrierefreie Webanwendungen][Jan. 2022–Dez. 2023]
- Aufbau eines modular aufgebauten Design Systems mit über 60 Komponenten in Figma
- Entwicklung von Dokumentationsstandards für Design\-Tokens und Nutzungskontexte
- Aktive Pflege der Community und Organisation von monatlichen Contributing\-Workshops
#strong[Schlüsselwörter]: Design System, Figma, Open Source, Accessibility
]

= Interessen
#resume-pad[
#strong[Design]: Design Thinking, Generative KI, Nachhaltiges Design

#strong[Musik]: Klavier, Konzerte

#strong[Reisen]: Skandinavien, Städte mit Designkultur
]

= Ehrenamtliche Tätigkeiten
#resume-pad[
#resume-subheading[Mentorin für UX Design][#link("https://www.redi-school.org")[https\:\/\/www\.redi\-school\.org]][ReDI School of Digital Integration][Sept. 2022–Heute]
- Unterstützung geflüchteter und zugewanderter Menschen beim Einstieg in den UX\-Design\-Bereich
- Planung und Durchführung von monatlichen Feedback\-Sessions zu Portfolio\-Projekten
- Aufbau von Lernmaterialien und Übungen zu den Grundlagen nutzerzentrierter Gestaltung
]