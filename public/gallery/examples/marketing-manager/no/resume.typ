#set document(
  title: "Marianne Strand - Markedssjef | Merkevarebygging, digital vekst og datadrevet markedsføring",
  author: "Marianne Strand",
  keywords: "Merkevare og strategi, Digital markedsføring, Analyse og innsikt, Ledelse og samarbeid",
  description: "Résumé of Marianne Strand",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Marianne Strand]] #v(-0.2em)

#text(size: 1.44em)[Markedssjef | Merkevarebygging, digital vekst og datadrevet markedsføring]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+47 913 45 782")[\+47 913 45 782] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:marianne.strand@nordmark.no")[marianne\.strand\@nordmark\.no] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.mariannestrand.no")[https\:\/\/www\.mariannestrand\.no]

Drammensveien 112, Oslo, Oslo, Norge, 0273

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/mariannestrand")[mariannestrand] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@mariannestrand")[mariannestrand] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M224.3 141a115 115 0 1 0 -.6 230 115 115 0 1 0 .6-230zm-.6 40.4a74.6 74.6 0 1 1 .6 149.2 74.6 74.6 0 1 1 -.6-149.2zm93.4-45.1a26.8 26.8 0 1 1 53.6 0 26.8 26.8 0 1 1 -53.6 0zm129.7 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM399 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.instagram.com/marianne.strand")[marianne\.strand]
]

= Grunnleggende informasjon

#resume-pad[
Markedssjef med ni års erfaring fra varehandel, teknologi og forbruksvarer\. Jeg bygger merkevarer som vokser både i markedet og på bunnlinjen, og jeg trives best i skjæringspunktet mellom kommersiell strategi, kreativt håndverk og tall\.

- Leder tverrfaglige team på 8\-12 personer innen merkevare, innhold, SoMe, SEO\/SEA og markedskommunikasjon
- Dokumenterte resultater\: 63 % vekst i organiske besøk, 41 % lavere kundeanskaffelseskost og 2,4x ROAS på betalte kanaler
- Datadrevet arbeidsmetodikk med GA4, Looker Studio, A\/B\-testing og budsjettallokering basert på markedsmiksmodeller
- Budsjettansvar opp mot 28 MNOK, med tett samarbeid med salg, produkt, kundeservice og konsernledelse
]

= Utdanning
#resume-pad[
#resume-subheading[Norges Handelshøyskole][#link("https://www.nhh.no")[https\:\/\/www\.nhh\.no]][Master, Strategi og ledelse, Poeng: A\+][aug. 2013–juni 2015]
- Fordypning i merkevarestrategi og kommersiell styring, med masteroppgave om kanalmiks i norsk varehandel
- Gjennomførte tre praksisbaserte casestudier for nordiske virksomheter i samarbeid med næringslivet
- Ble valgt til studenttillitsvalgt og koordinerte karrieredagen for 40 arbeidsgivere
#strong[Kurs]: Markedsføringsledelse, Merkevarestrategi, Forbrukeratferd og beslutningspsykologi, Kvantitativ metode og markedsanalyse, Digital forretningsmodellering

#resume-subheading[Handelshøyskolen BI][#link("https://www.bi.no")[https\:\/\/www\.bi\.no]][Bachelor, Markedsføring og internasjonalisering, Poeng: B\+][aug. 2010–juni 2013]
- Utvekslingsopphold ett semester ved Universitetet i Amsterdam innen digital markedsføring
- Prosjektleder for studentforeningens sponsorprogram, med ansvar for 1,2 MNOK i sponsorinntekter
#strong[Kurs]: Markedsføringsledelse, Salgsledelse og forhandlingsteknikk, Statistikk og økonomistyring, Internasjonal markedsføring
]

= Arbeidserfaring
#resume-pad[
#resume-subheading[Markedssjef][#link("https://www.nordmark.no")[https\:\/\/www\.nordmark\.no]][Nordmark Retail AS][mars 2021–Nå]
- Leder markedsavdelingen med 11 medarbeidere og budsjettansvar på 28 MNOK fordelt på merkevare, ytelsesmarkedsføring og CRM
- Omdefinerte merkevareplattformen og lanserte ny visuell identitet, noe som løftet uhjulpet kjennskap fra 24 % til 39 % på to år
- Bygget opp et datadrevet kanalhierarki som reduserte kundeanskaffelseskost med 41 % og økte ROAS fra 1,6x til 2,4x
- Etablerte et lojalitetsprogram med 145 000 medlemmer og 18 % høyere kjøpsfrekvens blant aktive medlemmer
- Innførte månedlig markedscockpit i Looker Studio som beslutningsgrunnlag for ledergruppen
- Fungerer som nærmeste leder for fire spesialister og driver kompetanseutvikling og rekruttering i avdelingen
#strong[Nøkkelord]: Merkevarestrategi, Budsjettansvar, Teamledelse, Datadrevet markedsføring, CRM og lojalitet

