#set document(
  title: "Sanne de Vries - Operations Manager met focus op logistiek en procesverbetering",
  author: "Sanne de Vries",
  keywords: "Operationeel Management, Supply Chain, Lean & Six Sigma, Data & Rapportage, Leiderschap",
  description: "Résumé of Sanne de Vries",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "nl", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Sanne de Vries]] #v(-0.2em)

#text(size: 1.44em)[Operations Manager met focus op logistiek en procesverbetering]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+31 6 1234 5678")[\+31 6 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:sanne.devries@example.nl")[sanne\.devries\@example\.nl] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.sannedevries.nl")[https\:\/\/www\.sannedevries\.nl]

Keizersgracht 123, Amsterdam, Noord\-Holland, Nederland, 1015 CJ

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/sannedevries")[sannedevries]
]

= Basis Informatie

#resume-pad[
Operations Manager met meer dan acht jaar ervaring in logistiek, productie en distributie\. Ik combineer analytisch inzicht met daadkrachtig leiderschap en weet operationele prestaties duurzaam te verbeteren\.

- Stuurt multidisciplinaire teams aan van 10 tot 50 medewerkers en creëert een cultuur van eigenaarschap en continue verbetering\.
- Realiseert aantoonbare resultaten op het gebied van doorlooptijd, kwaliteit, kosten en klanttevredenheid\.
- Werkt datagedreven met KPI\'s, Lean\-principes en moderne plannings\- en magazijnsystemen\.
- Communiceert helder met stakeholders van werkvloer tot directie en vertaalt strategie naar uitvoerbare plannen\.
]

= Opleidingen
#resume-pad[
#resume-subheading[Hogeschool van Amsterdam][#link("https://www.hva.nl")[https\:\/\/www\.hva\.nl]][Bachelor, Logistiek en Economie, Score: 8\.1][sep 2010–jul 2014]
- Opgedaan in operationeel management, logistieke processen en financiële sturing\.
- Afstudeeronderzoek naar voorraadoptimalisatie bij een regionale distributeur\.
#strong[Cursussen]: Supply Chain Management, Operationeel Management, Statistiek voor Logistiek, Projectmanagement, Financieel Management, Transporteconomie

#resume-subheading[Technische Universiteit Delft][#link("https://www.tudelft.nl")[https\:\/\/www\.tudelft\.nl]][Master, Transport, Infrastructuur en Logistiek, Score: 8\.4][sep 2014–jul 2016]
- Verdieping in transportnetwerken, simulatie en ketenregie\.
- Scriptie over datagedreven capaciteitsplanning in de foodsector\.
#strong[Cursussen]: Transportnetwerken, Simulatie van Logistieke Systemen, Ketenregie, Operationeel Onderzoek, Duurzame Mobiliteit
]

= Werkervaring
#resume-pad[
#resume-subheading[Operations Manager][#link("https://www.freshflowdistributie.nl")[https\:\/\/www\.freshflowdistributie\.nl]][FreshFlow Distributie][jan 2021–Heden]
- Leidt een operationeel team van 45 medewerkers verdeeld over planning, magazijn en transport\.
- Verantwoordelijk voor dagelijkse aansturing, veiligheid, kwaliteit en leverbetrouwbaarheid\.
- Realiseerde een daling van 18% in orderdoorlooptijd door herinrichting van pickroutes en planning\.
- Stuurde op KPI\'s zoals OTIF, productiviteit, voorraadnauwkeurigheid en medewerkerstevredenheid\.
- Beheerde een operationeel budget van EUR 6,5 miljoen en realiseerde 7% kostenbesparing\.
#strong[Trefwoorden]: Operationele excellentie, Teamontwikkeling, KPI\-sturing, Budgetverantwoordelijkheid

#resume-subheading[Teamleider Logistiek][#link("https://www.nexuslogistiek.nl")[https\:\/\/www\.nexuslogistiek\.nl]][Nexus Logistiek][mrt 2017–dec 2020]
- Gaf leiding aan drie teamleiders en 30 logistieke medewerkers in een 24\/7 distributiecentrum\.
- Introduceerde dagelijkse huddle\- en visual management\-rituelen voor snellere bijsturing\.
- Verhoogde de forecastnauwkeurigheid met 12% door samenwerking met sales en planning\.
- Begeleidde een verhuizing naar een nieuw magazijn zonder verstoring van klantleveringen\.
#strong[Trefwoorden]: Procesverbetering, Verandermanagement, Leveranciersmanagement, Capaciteitsplanning

#resume-subheading[Procesanalist Operations][#link("https://www.bureauproceskracht.nl")[https\:\/\/www\.bureauproceskracht\.nl]][Bureau Proceskracht][sep 2016–feb 2017]
- Analyseerde order\-, voorraad\- en transportprocessen voor middelgrote productie\- en retailklanten\.
- Vertaalde data naar concrete verbeterplannen en begeleidde teams bij de implementatie\.
- Ontwikkelde KPI\-rapportages en standaardwerkwijzen voor operations en planning\.
#strong[Trefwoorden]: Data\-analyse, Procesoptimalisatie, Rapportages, Standaardisatie
]

= Talen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Nederlands]: Moedertaal of tweetalige vaardigheid], [#strong[Trefwoorden]: Moedertaal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engels]: Volledige professionele vaardigheid], [#strong[Trefwoorden]: C1, IELTS 7\.5])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Duits]: Beperkte werkvaardigheid], [#strong[Trefwoorden]: B1])
]

