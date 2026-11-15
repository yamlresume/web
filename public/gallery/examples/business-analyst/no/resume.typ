#set document(
  title: "Ingrid Kvamme - Forretningsanalytiker med lidenskap for datadrevet beslutningstaking",
  author: "Ingrid Kvamme",
  keywords: "Forretningsanalyse, Dataanalyse, Prosjektledelse, Kommunikasjon",
  description: "Résumé of Ingrid Kvamme",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Ingrid Kvamme]] #v(-0.2em)

#text(size: 1.44em)[Forretningsanalytiker med lidenskap for datadrevet beslutningstaking]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+47 401 23 456")[\+47 401 23 456] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ingrid.kvamme@example.no")[ingrid\.kvamme\@example\.no] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.ingridkvamme.no")[https\:\/\/www\.ingridkvamme\.no]

Storgata 12, Oslo, Oslo, Norge, 0155

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/ingridkvamme")[ingridkvamme] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@ingridkvamme")[ingridkvamme]
]

= Grunnleggende informasjon

#resume-pad[
- Forretningsanalytiker med over 6 års erfaring fra finans\- og energibransjen
- Sterk kompetanse innen kravanalyse, prosesskartlegging og datadrevet beslutningsstøtte
- Erfaren med å lede interessentworkshops og oversette forretningsbehov til tekniske løsninger
- Dokumentert evne til å levere innsikter som reduserer kostnader og øker kundetilfredsheten
- Trives i tverrfaglige team og jobber strukturert med både strategi og detaljer
]

= Utdanning
#resume-pad[
#resume-subheading[Norges Handelshøyskole][#link("https://www.nhh.no")[https\:\/\/www\.nhh\.no]][Master, Økonomi og administrasjon, Poeng: 3\.8][aug. 2014–juni 2016]
- Fordypet meg i strategisk analyse og datadrevet beslutningstaking
- Gjennomførte masteroppgave om digitalisering i finanssektoren
- Oppnådde toppkarakterer i fagene forretningsanalyse og prosjektledelse
#strong[Kurs]: Strategisk analyse, Finansregnskap, Markedsanalyse, Statistikk for økonomer, Prosjektledelse, Forretningsanalyse, Datamodellering, Beslutningsstøtte

#resume-subheading[Universitetet i Bergen][#link("https://www.uib.no")[https\:\/\/www\.uib\.no]][Bachelor, Samfunnsøkonomi, Poeng: 3\.6][aug. 2011–juni 2014]
- Bygget et solid fundament i økonomisk teori og statistisk metode
- Deltok i studentprosjekt om bærekraftig forretningsmodellering
#strong[Kurs]: Mikroøkonomi, Makroøkonomi, Statistikk, Matematikk for økonomer, Bedriftsøkonomi, Samfunnsanalyse
]

= Arbeidserfaring
#resume-pad[
#resume-subheading[Senior forretningsanalytiker][#link("https://www.equinor.com")[https\:\/\/www\.equinor\.com]][Equinor ASA][mars 2022–Nå]
- Leder kravanalyse for digitale løsninger i fornybar divisjon
- Kartlegger og forbedrer forretningsprosesser på tvers av forretningsområder
- Utvikler dashboards i Power BI som gir ledelsen sanntidsinnsikt
- Fasiliterer workshops med interessenter for å prioritere krav og gevinster
- Samarbeider tett med utviklingsteam i smidige leveranser
#strong[Nøkkelord]: Kravanalyse, Prosessforbedring, Power BI, Agile, Interessenthåndtering

#resume-subheading[Forretningsanalytiker][#link("https://www.dnb.no")[https\:\/\/www\.dnb\.no]][DNB Bank ASA][aug. 2019–feb. 2022]
- Analyserte kunde\- og transaksjonsdata for å identifisere forbedringsområder
- Utarbeidet kravspesifikasjoner for digitale banktjenester
- Gjennomførte brukerintervjuer og kartla kundereiser
- Bygget SQL\-spørringer og rapporter for produktteam
- Bidro til å redusere manuelt arbeid med 30 % i kredittprosessen
#strong[Nøkkelord]: SQL, Kundereise, Kravspesifikasjon, Dataanalyse, Bank

#resume-subheading[Junior forretningsanalytiker][#link("https://www.statkraft.no")[https\:\/\/www\.statkraft\.no]][Statkraft AS][aug. 2016–juli 2019]
- Støttet analyse av markedsdata og energipriser
- Laget rapporter og presentasjoner for ledelsen
- Deltok i prosjekt med implementering av ny innkjøpsløsning
- Dokumenterte forretningsprosesser og identifiserte flaskehalser
#strong[Nøkkelord]: Markedsanalyse, Rapportering, Prosesskartlegging, Excel
]

