#set document(
  title: "Sanne de Vries - Senior HR-manager met focus op mens en cultuur",
  author: "Sanne de Vries",
  keywords: "Strategisch HRM, Talentmanagement, Arbeidsrecht en compliance, Verandermanagement, HR-analytics, Communicatie",
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

#text(size: 1.44em)[Senior HR\-manager met focus op mens en cultuur]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+31 6 1234 5678")[\+31 6 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:sanne.devries@example.nl")[sanne\.devries\@example\.nl] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.sannedevries.nl")[https\:\/\/www\.sannedevries\.nl]

Prinsengracht 456, Amsterdam, Noord\-Holland, Nederland, 1016 HK

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/sannedevries")[sannedevries] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@sannedevries")[sannedevries]
]

= Basis Informatie

#resume-pad[
- Senior HR\-manager met meer dan tien jaar ervaring in strategisch HRM, talentmanagement en organisatieontwikkeling\.
- Bewezen trackrecord in het vertalen van bedrijfsdoelen naar personeelsagenda\'s met meetbare impact op verloop, betrokkenheid en productiviteit\.
- Sterk in stakeholdermanagement, arbeidsrecht en verandermanagement binnen complexe, internationale organisaties\.
- Datagedreven en mensgericht; coacht leidinggevenden en bouwt HR\-teams die proactief bijdragen aan de bedrijfsresultaten\.
]

= Opleidingen
#resume-pad[
#resume-subheading[Universiteit van Amsterdam][#link("https://www.uva.nl")[https\:\/\/www\.uva\.nl]][Master, Arbeids\- en Organisatiepsychologie, Score: 8,2][2011\-09\-01–2013\-06\-30]
- Afgestudeerd op de relatie tussen leiderschapsstijl en betrokkenheid in hybride teams\.
- Verdieping in arbeids\- en organisatiepsychologie, onderzoeksmethoden en HR\-analytics\.
- Scriptie beoordeeld met een 8,7\.
#strong[Cursussen]: Arbeids\- en organisatiepsychologie, Strategisch HRM, Onderzoeksmethoden, Verandermanagement, Arbeidsrecht

#resume-subheading[Hogeschool van Amsterdam][#link("https://www.hva.nl")[https\:\/\/www\.hva\.nl]][Bachelor, Human Resource Management, Score: 8,5][2007\-09\-01–2011\-06\-30]
- Breed fundament in HRM, arbeidsrecht en organisatiekunde\.
- Stage bij een regionale zorgorganisatie op het gebied van werving en selectie\.
#strong[Cursussen]: Human Resource Management, Arbeidsrecht, Organisatiekunde, Communicatie, Personeelsplanning
]

= Werkervaring
#resume-pad[
#resume-subheading[Senior HR\-manager][#link("https://www.peoplehub.nl")[https\:\/\/www\.peoplehub\.nl]][PeopleHub Nederland][2021\-03\-01–Heden]
- Ontwikkelt en implementeert de HR\-strategie voor een organisatie van 750 medewerkers\.
- Stuurt een team van vijf HR\-professionals aan en realiseert een jaarlijkse daling van 18% in verloop\.
- Adviseert directie en MT over organisatieontwikkeling, talentmanagement en arbeidsrechtelijke vraagstukken\.
- Trekt het HR\-analytics\-programma en vertaalt data naar concrete interventies voor behoud en ontwikkeling\.
#strong[Trefwoorden]: HR\-strategie, Talentmanagement, HR\-analytics, Leiderschapsontwikkeling, Arbeidsrecht

#resume-subheading[HR\-manager][#link("https://www.vandijkretail.nl")[https\:\/\/www\.vandijkretail\.nl]][Van Dijk Retail Groep][2016\-09\-01–2021\-02\-28]
- Verantwoordelijk voor HR\-beleid, werving en selectie, onboarding en prestatiemanagement voor 12 vestigingen\.
- Begeleidde een reorganisatie met behoud van 95% van kritische functies\.
- Introduceerde een medewerkersonderzoek met een respons van 89% en koppelde resultaten aan verbeterplannen\.
- Onderhandelde met vakbonden over CAO\-afspraken en sociale plannen\.
#strong[Trefwoorden]: Reorganisatie, Werving en selectie, Medezeggenschap, CAO, Prestatiemanagement

#resume-subheading[HR\-adviseur][#link("https://www.talentwerkadvies.nl")[https\:\/\/www\.talentwerkadvies\.nl]][TalentWerk Advies][2013\-09\-01–2016\-08\-31]
- Adviseerde operationele managers in logistiek en customer service over HR\-vraagstukken\.
- Ontwikkelde een onboardingprogramma dat de time\-to\-productivity met drie weken verkortte\.
- Behandelde verzuim\- en reintegratietrajecten in samenwerking met bedrijfsarts en leidinggevenden\.
- Voerde HR\-analyses uit en rapporteerde maandelijks over verzuim, verloop en bezetting\.
#strong[Trefwoorden]: Onboarding, Verzuimbegeleiding, HR\-administratie, Adviesvaardigheden
]

