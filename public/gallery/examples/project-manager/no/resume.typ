#set document(
  title: "Ingrid Solberg - Erfaren prosjektleder med lidenskap for smidig metodikk og verdiskapning",
  author: "Ingrid Solberg",
  keywords: "Prosjektledelse, Smidig metodikk, Verktøy, Ledelse",
  description: "Résumé of Ingrid Solberg",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "no", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Ingrid Solberg]] #v(-0.2em)

#text(size: 1.44em)[Erfaren prosjektleder med lidenskap for smidig metodikk og verdiskapning]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+47 123 45 678")[\+47 123 45 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ingrid.solberg@example.no")[ingrid\.solberg\@example\.no] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.ingridsolberg.no")[https\:\/\/www\.ingridsolberg\.no]

Karl Johans gate 15, Oslo, Oslo, Norge, 0150

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/ingridsolberg")[ingridsolberg] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/ingridsolberg")[ingridsolberg] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/ingridsolberg")[ingridsolberg]
]

= Grunnleggende informasjon

#resume-pad[
- Prosjektleder med over 8 års erfaring fra teknologi\- og energibransjen
- Dokumentert suksess med å lede tverrfaglige team og levere prosjekter innen tid og budsjett
- Sterk kompetanse innen smidige metoder (Scrum, Kanban) og tradisjonell prosjektstyring (PMBOK)
- Strategisk tenker med fokus på kontinuerlig forbedring og bærekraftige løsninger
- Gode kommunikasjons\- og lederegenskaper, vant til å samarbeide med interessenter på alle nivåer
]

= Utdanning
#resume-pad[
#resume-subheading[Norges teknisk\-naturvitenskapelige universitet (NTNU)][#link("https://www.ntnu.no/")[https\:\/\/www\.ntnu\.no\/]][Master, Industriell økonomi og teknologiledelse, Poeng: 3\.8][aug. 2015–juni 2017]
- Spesialisering i prosjektledelse og innovasjonsledelse
- Gjennomførte masteroppgave om smidig prosjektstyring i energisektoren
- Verv som leder for studentorganisasjonen Prosjektforum
#strong[Kurs]: Prosjektledelse, Risikostyring, Smidig utvikling, Strategisk ledelse, Finansstyring, Forhandlingsteknikk

#resume-subheading[Handelshøyskolen BI][#link("https://www.bi.no/")[https\:\/\/www\.bi\.no\/]][Bachelor, Økonomi og administrasjon, Poeng: 3\.5][aug. 2012–juni 2015]
- Grunnleggende forståelse for forretningsdrift og økonomistyring
- Deltok i case\-konkurranser og studentprosjekter
#strong[Kurs]: Bedriftsøkonomi, Markedsføring, Organisasjonspsykologi, Statistikk
]

= Arbeidserfaring
#resume-pad[
#resume-subheading[Senior Prosjektleder][#link("https://www.equinor.com/")[https\:\/\/www\.equinor\.com\/]][Equinor][jan. 2021–Nå]
- Leder komplekse tverrfaglige prosjekter innen fornybar energi og digitalisering
- Ansvarlig for prosjektbudsjetter på opptil 200 MNOK og team på 20\+ medlemmer
- Implementerte smidige arbeidsmetoder som reduserte leveringstiden med 25%
- Bygget sterke relasjoner med interessenter og leverandører for å sikre fremdrift
- Veileder og mentor for junior prosjektledere i organisasjonen
#strong[Nøkkelord]: Prosjektledelse, Smidig, Fornybar energi, Digitalisering, Risikostyring

#resume-subheading[Prosjektleder][#link("https://www.telenor.no/")[https\:\/\/www\.telenor\.no\/]][Telenor][sep. 2017–des. 2020]
- Ledet flere IT\-utviklingsprosjekter fra konsept til produksjon
- Koordinerte interne team og eksterne leverandører for å levere på tid og budsjett
- Innførte Kanban for bedre flyt og oversikt i utviklingsteamene
- Gjennomførte risikovurderinger og utarbeidet beredskapsplaner
#strong[Nøkkelord]: IT\-prosjekter, Kanban, Leverandørstyring, Agile