#resume-subheading[Senior digital markedssjef][#link("https://www.fjordlys.no")[https\:\/\/www\.fjordlys\.no]][Fjordlys Teknologi AS][sep. 2018–feb. 2021]
- Ansvarlig for betalte og organiske kanaler for et abonnementsprodukt med 220 000 aktive brukere
- Skalerte innholdsmarkedsføring fra 4 til 30 publiserte artikler i måneden, med 63 % vekst i organisk trafikk
- Ledet konverteringsoptimalisering på tvers av landingssider og onboarding, med 27 % høyere trial\-til\-betalt\-rate
- Satte opp attribusjonsmodell i GA360 og flyttet budsjett fra display til søk og video basert på inkrementelle tester
- Jobbet smidig i tverrfaglige produktteam med ukentlig eksperimentering og delt resultatansvar med produkt og salg
#strong[Nøkkelord]: SEO og SEA, Konverteringsoptimalisering, Innholdsmarkedsføring, GA4 og attribusjon, Vekststrategi

#resume-subheading[Markedskonsulent][#link("https://www.byggogbo.no")[https\:\/\/www\.byggogbo\.no]][Bygg og Bo Norge AS][aug. 2015–aug. 2018]
- Planla og gjennomførte 14 kampanjer i året på tvers av butikk, netthandel og lokale medier
- Forvaltet mediebyrårelasjonen og budsjetter på 6 MNOK med månedlig resultatrapportering
- Bygget opp selskapets første e\-postprogram med segmentering, som økte gjenkjøp med 12 %
#strong[Nøkkelord]: Kampanjeplanlegging, Mediebyrå, E\-postmarkedsføring
]

= Språk
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Norsk]: Morsmål eller tospråklig nivå], [#strong[Nøkkelord]: Morsmål])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engelsk]: Fullt profesjonelt nivå], [#strong[Nøkkelord]: TOEFL 112, Forretningsforhandlinger])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tysk]: Begrenset arbeidskunnskap], [#strong[Nøkkelord]: Daglig kommunikasjon])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spansk]: Grunnleggende nivå], [#strong[Nøkkelord]: Grunnleggende])
]

= Ferdigheter
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Merkevare og strategi]: Ekspert], [#strong[Nøkkelord]: Merkevareposisjonering, Markedsstrategi, Kundeinnsikt, Budsjettstyring])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Digital markedsføring]: Avansert], [#strong[Nøkkelord]: SEO og SEA, Meta Ads, Programmatisk kjøp, Marketing automation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analyse og innsikt]: Avansert], [#strong[Nøkkelord]: GA4, Looker Studio, A\/B\-testing, Attribusjonsmodeller])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Ledelse og samarbeid]: Ekspert], [#strong[Nøkkelord]: Teamledelse, Prosjektledelse, Tverrfaglig arbeid, Leverandørstyring])
]

= Utmerkelser
#resume-pad[
#resume-subheading[Årets markedssjef][][Norsk Markedsføringsforening][nov. 2023]
Tildelt for dokumentert vekst i merkevarekjennskap og lønnsomhet hos Nordmark Retail AS, samt for sterk utvikling av eget markedsteam\.

#resume-subheading[Gullblyanten \- sølv i kategorien kampanje][][Anfo][apr. 2022]
Priset for kampanjen \"Hjem for enhver sesong\", som økte netthandelsomsetningen med 22 % i løpet av kampanjeperioden\.
]

= Sertifikater
#resume-pad[
#resume-subheading[Google Analytics 4 Certification][#link("https://skillshop.exceedlms.com/")[https\:\/\/skillshop\.exceedlms\.com\/]][Google Skillshop][mars 2023]

#resume-subheading[HubSpot Content Marketing Certification][#link("https://academy.hubspot.com/")[https\:\/\/academy\.hubspot\.com\/]][HubSpot Academy][jan. 2022]

#resume-subheading[Meta Blueprint \- Media Buying Professional][#link("https://www.facebook.com/business/learn")[https\:\/\/www\.facebook\.com\/business\/learn]][Meta][sep. 2021]
]