= Vaardigheden
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Operationeel Management]: Expert], [#strong[Trefwoorden]: Procesoptimalisatie, KPI\-dashboards, Capaciteitsplanning, Budgetbeheer])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Supply Chain]: Geavanceerd], [#strong[Trefwoorden]: Voorraadbeheer, Vraagvoorspelling, Leveranciersmanagement, Magazijnbeheersysteem])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Lean & Six Sigma]: Geavanceerd], [#strong[Trefwoorden]: Waardestroomanalyse, Kaizen, Oorzaakanalyse, DMAIC])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data & Rapportage]: Geavanceerd], [#strong[Trefwoorden]: Excel, Power BI, SQL, Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Leiderschap]: Expert], [#strong[Trefwoorden]: Coaching, Verandermanagement, Stakeholdermanagement, Teamontwikkeling])
]

= Onderscheidingen
#resume-pad[
#resume-subheading[Lean Six Sigma Green Belt Project Award][][FreshFlow Distributie][nov 2022]
- Erkend voor een project dat de orderdoorlooptijd met 18% verlaagde\.
- Beoordeeld op meetbare impact, duurzaamheid van de oplossing en betrokkenheid van het team\.

#resume-subheading[Beste Teamprestatie van het Jaar][][Nexus Logistiek][dec 2019]
- Toegekend aan het logistieke team voor uitstekende leverbetrouwbaarheid tijdens piekperiodes\.
- Gerealiseerd door strakke planning, heldere communicatie en sterke samenwerking\.
]

= Certificaten
#resume-pad[
#resume-subheading[Lean Six Sigma Green Belt][#link("https://asq.org/cert/lean-six-sigma-green-belt")[https\:\/\/asq\.org\/cert\/lean\-six\-sigma\-green\-belt]][ASQ][jun 2020]

#resume-subheading[PRINCE2 Foundation][#link("https://www.axelos.com/certifications/prince2")[https\:\/\/www\.axelos\.com\/certifications\/prince2]][AXELOS][feb 2019]

#resume-subheading[Certified Supply Chain Professional (CSCP)][#link("https://www.ascm.org/credentials/cscp/")[https\:\/\/www\.ascm\.org\/credentials\/cscp\/]][ASCM][okt 2021]
]

= Publicaties
#resume-pad[
#resume-subheading[Van voorraadkosten naar klantwaarde\: datagedreven operations in de foodsector][#link("https://www.logistiekmagazine.nl/artikelen/datagedreven-operations")[https\:\/\/www\.logistiekmagazine\.nl\/artikelen\/datagedreven\-operations]][Logistiek Magazine][mrt 2023]
- Praktijkartikel over het verbinden van voorraadsturing aan klantwaarde en servicegraden\.
- Gaat in op KPI\-keuzes, forecastverbetering en samenwerking tussen operations en commercie\.
]

= Projecten
#resume-pad[
#resume-subheading[Implementatie nieuw WMS][#link("https://www.freshflowdistributie.nl/projecten/wms")[https\:\/\/www\.freshflowdistributie\.nl\/projecten\/wms]][Uitrol van een warehouse management systeem voor magazijn, planning en transport\.][mrt 2022–nov 2022]
- Leidde de operationele implementatie van een nieuw WMS binnen een live omgeving\.
- Betrok teamleiders en key users bij procesontwerp, testen en training\.
- Realiseerde een hogere voorraadnauwkeurigheid en kortere inwerktijd voor nieuwe medewerkers\.
#strong[Trefwoorden]: WMS, Implementatie, Procesontwerp, Training

#resume-subheading[Procesoptimalisatie orderpicking][#link("https://www.freshflowdistributie.nl/projecten/orderpicking")[https\:\/\/www\.freshflowdistributie\.nl\/projecten\/orderpicking]][Herinrichting van pickroutes en pickmethoden om doorlooptijd en kwaliteit te verbeteren\.][jan 2023–jun 2023]
- Analyseerde pickdata en observeerde werkprocessen op de werkvloer\.
- Testte nieuwe routeplanning en artikelplaatsing in een pilot\.
- Verlaagde de gemiddelde picktijd met 14% en verminderde orderfouten\.
#strong[Trefwoorden]: Orderpicking, Lean, Data\-analyse, Kwaliteit
]

= Interesses
#resume-pad[
#strong[Duurzaamheid]: Circulaire logistiek, Energiebesparing

#strong[Sport]: Hardlopen, Roeien, Wielrennen

#strong[Maatschappelijke impact]: Voedselbank, Kennisoverdracht
]

= Vrijwilligerswerk
#resume-pad[
#resume-subheading[Logistiek Coördinator][#link("https://www.voedselbankamsterdam.nl")[https\:\/\/www\.voedselbankamsterdam\.nl]][Voedselbank Amsterdam][feb 2018–Heden]
- Coördineert wekelijks de aanvoer, sortering en verdeling van voedingsmiddelen\.
- Stemt planning af met vrijwilligers, winkels en partnerorganisaties\.
- Verbeterde de sorteerprocessen en zorgde voor betrouwbare leveringen aan lokale uitgiftepunten\.

#resume-subheading[Projectvrijwilliger][#link("https://www.duurzamestad.nl")[https\:\/\/www\.duurzamestad\.nl]][Stichting Duurzame Stad][sep 2019–jun 2021]
- Ondersteunde een project voor efficiëntere stadsdistributie en minder lege kilometers\.
- Verzamelde data, maakte analyses en hielp bij de vertaling naar aanbevelingen voor de gemeente\.
]