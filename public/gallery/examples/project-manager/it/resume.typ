#set document(
  title: "Marco Bianchi - Project Manager Senior | Trasformazione digitale e metodologie agili",
  author: "Marco Bianchi",
  keywords: "Gestione del progetto, Pianificazione e controllo, Analisi dei dati, Comunicazione e leadership, Gestione del rischio",
  description: "Résumé of Marco Bianchi",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Marco Bianchi]] #v(-0.2em)

#text(size: 1.44em)[Project Manager Senior | Trasformazione digitale e metodologie agili]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 347 123 4567")[\+39 347 123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:marco.bianchi@example.it")[marco\.bianchi\@example\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marcobianchi-pm.it")[https\:\/\/www\.marcobianchi\-pm\.it]

Via Torino 45, Milano, Lombardia, Italia, 20123

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marcobianchi-pm")[marcobianchi\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/marcobianchi_pm")[marcobianchi\_pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@marcobianchi")[marcobianchi]
]

= Informazioni personali

#resume-pad[
- Project manager con oltre 8 anni di esperienza nella conduzione di progetti digitali e di trasformazione organizzativa in contesti complessi\.
- Specializzato in metodologie ibride (Agile, Scrum, Waterfall) e nella gestione del ciclo di vita del progetto, dall\'analisi dei requisiti al rilascio\.
- Capacità comprovata di coordinare team cross\-funzionali, gestire stakeholder e garantire il rispetto di tempi, budget e qualità\.
- Orientato ai risultati, con forte attenzione alla comunicazione, alla gestione del rischio e al miglioramento continuo\.
]

= Formazione
#resume-pad[
#resume-subheading[Politecnico di Milano][#link("https://www.polimi.it")[https\:\/\/www\.polimi\.it]][Laurea magistrale, Ingegneria Gestionale, Punteggio: 110\/110 e lode][2013\-09\-01–2015\-07\-15]
- Formazione avanzata nella pianificazione, esecuzione e controllo di progetti complessi\.
- Approfondimento di metodologie quantitative per il supporto alle decisioni e la gestione delle risorse\.
#strong[Corsi]: Gestione dei progetti, Economia e organizzazione aziendale, Analisi dei sistemi complessi, Gestione dell\'innovazione, Gestione operativa

#resume-subheading[Università degli Studi di Bologna][#link("https://www.unibo.it")[https\:\/\/www\.unibo\.it]][Laurea triennale, Economia Aziendale, Punteggio: 108\/110][2010\-09\-01–2013\-07\-10]
- Solida base economica e aziendale per la comprensione dei processi organizzativi\.
- Sviluppo di competenze analitiche e di rendicontazione\.
#strong[Corsi]: Economia aziendale, Ragioneria generale, Statistica, Diritto privato
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Senior Project Manager][#link("https://www.fintechsolutionsitalia.it")[https\:\/\/www\.fintechsolutionsitalia\.it]][Fintech Solutions Italia][2022\-03\-01–Presente]
- Responsabile del portafoglio di progetti digitali per il lancio di nuovi prodotti di pagamento\.
- Coordinamento di team cross\-funzionali composti da responsabili di prodotto, sviluppatori, designer e compliance\.
- Definizione di piani di rilascio, budget e piani di mitigazione dei rischi, con rendicontazione periodica al comitato esecutivo\.
- Introduzione di pratiche agili e metriche di produttività, con riduzione del 25% del tempo di immissione sul mercato\.
#strong[Parole chiave]: Gestione del portafoglio, Metodologie agili, Trasformazione digitale, Gestione del rischio

#resume-subheading[Project Manager][#link("https://www.digitalretailgroup.it")[https\:\/\/www\.digitalretailgroup\.it]][Digital Retail Group][2019\-01\-15–2022\-02\-28]
- Gestione di progetti e\-commerce e CRM per marchi del gruppo, con team distribuiti in Italia e all\'estero\.
- Pianificazione delle attività, allocazione delle risorse e monitoraggio dei KPI di progetto\.
- Facilitazione di laboratori con stakeholder interni ed esterni per la definizione dei requisiti\.
- Implementazione di un modello di governance basato su Scrum e Kanban\.
#strong[Parole chiave]: E\-commerce, CRM, Scrum, Kanban, Governance

#resume-subheading[Junior Project Manager][#link("https://www.consulenzainnovazione.it")[https\:\/\/www\.consulenzainnovazione\.it]][Consulenza Innovazione S\.p\.A\.][2015\-09\-01–2018\-12\-31]
- Supporto alla direzione progetti per clienti nei settori manifatturiero e servizi\.
- Redazione di piani di progetto, analisi dei requisiti e documentazione di avanzamento\.
- Monitoraggio di tempi, costi e qualità, con aggiornamento del registro dei rischi\.
- Partecipazione a gare e presentazioni commerciali per nuovi incarichi\.
#strong[Parole chiave]: Pianificazione, Registro dei rischi, Documentazione, Rendicontazione
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: IELTS 7\.5, Business English])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spagnolo]: Competenza professionale limitata], [#strong[Parole chiave]: DELE B1])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestione del progetto]: Esperto], [#strong[Parole chiave]: Agile, Scrum, Kanban, Waterfall, PRINCE2])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Pianificazione e controllo]: Avanzato], [#strong[Parole chiave]: Microsoft Project, Jira, Asana, Trello, Smartsheet])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analisi dei dati]: Avanzato], [#strong[Parole chiave]: Excel avanzato, Power BI, SQL, Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Comunicazione e leadership]: Esperto], [#strong[Parole chiave]: Negoziazione, Facilitazione, Mentoraggio, Presentazioni efficaci])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestione del rischio]: Avanzato], [#strong[Parole chiave]: Registro dei rischi, Mitigazione, Audit, Conformità])
]