= Talen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Nederlands]: Moedertaal of tweetalige vaardigheid], [#strong[Trefwoorden]: Moedertaal, Zakelijk schrijven])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engels]: Volledige professionele vaardigheid], [#strong[Trefwoorden]: TOEFL iBT 108, Zakelijke communicatie])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Duits]: Beperkte werkvaardigheid], [#strong[Trefwoorden]: Goethe\-Zertifikat B1])
]

= Vaardigheden
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Strategisch HRM]: Expert], [#strong[Trefwoorden]: HR\-strategie, Organisatieontwikkeling, Personeelsplanning])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Talentmanagement]: Geavanceerd], [#strong[Trefwoorden]: Werving en selectie, Onboarding, Successieplanning, Prestatiemanagement])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Arbeidsrecht en compliance]: Geavanceerd], [#strong[Trefwoorden]: CAO, Arbeidsomstandigheden, Medezeggenschap, Privacy (AVG)])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Verandermanagement]: Geavanceerd], [#strong[Trefwoorden]: Cultuurverandering, Stakeholdermanagement, Lean])

#grid(columns: (1fr, auto), align: (left, right), [#strong[HR\-analytics]: Intermediair], [#strong[Trefwoorden]: Power BI, Excel, HR\-dashboards, Data\-gedreven besluitvorming])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Communicatie]: Expert], [#strong[Trefwoorden]: Coaching, Onderhandelen, Presenteren, Adviesvaardigheden])
]

= Onderscheidingen
#resume-pad[
#resume-subheading[HR Professional van het Jaar 2023][][Nederlandse Vereniging voor Personeelsmanagement][2023\-11\-16]
- Prijswinnaar in de categorie strategisch HRM vanwege het programma Duurzame Inzetbaarheid\.
- Jury prees de datagedreven aanpak en meetbare impact op verloop en betrokkenheid\.
]

= Certificaten
#resume-pad[
#resume-subheading[SHRM\-SCP][#link("https://www.shrm.org/certification")[https\:\/\/www\.shrm\.org\/certification]][SHRM][2020\-05\-01]

#resume-subheading[Gecertificeerd Medezeggenschapsadviseur][#link("https://www.fnv.nl")[https\:\/\/www\.fnv\.nl]][FNV][2019\-10\-01]

#resume-subheading[HR Analytics Fundamentals][#link("https://www.coursera.org")[https\:\/\/www\.coursera\.org]][Coursera][2022\-03\-01]
]

= Publicaties
#resume-pad[
#resume-subheading[Wendbaar werken\: van ambitie naar routines][#link("https://www.kluwer.nl/hrm")[https\:\/\/www\.kluwer\.nl\/hrm]][Kluwer HRM][2022\-04\-15]
- Praktijkboek over het vertalen van strategische HR\-doelen naar dagelijkse routines\.
- Met casuïstiek uit retail, zorg en technologie\.
]

= Referenties
#resume-pad[
#resume-subheading[Marieke Jansen][Directeur HR bij PeopleHub Nederland][m\.jansen\@peoplehub\.nl][\+31 20 123 4567]
Sanne is een strategische en daadkrachtige HR\-manager die complexe HR\-vraagstukken vertaalt naar heldere plannen en meetbare resultaten\. Zij combineert scherpe analyse met oprechte aandacht voor mensen en is een waardevolle sparringpartner voor elk managementteam\.
]

= Projecten
#resume-pad[
#resume-subheading[Programma Duurzame Inzetbaarheid][#link("https://www.peoplehub.nl/projecten/duurzame-inzetbaarheid")[https\:\/\/www\.peoplehub\.nl\/projecten\/duurzame\-inzetbaarheid]][Organisatiebreed programma om werkplezier, vitaliteit en blijvende inzetbaarheid van medewerkers te versterken\.][2022\-01\-01–2022\-12\-31]
- Ontwikkelde een meetbaar interventieportfolio voor 750 medewerkers\.
- Realiseerde een daling van het verzuim met 1,8 procentpunt en een stijging van de betrokkenheidsscore met 12 punten\.
- Werkte samen met bedrijfsarts, OR en lijnmanagement aan preventie en reintegratie\.
#strong[Trefwoorden]: Vitaliteit, Verzuimpreventie, Betrokkenheid, HR\-analytics
]

= Interesses
#resume-pad[
#strong[Vrijwilligerswerk]: Loopbaancoaching, Mentoring

#strong[Sport]: Hardlopen, Wielrennen, Yoga

#strong[Cultuur]: Literatuur, Musea, Toneel
]

= Vrijwilligerswerk
#resume-pad[
#resume-subheading[Loopbaanmentor][#link("https://www.loopbaanlab.nl")[https\:\/\/www\.loopbaanlab\.nl]][Stichting LoopbaanLab][2018\-09\-01–Heden]
- Begeleidt jaarlijks vijf professionals bij loopbaanvragen en re\-integratie\.
- Verzorgt workshops over personal branding en solliciteren\.
- Draagt bij aan de ontwikkeling van laagdrempelige loopbaantools\.
]