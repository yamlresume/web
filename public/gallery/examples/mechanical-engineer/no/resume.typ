#set document(
  title: "Ingrid Solberg - Maskiningeniør med fokus på produktutvikling og bærekraft",
  author: "Ingrid Solberg",
  keywords: "Mekanisk konstruksjon, Beregning og analyse, Materialer og produksjon, Prosjektledelse",
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

#text(size: 1.44em)[Maskiningeniør med fokus på produktutvikling og bærekraft]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+47 987 65 432")[\+47 987 65 432] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ingrid.solberg@example.no")[ingrid\.solberg\@example\.no] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.ingridsolberg.no")[https\:\/\/www\.ingridsolberg\.no]

Storgata 42, Oslo, Oslo, Norge, 0182

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/ingridsolberg")[ingridsolberg] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/ingridsolberg")[ingridsolberg]
]

= Grunnleggende informasjon

#resume-pad[
- Maskiningeniør med mastergrad fra NTNU og fem års erfaring fra produktutvikling, konstruksjon og teknisk prosjektledelse
- Erfaren med CAD, FEM\-analyse og materialvalg for komponenter i krevende industrielle miljøer
- Dokumentert evne til å lede tverrfaglige team fra konsept til produksjon, med vekt på kvalitet, kostnad og bærekraft
- Sterk interesse for energieffektivisering, sirkulærøkonomi og digitale verktøy i ingeniørfaglig arbeid
]

= Utdanning
#resume-pad[
#resume-subheading[Norges teknisk\-naturvitenskapelige universitet][#link("https://www.ntnu.no")[https\:\/\/www\.ntnu\.no]][Master, Maskinteknikk, Poeng: A\+][aug. 2017–juni 2022]
- Fordypning i produktutvikling og beregningsmekanikk
- Masteroppgave om lette konstruksjoner i aluminium for offshore\-applikasjoner
- Gjennomførte tverrfaglige prosjekter med fokus på bærekraftige materialvalg
#strong[Kurs]: Konstruksjonsteknikk, Fasthetslære, Strømningslære, Termodynamikk, Materialteknologi, Produktutvikling, FEM\-analyse, Prosjektledelse
]

= Arbeidserfaring
#resume-pad[
#resume-subheading[Senior maskiningeniør][#link("https://www.hydro.com/no-NO/")[https\:\/\/www\.hydro\.com\/no\-NO\/]][Hydro Extrusion Norge AS][jan. 2023–Nå]
- Leder teknisk utvikling av ekstruderte aluminiumsprofiler for transport\- og byggsektoren
- Ansvarlig for konstruksjonsberegninger, toleranseanalyser og validering av nye produkter
- Koordinerer tverrfaglige prosjekter mellom produksjon, kvalitet og leverandører
- Driver kontinuerlig forbedring av produksjonsprosesser med vekt på energibesparelse
#strong[Nøkkelord]: Aluminium, Produktutvikling, FEM, Kvalitetssikring, Lean

#resume-subheading[Maskiningeniør][#link("https://www.akersolutions.com")[https\:\/\/www\.akersolutions\.com]][Aker Solutions AS][aug. 2020–des. 2022]
- Konstruerte og dimensjonerte mekaniske komponenter for undervannsinstallasjoner
- Utførte FEM\- og utmattingsanalyser i samsvar med NORSOK\-standarder
- Utarbeidet tekniske tegninger, spesifikasjoner og endringsnotater
- Deltok i verifikasjon, testing og oppfølging av leverandører
#strong[Nøkkelord]: Undervannsteknologi, FEM\-analyse, NORSOK, SolidWorks, Teknisk dokumentasjon

#resume-subheading[Prosjektingeniør (sommerjobb)][#link("https://www.sintef.no/energi")[https\:\/\/www\.sintef\.no\/energi]][SINTEF Energi AS][juni 2019–aug. 2019]
- Analyserte energibruk i industrielle prosesser og foreslo forbedringstiltak
- Utarbeidet simuleringsmodeller for varmegjenvinning i pilotanlegg
- Presenterte resultater for prosjektteam og eksterne samarbeidspartnere
#strong[Nøkkelord]: Energiøkonomi, Varmegjenvinning, Simulering
]