= Premi
#resume-pad[
#resume-subheading[Premio Eccellenza PMI 2023][][Associazione Italiana Project Management][2023\-11\-15]
Riconoscimento per la gestione esemplare di un programma di trasformazione digitale con impatto misurabile su efficienza e soddisfazione del cliente\.

#resume-subheading[Miglior leader di team agile][][Digital Retail Group][2021\-06\-30]
Premio interno per la capacità di guidare team distribuiti e raggiungere gli obiettivi di progetto con elevati standard di qualità\.
]

= Certificazioni
#resume-pad[
#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][2021\-05\-20]

#resume-subheading[Certified ScrumMaster (CSM)][#link("https://www.scrumalliance.org/get-certified/scrum-master-track/certified-scrummaster")[https\:\/\/www\.scrumalliance\.org\/get\-certified\/scrum\-master\-track\/certified\-scrummaster]][Scrum Alliance][2019\-10\-10]

#resume-subheading[ITIL 4 Foundation][#link("https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation")[https\:\/\/www\.peoplecert\.org\/browse\-certifications\/it\-governance\-and\-service\-management\/ITIL\-1\/itil\-4\-foundation]][PeopleCert][2020\-02\-15]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[Gestione agile dei progetti complessi\: un modello ibrido][#link("https://www.rivistaitalianapm.it/articoli/modello-ibrido")[https\:\/\/www\.rivistaitalianapm\.it\/articoli\/modello\-ibrido]][Rivista Italiana di Project Management][2022\-09\-01]
- Articolo dedicato all\'integrazione tra framework agili e approcci tradizionali\.
- Analisi di casi studio in ambito finanziario e retail\.
- Proposta di un modello di governance per programmi multi\-progetto\.
]

= Progetti
#resume-pad[
#resume-subheading[Piattaforma di onboarding digitale][#link("https://www.fintechsolutionsitalia.it/progetti/onboarding-digitale")[https\:\/\/www\.fintechsolutionsitalia\.it\/progetti\/onboarding\-digitale]][Progetto di digitalizzazione del processo di onboarding clienti per ridurre i tempi di attivazione e migliorare l\'esperienza utente\.][2022\-04\-01–2023\-05\-31]
- Coordinamento di un team di 12 persone tra prodotto, sviluppo, design e compliance\.
- Definizione di requisiti funzionali e flussi utente in collaborazione con il business\.
- Rilascio della piattaforma con riduzione del 40% dei tempi di onboarding\.
- Gestione del budget di 600\.000 euro e rendicontazione mensile agli stakeholder\.
#strong[Parole chiave]: Onboarding digitale, UX, Conformità, Gestione del budget

#resume-subheading[Programma di trasformazione ERP][#link("https://www.digitalretailgroup.it/progetti/trasformazione-erp")[https\:\/\/www\.digitalretailgroup\.it\/progetti\/trasformazione\-erp]][Programma pluriennale di migrazione dei sistemi ERP e integrazione dei processi amministrativi, della catena di fornitura e delle vendite\.][2019\-03\-01–2021\-12\-31]
- Pianificazione e coordinamento di 5 flussi di lavoro con team interni e fornitori esterni\.
- Gestione del cambiamento organizzativo e formazione di oltre 200 utenti\.
- Raggiungimento degli obiettivi di avvio operativo entro tempi e budget previsti\.
- Implementazione di un cruscotto di monitoraggio dei KPI dopo l\'avvio\.
#strong[Parole chiave]: ERP, Gestione del cambiamento, Formazione, KPI
]

= Interessi
#resume-pad[
#strong[Sport]: Corsa, Ciclismo, Nuoto

#strong[Lettura]: Saggistica, Romanzi storici

#strong[Volontariato]: Mentoraggio, Formazione
]

= Volontariato
#resume-pad[
#resume-subheading[Mentore volontario][#link("https://www.aipm.it")[https\:\/\/www\.aipm\.it]][Associazione Italiana Project Management][2021\-01\-01–Presente]
- Attività di mentore per giovani professionisti e studenti che si avvicinano alla gestione dei progetti\.
- Organizzazione di laboratori su metodologie agili e pianificazione\.
- Contributo alla comunità con articoli e incontri tematici\.

#resume-subheading[Formatore volontario][#link("https://www.fondazioneformazionelavoro.it")[https\:\/\/www\.fondazioneformazionelavoro\.it]][Fondazione Formazione e Lavoro][2018\-09\-01–2020\-12\-31]
- Docenza in corsi base di gestione del progetto per persone in cerca di occupazione\.
- Preparazione di materiali didattici e simulazioni pratiche\.
- Tutoraggio individuale per l\'inserimento lavorativo\.
]