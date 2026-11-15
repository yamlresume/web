#set document(
  title: "Marco Bianchi - Account Executive | Vendite B2B | Soluzioni SaaS",
  author: "Marco Bianchi",
  keywords: "Vendite e sviluppo business, Gestione CRM, Negoziazione, Analisi di mercato, Comunicazione e presentazioni",
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

#text(size: 1.44em)[Account Executive | Vendite B2B | Soluzioni SaaS]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 333 123 4567")[\+39 333 123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:marco.bianchi@example.it")[marco\.bianchi\@example\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marcobianchi.it")[https\:\/\/www\.marcobianchi\.it]

Via Roma 45, Milano, Lombardia, Italia, 20121

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marcobianchi")[marcobianchi] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/marcobianchi")[marcobianchi]
]

= Informazioni personali

#resume-pad[
Account Executive con oltre 8 anni di esperienza nelle vendite B2B e nella gestione di clienti enterprise\. Specializzato in soluzioni SaaS e trasformazione digitale, con una comprovata capacità di superare gli obiettivi di fatturato e di costruire relazioni solide e durature con i decision maker\.

Esperto nella gestione dell\'intero ciclo di vendita, dalla prospezione alla negoziazione e chiusura, con un forte orientamento al cliente e all\'analisi dei dati\. Abituato a lavorare in team cross\-funzionali e a utilizzare CRM avanzati per monitorare pipeline e performance\.
]

= Formazione
#resume-pad[
#resume-subheading[Università Bocconi][#link("https://www.unibocconi.it")[https\:\/\/www\.unibocconi\.it]][Laurea magistrale, Economia e Management, Punteggio: 110\/110 e lode][set 2014–lug 2016]
- Approfondimento delle tecniche di vendita complesse e della gestione di team commerciali\.
- Sviluppo di competenze analitiche per l\'interpretazione dei dati di mercato e delle performance di vendita\.
- Partecipazione a project work con aziende del settore tecnologico per l\'ottimizzazione dei processi di vendita\.
#strong[Corsi]: Marketing Strategico, Comportamento Organizzativo, Finanza Aziendale, Business Analytics, Gestione delle Vendite, Negoziazione Commerciale

#resume-subheading[Università di Bologna][#link("https://www.unibo.it")[https\:\/\/www\.unibo\.it]][Laurea triennale, Economia Aziendale, Punteggio: 108\/110][set 2011–lug 2014]
- Formazione di base solida in economia e gestione aziendale\.
- Primo approccio alle dinamiche commerciali e alle tecniche di analisi di mercato\.
- Tesi sperimentale sulle strategie di pricing nel settore B2B\.
#strong[Corsi]: Economia Aziendale, Diritto Commerciale, Statistica, Marketing, Ragioneria Generale
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Senior Account Executive][#link("https://www.techsales.it")[https\:\/\/www\.techsales\.it]][TechSales S\.p\.A\.][gen 2021–Presente]
- Gestione di un portafoglio clienti enterprise nel settore manifatturiero e logistico, con un fatturato annuo gestito di oltre 2,5 milioni di euro\.
- Sviluppo di nuove opportunità di business attraverso attività di prospezione mirata e networking, con un tasso di conversione del 35%\.
- Conduzione di negoziazioni complesse con C\-level, garantendo margini elevati e contratti pluriennali\.
- Collaborazione con i team di marketing e product per allineare l\'offerta alle esigenze del mercato\.
- Mentoring di due Account Executive junior, con conseguente miglioramento delle loro performance\.
#strong[Parole chiave]: Vendite enterprise, Negoziazione, Gestione portafoglio, Salesforce, SaaS, Mentoring

#resume-subheading[Account Executive][#link("https://www.cloudsolutions.it")[https\:\/\/www\.cloudsolutions\.it]][CloudSolutions Srl][mar 2018–dic 2020]
- Responsabile dello sviluppo del mercato italiano per soluzioni cloud, con focus su PMI e medie imprese\.
- Gestione dell\'intero ciclo di vendita\: dalla qualifica del lead alla chiusura del contratto\.
- Raggiungimento e superamento degli obiettivi di vendita trimestrali per 11 trimestri consecutivi\.
- Utilizzo di HubSpot CRM per la gestione della pipeline e il monitoraggio delle attività\.
- Partecipazione a fiere di settore e eventi di networking per la generazione di contatti qualificati\.
#strong[Parole chiave]: Cloud, Vendite B2B, HubSpot, Pipeline management, Fiere

#resume-subheading[Sales Development Representative][#link("https://www.innovaretail.it")[https\:\/\/www\.innovaretail\.it]][InnovaRetail S\.p\.A\.][giu 2016–feb 2018]
- Prospezione telefonica e via email per conto del team vendite, con generazione di oltre 150 lead qualificati al mese\.
- Qualifica dei contatti in base al budget, all\'autorità decisionale, alla necessità e alla tempistica (BANT)\.
- Organizzazione di appuntamenti per gli Account Executive e supporto nella preparazione di demo commerciali\.
- Utilizzo di Salesforce per la registrazione delle attività e il tracciamento delle opportunità\.
#strong[Parole chiave]: Prospezione, Lead generation, Salesforce, BANT, Appuntamenti
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: C1, Business English])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francese]: Competenza professionale limitata], [#strong[Parole chiave]: B2, Conversazione])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Vendite e sviluppo business]: Esperto], [#strong[Parole chiave]: Vendite B2B, Sviluppo business, Gestione territoriale, Upselling, Cross\-selling])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestione CRM]: Avanzato], [#strong[Parole chiave]: Salesforce, HubSpot, Microsoft Dynamics, SAP CRM, Analisi pipeline])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Negoziazione]: Esperto], [#strong[Parole chiave]: Negoziazione complessa, Gestione obiezioni, Contratti enterprise, Pricing strategy])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analisi di mercato]: Intermedio], [#strong[Parole chiave]: Ricerche di mercato, Analisi competitor, Data analysis, Reporting])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Comunicazione e presentazioni]: Avanzato], [#strong[Parole chiave]: Public speaking, Presentazioni efficaci, Comunicazione interpersonale, Storytelling])
]

