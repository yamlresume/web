#set document(
  title: "Giulia Rossi - Infermiera Professionale con 8 anni di esperienza",
  author: "Giulia Rossi",
  keywords: "Assistenza Infermieristica, Area Chirurgica, Competenze Trasversali",
  description: "Résumé of Giulia Rossi",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "it", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Giulia Rossi]] #v(-0.2em)

#text(size: 1.44em)[Infermiera Professionale con 8 anni di esperienza]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 333 123 4567")[\+39 333 123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:giulia.rossi@email.it")[giulia\.rossi\@email\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/giuliarossi")[https\:\/\/www\.linkedin\.com\/in\/giuliarossi]

Via Roma 15, Milano, Lombardia, Italia, 20121

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/giuliarossi")[giuliarossi] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/giuliarossi_inf")[giuliarossi\_inf]
]

= Informazioni personali

#resume-pad[
- Infermiera con solida esperienza in reparti di medicina interna e chirurgia, con particolare attenzione alla cura del paziente e alla sicurezza clinica\.
- Competenze avanzate nella gestione del dolore, medicazioni complesse e supporto psicologico ai pazienti e alle famiglie\.
- Esperta nella somministrazione di terapie endovenose, gestione di cateteri venosi centrali e periferici e monitoraggio dei parametri vitali\.
- Forte capacità di lavorare in équipe multidisciplinari, con ottime doti comunicative e organizzative\.
- Impegnata nella formazione continua e nell\'aggiornamento delle pratiche cliniche basate su evidenze scientifiche\.
]

= Formazione
#resume-pad[
#resume-subheading[Università degli Studi di Milano][#link("https://www.unimi.it")[https\:\/\/www\.unimi\.it]][Laurea triennale, Infermieristica, Punteggio: 110\/110 e lode][set 2010–lug 2013]
- Formazione teorica e pratica completa in ambito infermieristico
- Tirocinio clinico presso l\'Ospedale Maggiore di Milano
- Approfondimento delle tecniche di comunicazione terapeutica
- Partecipazione a progetti di ricerca infermieristica
#strong[Corsi]: Anatomia Umana, Fisiologia, Patologia Generale, Infermieristica Clinica, Farmacologia, Scienze Infermieristiche, Medicina Interna, Chirurgia Generale
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Infermiera Strumentista][#link("https://www.ospedaleniguarda.it")[https\:\/\/www\.ospedaleniguarda\.it]][Ospedale Niguarda Ca\' Granda][gen 2018–Presente]
- Gestione del paziente in sala operatoria, assistenza al chirurgo e all\'équipe anestesiologica
- Preparazione e sterilizzazione degli strumenti chirurgici
- Monitoraggio dei parametri vitali e assistenza post\-operatoria
- Collaborazione nella gestione delle emergenze e delle complicanze intraoperatorie
- Formazione di nuovi infermieri e studenti
#strong[Parole chiave]: Sala operatoria, Sterilizzazione, Monitoraggio, Assistenza chirurgica, Formazione

#resume-subheading[Infermiera di Reparto][#link("https://www.hsr.it")[https\:\/\/www\.hsr\.it]][Ospedale San Raffaele][set 2013–dic 2017]
- Assistenza infermieristica a pazienti affetti da patologie croniche e acute in reparto di medicina interna
- Somministrazione di terapie farmacologiche e gestione di accessi venosi
- Educazione sanitaria ai pazienti e ai familiari
- Gestione della documentazione clinica e collaborazione con l\'équipe multidisciplinare
- Partecipazione a progetti di miglioramento della qualità delle cure
#strong[Parole chiave]: Medicina interna, Terapia farmacologica, Educazione sanitaria, Gestione documentale, Qualità delle cure
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: IELTS 7\.5, Certificazione C1])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francese]: Competenza professionale limitata], [#strong[Parole chiave]: DELF B1])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Assistenza Infermieristica]: Esperto], [#strong[Parole chiave]: Gestione del paziente, Medicazioni complesse, Terapia endovenosa, Monitoraggio parametri vitali, Cateterismo vescicale])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Area Chirurgica]: Avanzato], [#strong[Parole chiave]: Strumentazione chirurgica, Sterilizzazione, Assistenza intraoperatoria, Gestione sala operatoria])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Competenze Trasversali]: Avanzato], [#strong[Parole chiave]: Comunicazione terapeutica, Lavoro di squadra, Problem solving, Gestione dello stress, Formazione])
]

= Premi
#resume-pad[
#resume-subheading[Infermiere dell\'Anno][][Ospedale Niguarda Ca\' Granda][dic 2020]
Riconoscimento per l\'eccellenza nell\'assistenza infermieristica e per l\'impegno nella formazione del personale\.
]

= Certificazioni
#resume-pad[
#resume-subheading[Certificazione BLS\-D][#link("https://www.ircouncil.it")[https\:\/\/www\.ircouncil\.it]][Italian Resuscitation Council][mar 2021]

#resume-subheading[Corso di Specializzazione in Wound Care][#link("https://www.unimi.it")[https\:\/\/www\.unimi\.it]][Università di Milano][giu 2019]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[La gestione del dolore post\-operatorio\: nuove frontiere][#link("https://www.rii.it/articolo")[https\:\/\/www\.rii\.it\/articolo]][Rivista Italiana di Infermieristica][apr 2022]
- Articolo di ricerca sulla gestione del dolore post\-operatorio
- Analisi delle migliori pratiche basate su evidenze
- Proposta di un protocollo innovativo
]

= Progetti
#resume-pad[
#resume-subheading[Progetto Patient Education][#link("https://www.hsr.it/progetti/patient-education")[https\:\/\/www\.hsr\.it\/progetti\/patient\-education]][Programma di educazione sanitaria per pazienti con patologie croniche][gen 2020–dic 2021]
- Sviluppo di materiale informativo multilingue
- Organizzazione di incontri formativi per pazienti e familiari
- Valutazione dell\'impatto del progetto sull\'aderenza terapeutica
#strong[Parole chiave]: Educazione sanitaria, Patologie croniche, Multilingua, Aderenza terapeutica
]

= Interessi
#resume-pad[
#strong[Volontariato]: Croce Rossa Italiana, Assistenza anziani

#strong[Sport]: Nuoto, Yoga, Corsa

#strong[Lettura]: Narrativa, Saggi scientifici
]

= Volontariato
#resume-pad[
#resume-subheading[Infermiera Volontaria][#link("https://www.cri.it")[https\:\/\/www\.cri\.it]][Croce Rossa Italiana][gen 2015–Presente]
- Assistenza sanitaria durante eventi pubblici e manifestazioni
- Supporto nelle campagne di vaccinazione e screening
- Formazione della popolazione sulle manovre di primo soccorso
- Partecipazione a missioni di emergenza
]