= Publikasjoner
#resume-pad[
#resume-subheading[Derfor vinner datadrevet merkevarebygging][#link("https://kampanje.com/")[https\:\/\/kampanje\.com\/]][Kampanje][feb. 2023]
- Kronikk om hvordan norske merkevarer kan kombinere merkevarebygging og ytelsesmarkedsføring i samme budsjettramme
- Presenterer en enkel modell for å måle inkrementell effekt av merkevareinvesteringer

#resume-subheading[Lojalitet i norsk varehandel \- fra poeng til relasjon][#link("https://www.magma.no/")[https\:\/\/www\.magma\.no\/]][Magma \- Econas tidsskrift for økonomi og ledelse][juni 2021]
- Fagartikkel basert på egne data fra 145 000 medlemmer i et lojalitetsprogram
- Viser sammenhengen mellom personalisert kommunikasjon og kjøpsfrekvens
]

= Referanser
#resume-pad[
#resume-subheading[Henrik Aalborg][Kommersiell direktør, Nordmark Retail AS][henrik\.aalborg\@nordmark\.no][\+47 901 22 348]
Marianne er en av de mest komplette markedssjefene jeg har jobbet med\. Hun kombinerer kreativ tyngde med kommersiell forståelse, og hun har bygget et team som leverer jevnt på høyt nivå\.

#resume-subheading[Ingvild Krogh][Tidligere markedsdirektør, Fjordlys Teknologi AS][ingvild\.krogh\@fjordlystek\.no][\+47 926 78 019]
I tre år drev Marianne vår betalte og organiske vekststrategi\. Hun er analytisk sterk, tar beslutninger på kort varsel og følger alltid opp med tydelige resultater\.
]

= Prosjekter
#resume-pad[
#resume-subheading[Nordmark Lojalitetsprogram][#link("https://www.nordmark.no/lojal")[https\:\/\/www\.nordmark\.no\/lojal]][Lojalitetsprogram med 145 000 medlemmer for en norsk varehandelskjede][jan. 2022–sep. 2023]
- Definerte medlemsnivåer, opptjeningslogikk og personalisert kommunikasjon i samarbeid med CRM\-leverandør
- Økte andelen aktive medlemmer fra 38 % til 61 % gjennom onboarding\- og reaktiveringsflyter
- Løftet kjøpsfrekvensen blant medlemmer med 18 % sammenlignet med ikke\-medlemmer
#strong[Nøkkelord]: Lojalitetsprogram, CRM, Segmentering, Personalisering

#resume-subheading[Fjordlys Merkevareløft][#link("https://www.fjordlys.no/om-oss")[https\:\/\/www\.fjordlys\.no\/om\-oss]][Reposisjonering og ny visuell identitet for en nordisk teknologivirksomhet][mars 2019–nov. 2020]
- Ledet prosessen fra innsiktsarbeid og posisjonering til ny visuell identitet og tonality
- Rullet ut nytt brand på tvers av produkt, nettside, SoMe og annonsering i tre markeder
- Resulterte i 29 % høyere merkevarepreferanse i målgruppen 25\-45 år
#strong[Nøkkelord]: Reposisjonering, Visuell identitet, Merkevareinnsikt
]

= Interesser
#resume-pad[
#strong[Friluftsliv]: Fjellturer, Langrenn, Padling

#strong[Mat og matkultur]: Matlaging, Vin, Reise

#strong[Litteratur]: Sakprosa, Romaner
]

= Frivillig arbeid
#resume-pad[
#resume-subheading[Mentor i mentorprogrammet][#link("https://www.markedsforing.no")[https\:\/\/www\.markedsforing\.no]][Norsk Markedsføringsforening][sep. 2019–Nå]
- Veileder yngre markedsførere i karrierevalg, posisjonering og faglig utvikling
- Foredrar på årskonferansen om datadrevet merkevarebygging og kanalmiks
- Bidrar i faggruppen for merkevare og innsikt med arrangementer fire ganger i året

#resume-subheading[Frivillig markedsfører][#link("https://www.rodekors.no")[https\:\/\/www\.rodekors\.no]][Oslo Røde Kors][feb. 2018–des. 2021]
- Utviklet lokalforeningens kommunikasjonsplan og sosiale medier\-strategi på frivillig basis
- Rekrutterte 46 nye frivillige gjennom kampanjen \"En time er nok\"
- Prosjektleder for den årlige innsamlingsaksjonen, med 780 000 kroner innsamlet i 2020
]