= Premi
#resume-pad[
#resume-subheading[Sales Excellence Award][][TechSales S\.p\.A\.][dic 2022]
Riconoscimento assegnato per aver superato l\'obiettivo annuale di fatturato del 120% e per l\'eccellenza nella gestione delle relazioni con i clienti enterprise\.

#resume-subheading[Top Performer Q4][][CloudSolutions Srl][gen 2021]
Premio per il miglior risultato trimestrale del team vendite, con un incremento del 40% rispetto al trimestre precedente\.
]

= Certificazioni
#resume-pad[
#resume-subheading[Salesforce Certified Administrator][#link("https://trailhead.salesforce.com/certification")[https\:\/\/trailhead\.salesforce\.com\/certification]][Salesforce][mar 2021]

#resume-subheading[HubSpot Inbound Sales Certification][#link("https://academy.hubspot.com/courses/inbound-sales")[https\:\/\/academy\.hubspot\.com\/courses\/inbound\-sales]][HubSpot Academy][set 2019]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[Strategie di vendita B2B nell\'era digitale][#link("https://www.salesmagazine.it/strategie-vendita-b2b")[https\:\/\/www\.salesmagazine\.it\/strategie\-vendita\-b2b]][Sales Magazine Italia][giu 2023]
- Analisi delle principali tendenze nelle vendite B2B e dell\'impatto della trasformazione digitale\.
- Approfondimento sulle tecniche di social selling e sull\'utilizzo dei dati per personalizzare l\'offerta\.
- Case study di aziende italiane che hanno ottenuto risultati significativi attraverso l\'innovazione commerciale\.
]

= Progetti
#resume-pad[
#resume-subheading[Implementazione CRM Salesforce][#link("https://www.techsales.it/progetti/crm-salesforce")[https\:\/\/www\.techsales\.it\/progetti\/crm\-salesforce]][Progetto di migrazione e ottimizzazione del CRM Salesforce per il team vendite\.][feb 2021–set 2021]
- Coordinamento delle attività di migrazione dei dati e configurazione di pipeline personalizzate\.
- Formazione dei colleghi sull\'utilizzo delle nuove funzionalità e delle best practice\.
- Riduzione del 30% del tempo dedicato alle attività amministrative e miglioramento della reportistica\.
#strong[Parole chiave]: Salesforce, Migrazione dati, Formazione, Ottimizzazione processi

#resume-subheading[Programma di mentoring vendite][][Programma di mentoring per nuovi Account Executive\.][gen 2023–dic 2023]
- Definizione di un percorso di affiancamento strutturato per i nuovi assunti\.
- Organizzazione di sessioni settimanali su tecniche di vendita, gestione delle obiezioni e utilizzo del CRM\.
- Miglioramento del time\-to\-productivity dei nuovi venditori del 25%\.
#strong[Parole chiave]: Mentoring, Formazione, Sviluppo talenti, Vendite
]

= Interessi
#resume-pad[
#strong[Sport]: Corsa, Calcio, Sci, Pallavolo

#strong[Lettura]: Romanzi, Biografie, Saggi di economia

#strong[Viaggi]: Europa, Asia, Fotografia
]

= Volontariato
#resume-pad[
#resume-subheading[Mentore][#link("https://www.fondazionesalesiani.it")[https\:\/\/www\.fondazionesalesiani\.it]][Fondazione Salesiani][set 2019–giu 2023]
- Affiancamento di giovani in cerca di occupazione nel percorso di orientamento al lavoro\.
- Organizzazione di laboratori su competenze trasversali e tecniche di colloquio\.
- Supporto nella redazione di CV e nella preparazione ai colloqui di lavoro\.

#resume-subheading[Volontario][#link("https://www.aism.it")[https\:\/\/www\.aism\.it]][Associazione Italiana Sclerosi Multipla][apr 2017–dic 2018]
- Partecipazione a eventi di raccolta fondi e attività di sensibilizzazione\.
- Supporto logistico durante le manifestazioni organizzate dall\'associazione\.
]