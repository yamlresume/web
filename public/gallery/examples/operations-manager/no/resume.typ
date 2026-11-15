#set document(
  title: "Marte Solberg - Operasjonssjef med erfaring fra logistikk, HMS og forbedringsarbeid",
  author: "Marte Solberg",
  keywords: "Operasjonsledelse, Logistikk og verdikjede, Forbedringsarbeid, Økonomi og styring, Prosjektledelse, Systemer og verktøy",
  description: "Résumé of Marte Solberg",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Marte Solberg]] #v(-0.2em)

#text(size: 1.44em)[Operasjonssjef med erfaring fra logistikk, HMS og forbedringsarbeid]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+47 928 45 112")[\+47 928 45 112] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:marte.solberg@example.no")[marte\.solberg\@example\.no] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.martesolberg.no")[https\:\/\/www\.martesolberg\.no]

Storgata 18, Oslo, Oslo, Norge, 0155

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marte-solberg")[marte\-solberg]
]

= Grunnleggende informasjon

#resume-pad[
- Erfaren operasjonssjef med over 10 års ledererfaring fra logistikk, service og industri\.
- Dokumentert resultat med å øke driftsregularitet, redusere kostnader og bygge velfungerende tverrfaglige team\.
- Sterk i KPI\-oppfølging, budsjettansvar, HMS, kontinuerlig forbedring og samarbeid med leverandører og kunder\.
- Strukturert og løsningsorientert leder som trives med å gjøre komplekse driftsprosesser enkle, målbare og skalerbare\.
]

= Utdanning
#resume-pad[
#resume-subheading[Handelshøyskolen BI][#link("https://www.bi.no")[https\:\/\/www\.bi\.no]][Master, Strategisk ledelse, Poeng: 4,3\/5][aug. 2014–juni 2016]
- Fordypning i strategisk styring, operativ excellence og endringsledelse\.
- Gjennomførte casebaserte prosjekter med fokus på kostnadsstyring og prosessforbedring\.
- Utviklet analyse\- og beslutningsgrunnlag for ledergrupper i praksisnære prosjekter\.
#strong[Kurs]: Strategisk økonomistyring, Operasjons\- og kvalitetsledelse, Prosjektledelse, Organisasjon og ledelse, Forhandlinger og beslutninger, Bærekraftig verdikjedestyring

#resume-subheading[Universitetet i Oslo][#link("https://www.uio.no")[https\:\/\/www\.uio\.no]][Bachelor, Økonomi og administrasjon, Poeng: 4,1\/5][aug. 2011–juni 2014]
- Solid grunnlag i økonomi, analyse og bedriftsadministrasjon\.
- Arbeidet med kvantitative analyser og presentasjon av beslutningsgrunnlag\.
- Deltok aktivt i studentprosjekter om effektiv ressursbruk og organisasjonsutvikling\.
#strong[Kurs]: Mikroøkonomi, Bedriftsøkonomi, Statistikk og analyse, Markedsføring, Regnskap og budsjettering
]

= Arbeidserfaring
#resume-pad[
#resume-subheading[Operasjonssjef][#link("https://www.nordviklogistikk.no")[https\:\/\/www\.nordviklogistikk\.no]][Nordvik Logistikk AS][jan. 2021–Nå]
- Leder den daglige driften for et terminal\- og distribusjonsnett med 85 ansatte og årlig omsetning på 420 MNOK\.
- Ansvar for produksjonsplanlegging, bemanning, HMS, kvalitet og leverandøroppfølging på tvers av fem lokasjoner\.
- Reduserte avvikskostnader med 18 prosent og økte leveringspresisjonen fra 92 til 97 prosent på 18 måneder\.
- Innførte ukentlig driftsdialog med KPI\-er for sikkerhet, kvalitet, kostnad og trivsel\.
- Bygget lederteam og innførte kompetanseplan som reduserte gjennomtrekk blant operativt personell med 25 prosent\.
#strong[Nøkkelord]: Driftsledelse, Logistikk, HMS, KPI\-oppfølging, Bemanningsplanlegging, Kontinuerlig forbedring, Budsjettansvar, Leverandøroppfølging

#resume-subheading[Driftsleder][#link("https://www.fjordservice.no")[https\:\/\/www\.fjordservice\.no]][Fjordservice Gruppen AS][mars 2017–des. 2020]
- Ledet drift av kundeservice og feltoperasjoner med 45 ansatte og ansvar for døgnkontinuerlig bemanning\.
- Utviklet bemanningsmodell som reduserte overtidsbruk med 22 prosent og forbedret responstid med 15 prosent\.
- Drev systematisk HMS\-arbeid, gjennomførte risikovurderinger og fulgte opp avvik og læringstiltak\.
- Forhandlet rammeavtaler med underleverandører og oppnådde årlige besparelser på 6,5 MNOK\.
#strong[Nøkkelord]: Driftsstyring, Kundeservice, Bemanning, HMS, Risikostyring, Rammeavtaler, Responstid

#resume-subheading[Produksjonsleder][#link("https://www.osloindustriservice.no")[https\:\/\/www\.osloindustriservice\.no]][Oslo Industriservice AS][aug. 2013–feb. 2017]
- Ledet produksjon og vedlikehold for en fabrikk med 30 ansatte og to skift\.
- Implementerte Lean\-prinsipper og standardiserte arbeidsprosesser, noe som økte OEE fra 71 til 82 prosent\.
- Hadde budsjettansvar for drift, vedlikehold og innkjøp på 55 MNOK\.
- Samarbeidet med fagforeninger og verneombud for å sikre god medvirkning og lavt sykefravær\.
#strong[Nøkkelord]: Produksjonsledelse, Lean, Vedlikehold, OEE, Budsjett, Arbeidsmiljø
]