= Språk
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Norsk]: Morsmål eller tospråklig nivå], [#strong[Nøkkelord]: Morsmål])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engelsk]: Fullt profesjonelt nivå], [#strong[Nøkkelord]: TOEFL 105])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tysk]: Begrenset arbeidskunnskap], [#strong[Nøkkelord]: Goethe B1])
]

= Ferdigheter
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Forretningsanalyse]: Avansert], [#strong[Nøkkelord]: Kravanalyse, Prosesskartlegging, Interessentanalyse, Gap\-analyse, Gevinstrealisering])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Dataanalyse]: Avansert], [#strong[Nøkkelord]: SQL, Power BI, Tableau, Excel, Python])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prosjektledelse]: Viderekommen], [#strong[Nøkkelord]: Agile, Scrum, Kanban, Jira, Confluence])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Kommunikasjon]: Avansert], [#strong[Nøkkelord]: Workshopfasilitering, Presentasjoner, Dokumentasjon, Forretningsnorsk, Engelsk])
]

= Utmerkelser
#resume-pad[
#resume-subheading[Årets analytiker][][Den norske dataforening][nov. 2023]
- Tildelt for fremragende arbeid med datadrevet prosessforbedring i Equinor
- Anerkjent for å ha ledet et tverrfaglig prosjekt som reduserte rapporteringstiden med 40 %
]

= Sertifikater
#resume-pad[
#resume-subheading[Certified Business Analysis Professional (CBAP)][#link("https://www.iiba.org/certification/cbap/")[https\:\/\/www\.iiba\.org\/certification\/cbap\/]][IIBA][sep. 2021]

#resume-subheading[Microsoft Certified\: Power BI Data Analyst Associate][#link("https://learn.microsoft.com/en-us/certifications/power-bi-data-analyst-associate/")[https\:\/\/learn\.microsoft\.com\/en\-us\/certifications\/power\-bi\-data\-analyst\-associate\/]][Microsoft][jan. 2023]
]

= Publikasjoner
#resume-pad[
#resume-subheading[Datadrevet forretningsutvikling i norske banker][#link("https://www.magma.no/datadrevet-forretningsutvikling-i-norske-banker")[https\:\/\/www\.magma\.no\/datadrevet\-forretningsutvikling\-i\-norske\-banker]][Magma – Econas tidsskrift for økonomi og ledelse][juni 2021]
- Artikkelen utforsker hvordan banker kan bruke dataanalyse til å forbedre kundeopplevelsen
- Presenterer funn fra et samarbeidsprosjekt mellom DNB og NHH
- Diskuterer utfordringer og muligheter ved datadrevet forretningsutvikling
]

= Prosjekter
#resume-pad[
#resume-subheading[Kundeinnsikt 360][][Et analyseprosjekt for å samle kundeinnsikt på tvers av forretningsområder][jan. 2023–des. 2023]
- Ledet kartlegging av datakilder og definerte nøkkeltall for kundeopplevelse
- Utviklet et Power BI\-dashboard som samlet innsikt fra fem forretningsområder
- Fasiliterte workshoper med ledelsen for å prioritere tiltak basert på innsikten
#strong[Nøkkelord]: Kundereise, Dataplattform, Power BI, Innsikt

#resume-subheading[Prosesskartlegging av kredittflyt][][Kartlegging og forenkling av kredittprosessen i DNB][feb. 2020–okt. 2020]
- Dokumenterte nåværende prosess og identifiserte flaskehalser og manuelle trinn
- Foreslo automatiseringstiltak som reduserte behandlingstiden med 25 %
- Presenterte anbefalinger for ledelsen og fulgte opp implementering
#strong[Nøkkelord]: Prosessforbedring, Lean, Kreditt, Automatisering
]

= Interesser
#resume-pad[
#strong[Friluftsliv]: Fjellturer, Ski, Fiske, Padling

#strong[Musikk]: Gitar, Konserter, Jazz
]

= Frivillig arbeid
#resume-pad[
#resume-subheading[Mentor][#link("https://www.ue.no")[https\:\/\/www\.ue\.no]][Ungt Entreprenørskap Norge][sep. 2020–Nå]
- Veileder unge gründere i forretningsmodellering og markedsanalyse
- Deltar i dommerpanel for lokale konkurranser
- Bidrar til å styrke entreprenørskapskompetansen blant ungdom
]