= Språk
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Norsk]: Morsmål eller tospråklig nivå], [#strong[Nøkkelord]: Morsmål, Bokmål])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engelsk]: Fullt profesjonelt nivå], [#strong[Nøkkelord]: C1, Teknisk engelsk])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tysk]: Grunnleggende nivå], [#strong[Nøkkelord]: A2])
]

= Ferdigheter
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Mekanisk konstruksjon]: Ekspert], [#strong[Nøkkelord]: SolidWorks, Siemens NX, AutoCAD, Teknisk tegning, Toleranseanalyse])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Beregning og analyse]: Avansert], [#strong[Nøkkelord]: ANSYS Mechanical, Abaqus, FEM\-analyse, Utmattingsanalyse, CFD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Materialer og produksjon]: Avansert], [#strong[Nøkkelord]: Aluminium, Stål, Kompositter, Additiv tilvirkning, Lean produksjon])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prosjektledelse]: Avansert], [#strong[Nøkkelord]: Tverrfaglig samarbeid, Teknisk dokumentasjon, Kvalitetssikring, Risikostyring, Bærekraftig design])
]

= Utmerkelser
#resume-pad[
#resume-subheading[Beste masteroppgave i maskinteknikk][][NTNU][juni 2022]
Tildelt for masteroppgaven om lette aluminiumskonstruksjoner for offshore\-applikasjoner\.
]

= Sertifikater
#resume-pad[
#resume-subheading[Certified SolidWorks Professional][#link("https://www.solidworks.com/certification")[https\:\/\/www\.solidworks\.com\/certification]][Dassault Systèmes][mars 2021]

#resume-subheading[PMP – Project Management Professional][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][nov. 2023]
]

= Publikasjoner
#resume-pad[
#resume-subheading[Energieffektivisering av varmepumper i norske næringsbygg][#link("https://www.norskenergi.no/")[https\:\/\/www\.norskenergi\.no\/]][Norsk Energi][sep. 2021]
- Undersøker hvordan varmepumper kan redusere energibehovet i næringsbygg
- Presenterer beregningsmodeller og anbefalte tiltak for eksisterende bygningsmasse
- Diskuterer lønnsomhet og bærekraftige installasjonsløsninger
]

= Prosjekter
#resume-pad[
#resume-subheading[Bærekraftig lettvektramme for offshore][#link("https://www.ntnu.no/prosjekter/lettvektramme")[https\:\/\/www\.ntnu\.no\/prosjekter\/lettvektramme]][Utvikling av en lettvektsramme i aluminium for offshore\-applikasjoner\.][jan. 2021–juni 2022]
- Designet og optimaliserte rammekonstruksjonen med hensyn til styrke og vekt
- Gjennomførte FEM\-analyse og utmattingsvurdering av kritiske knutepunkter
- Validerte konstruksjonen gjennom laboratorietester og dokumenterte resultatene
#strong[Nøkkelord]: Lettvektsdesign, Aluminium, FEM\-analyse, Offshore, Bærekraft

#resume-subheading[Energioppgradering av pilotanlegg][#link("https://www.sintef.no/prosjekter/energioppgradering")[https\:\/\/www\.sintef\.no\/prosjekter\/energioppgradering]][Analyse og forbedring av varmegjenvinning i et industrielt pilotanlegg\.][juni 2019–aug. 2019]
- Kartla energistrømmer og identifiserte tapskilder i prosessen
- Modellerte varmegjenvinning og foreslo tiltak med god lønnsomhet
- Bidro til teknisk rapport og anbefalinger for videre drift
#strong[Nøkkelord]: Varmegjenvinning, Energianalyse, Simulering
]

= Interesser
#resume-pad[
#strong[Friluftsliv]: Fjellturer, Langrenn, Kajakk

#strong[Teknologi]: 3D\-printing, Arduino, Bærekraftig energi

#strong[Musikk]: Gitar, Kor
]

= Frivillig arbeid
#resume-pad[
#resume-subheading[Fagansvarlig for bærekraft][#link("https://www.tekna.no")[https\:\/\/www\.tekna\.no]][Tekna – Teknisk\-naturvitenskapelig forening][sep. 2021–Nå]
- Arrangerer faglige møter og workshops om bærekraftig ingeniørpraksis
- Bidrar med faglige innspill til studenter og nyutdannede ingeniører
- Koordinerer samarbeid mellom lokale bedrifter og foreningen
]