= Språk
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Norsk]: Morsmål eller tospråklig nivå], [#strong[Nøkkelord]: Morsmål])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engelsk]: Fullt profesjonelt nivå], [#strong[Nøkkelord]: C1, Forretningsengelsk])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tysk]: Begrenset arbeidskunnskap], [#strong[Nøkkelord]: Grunnleggende])
]

= Ferdigheter
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Operasjonsledelse]: Ekspert], [#strong[Nøkkelord]: Driftsstyring, Bemanningsplanlegging, KPI\-oppfølging, HMS, Målstyring, Lederutvikling])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Logistikk og verdikjede]: Avansert], [#strong[Nøkkelord]: Lagerstyring, Transportplanlegging, Innkjøp, Leverandøroppfølging, Leveringspresisjon, Varelagerstyring])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Forbedringsarbeid]: Avansert], [#strong[Nøkkelord]: Lean, Six Sigma, Prosesskartlegging, Rotårsaksanalyse, Standardisering, Kontinuerlig forbedring])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Økonomi og styring]: Avansert], [#strong[Nøkkelord]: Budsjettering, Kostnadskontroll, Avviksanalyse, Investeringskalkyler, Rapportering])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prosjektledelse]: Avansert], [#strong[Nøkkelord]: Prosjektstyring, Endringsledelse, Interessentanalyse, Risikostyring, Gevinstrealisering])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Systemer og verktøy]: Viderekommen], [#strong[Nøkkelord]: SAP, Power BI, Excel, Microsoft Dynamics 365, Jira, SharePoint])
]

= Utmerkelser
#resume-pad[
#resume-subheading[Årets operasjonsleder][][Nordvik Logistikk AS][nov. 2023]
- Tildelt for dokumenterte resultater innen driftsforbedring, lederutvikling og HMS\.
- Anerkjent for å ha bygget et sterkt tverrfaglig lederteam og økt medarbeidertilfredsheten\.

#resume-subheading[Forbedringsprisen][][Fjordservice Gruppen AS][mai 2019]
- Tildelt for et vellykket forbedringsprosjekt som reduserte responstid og overtidsbruk\.
- Prosjektet ble trukket frem som beste praksis for tverrfaglig driftsutvikling\.
]

= Sertifikater
#resume-pad[
#resume-subheading[Lean Six Sigma Green Belt][#link("https://www.norskleansenter.no")[https\:\/\/www\.norskleansenter\.no]][Norsk Lean Senter][mai 2022]

#resume-subheading[PRINCE2 Foundation][#link("https://www.peoplecert.org")[https\:\/\/www\.peoplecert\.org]][PeopleCert][sep. 2021]

#resume-subheading[HMS\-kurs for ledere][#link("https://www.arbeidsmiljosenteret.no")[https\:\/\/www\.arbeidsmiljosenteret\.no]][Arbeidsmiljøsenteret][feb. 2020]
]

= Prosjekter
#resume-pad[
#resume-subheading[Digital bemanningsplanlegging][#link("https://www.nordviklogistikk.no/prosjekter/digital-bemanning")[https\:\/\/www\.nordviklogistikk\.no\/prosjekter\/digital\-bemanning]][Innføring av digitalt bemanningsverktøy for fem terminaler med mål om bedre ressursutnyttelse og lavere overtid\.][feb. 2022–aug. 2022]
- Kartla bemanningsbehov og etablerte felles planleggingsprosess på tvers av lokasjoner\.
- Innførte verktøy og opplærte 40 ledere og planleggere i nye rutiner\.
- Oppnådde 14 prosent lavere overtidsbruk og 9 prosent høyere produktivitet i pilotperioden\.
#strong[Nøkkelord]: Bemanningsplanlegging, Digitalisering, Prosessforbedring, Endringsledelse

#resume-subheading[Lean\-program for lageravdeling][#link("https://www.fjordservice.no/prosjekter/lean-lager")[https\:\/\/www\.fjordservice\.no\/prosjekter\/lean\-lager]][Forbedringsprogram for lager og utlasteri med fokus på flyt, standardisering og sikkerhet\.][mars 2018–nov. 2018]
- Gjennomførte verdistrømsanalyse og identifiserte flaskehalser i vareflyten\.
- Standardiserte arbeidsinstrukser og innførte tavlemøter for daglig styring\.
- Reduserte gjennomsnittlig ordrebehandlingstid med 19 prosent og HMS\-avvik med 30 prosent\.
#strong[Nøkkelord]: Lean, Verdistrømsanalyse, Standardisering, HMS, Lagerstyring
]

= Interesser
#resume-pad[
#strong[Friluftsliv]: Fjellturer, Padling, Langrenn, Sykkel

#strong[Styrearbeid og mentorering]: Mentorordning, Næringslivsforum, Foreldreutvalg
]

= Frivillig arbeid
#resume-pad[
#resume-subheading[Mentor for unge ledere][#link("https://www.oslonaring.no")[https\:\/\/www\.oslonaring\.no]][Oslo Næringsforening][sep. 2019–Nå]
- Mentorerer unge ledere i operativ drift, prioritering og lederutvikling\.
- Bidrar i fagforum for bærekraftig logistikk og kompetanseutvikling\.

#resume-subheading[Operativ frivillig][#link("https://www.folkehjelp.no")[https\:\/\/www\.folkehjelp\.no]][Norsk Folkehjelp][apr. 2015–des. 2021]
- Deltok i beredskapsøvelser og støtteoppdrag ved større arrangementer i Oslo\.
- Gjennomførte førstehjelpskurs og bidro til trygg gjennomføring av lokale arrangementer\.
]