#resume-subheading[Prosjektkoordinator][#link("https://www.dnv.no/")[https\:\/\/www\.dnv\.no\/]][DNV][juli 2016–aug. 2017]
- Støttet prosjektledere i planlegging, oppfølging og rapportering
- Utviklet maler og verktøy for prosjektstyring som ble brukt på tvers av avdelingen
- Bidro til å etablere et prosjektkontor (PMO) for bedre styring og kontroll
#strong[Nøkkelord]: Prosjektstøtte, PMO, Rapportering
]

= Språk
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Norsk]: Morsmål eller tospråklig nivå], [#strong[Nøkkelord]: Morsmål])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engelsk]: Fullt profesjonelt nivå], [#strong[Nøkkelord]: TOEFL 110, Forretningsflyt])
]

= Ferdigheter
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Prosjektledelse]: Ekspert], [#strong[Nøkkelord]: PMBOK, PRINCE2, Risikostyring, Budsjettering, Interessentanalyse])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Smidig metodikk]: Avansert], [#strong[Nøkkelord]: Scrum, Kanban, Lean, SAFe])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Verktøy]: Avansert], [#strong[Nøkkelord]: Jira, Microsoft Project, Trello, Asana, Miro])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Ledelse]: Ekspert], [#strong[Nøkkelord]: Teamledelse, Mentoring, Kommunikasjon, Forhandling])
]

= Utmerkelser
#resume-pad[
#resume-subheading[Årets Prosjektleder][][Norsk Prosjektlederforening][nov. 2022]
- Tildelt for fremragende ledelse av digitaliseringsprosjektet \"Fremtidens Energi\"
- Anerkjent for innovativ bruk av smidige metoder og sterk resultatorientering

#resume-subheading[Beste Masteroppgave][][NTNU][juni 2017]
- Tildelt for masteroppgaven \"Smidig prosjektstyring i energisektoren\"
- Karakter A og ros for praktisk relevans
]

= Sertifikater
#resume-pad[
#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][mars 2019]

#resume-subheading[PRINCE2 Foundation][#link("https://www.axelos.com/certifications/prince2")[https\:\/\/www\.axelos\.com\/certifications\/prince2]][AXELOS][juni 2016]
]

= Publikasjoner
#resume-pad[
#resume-subheading[Smidig prosjektstyring i energisektoren][#link("https://www.magma.no/smidig-prosjektstyring")[https\:\/\/www\.magma\.no\/smidig\-prosjektstyring]][Magma \- Econa][sep. 2017]
- Artikkel basert på masteroppgave om hvordan smidige metoder kan forbedre prosjektgjennomføring i energibransjen
- Presenterer case\-studier og anbefalinger for ledere
]

= Prosjekter
#resume-pad[
#resume-subheading[Fremtidens Energi][#link("https://www.equinor.com/fremtidens-energi")[https\:\/\/www\.equinor\.com\/fremtidens\-energi]][Digital plattform for sanntidsstyring av fornybare energikilder][feb. 2021–des. 2022]
- Ledet et team på 15 utviklere, designere og data scientists
- Leverte plattformen 2 måneder før planlagt og 10% under budsjett
- Implementerte smidige metoder og automatisert rapportering
#strong[Nøkkelord]: Fornybar energi, Digitalisering, Smidig, Prosjektledelse
]

= Interesser
#resume-pad[
#strong[Friluftsliv]: Fjellturer, Ski, Kajakk

#strong[Teknologi]: Kunstig intelligens, Bærekraft, Åpen kildekode
]

= Frivillig arbeid
#resume-pad[
#resume-subheading[Mentor][#link("https://www.prosjektlederforeningen.no/")[https\:\/\/www\.prosjektlederforeningen\.no\/]][Norsk Prosjektlederforening][jan. 2020–Nå]
- Mentorer unge prosjektledere og studenter innen prosjektfaget
- Holder foredrag og workshops om smidig prosjektledelse

#resume-subheading[Rådgiver][#link("https://www.startupnorge.no/")[https\:\/\/www\.startupnorge\.no\/]][StartUp Norge][mars 2018–des. 2019]
- Rådgav oppstartsbedrifter om prosjektplanlegging og finansiering
- Bidro til å utvikle strukturerte prosjektplaner for tidligfase\-selskaper
]