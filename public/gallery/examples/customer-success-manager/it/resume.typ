#set document(
  title: "Giulia Bianchi - Customer Success Manager | SaaS e trasformazione digitale",
  author: "Giulia Bianchi",
  keywords: "Customer Success Management, CRM e Analisi Dati, Comunicazione e Negoziazione, Project Management",
  description: "Résumé of Giulia Bianchi",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Giulia Bianchi]] #v(-0.2em)

#text(size: 1.44em)[Customer Success Manager | SaaS e trasformazione digitale]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 345 678 9012")[\+39 345 678 9012] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:giulia.bianchi.csm@email.it")[giulia\.bianchi\.csm\@email\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.giuliabianchi-csm.it")[https\:\/\/www\.giuliabianchi\-csm\.it]

Via della Moscova 18, Milano, Lombardia, Italia, 20121

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/giulia-bianchi-csm")[giulia\-bianchi\-csm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@giuliabianchi_csm")[giuliabianchi\_csm]
]

= Informazioni personali

#resume-pad[
Customer Success Manager con oltre 8 anni di esperienza nella gestione di portafogli clienti B2B SaaS, con una solida propensione alla fidelizzazione, all\'adozione del prodotto e alla crescita del valore del cliente\.

- Responsabile di un portafoglio da 2,5 milioni di euro di ARR, con una riduzione del churn del 18% in due anni\.
- Esperta nella costruzione di processi di onboarding scalabili, piani di successo del cliente e business review trimestrali\.
- Forte orientamento ai dati, alla collaborazione cross\-funzionale e alla comunicazione con stakeholder senior\.
- Abituata a lavorare in contesti internazionali e a tradurre le esigenze del cliente in roadmap di prodotto\.
]

= Formazione
#resume-pad[
#resume-subheading[Università Commerciale Luigi Bocconi][#link("https://www.unibocconi.it")[https\:\/\/www\.unibocconi\.it]][Laurea magistrale, Marketing e Comunicazione d\'Impresa, Punteggio: 110\/110 con lode][ott 2012–lug 2014]
- Percorso specialistico focalizzato sulla gestione della relazione con il cliente e sulla misurazione della soddisfazione\.
- Tesi sperimentale sull\'impatto della customer experience sulla fidelizzazione nei servizi digitali\.
- Progetti di gruppo con aziende del settore tecnologico e retail\.
#strong[Corsi]: Marketing strategico, Comportamento del consumatore, Ricerche di mercato, Gestione della relazione con il cliente, Business analytics, Comunicazione d\'impresa

#resume-subheading[Università degli Studi di Milano][#link("https://www.unimi.it")[https\:\/\/www\.unimi\.it]][Laurea triennale, Scienze della Comunicazione, Punteggio: 108\/110][set 2009–lug 2012]
- Solida base in comunicazione interpersonale, analisi dei bisogni e tecniche di negoziazione\.
- Attività di laboratorio su customer journey e ricerca qualitativa\.
#strong[Corsi]: Sociologia della comunicazione, Psicologia del consumatore, Statistica, Linguaggi digitali, Public speaking
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Senior Customer Success Manager][#link("https://www.nexacloud.it")[https\:\/\/www\.nexacloud\.it]][NexaCloud Italia][gen 2021–Presente]
- Gestione di un portafoglio di 45 clienti enterprise e mid\-market, per un ARR complessivo di 2,5 milioni di euro\.
- Definizione e implementazione di piani di successo del cliente con obiettivi misurabili su adozione, valore e rinnovo\.
- Riduzione del churn del 18% e aumento del tasso di rinnovo al 94% in due anni\.
- Conduzione di business review trimestrali con C\-level, HR e responsabili IT per allineare le priorità e dimostrare il ROI\.
- Collaborazione con Product e Sales per raccogliere feedback, identificare opportunità di upselling e migliorare la roadmap\.
- Mentoring di due Customer Success Manager junior e definizione delle best practice di onboarding\.
#strong[Parole chiave]: Customer Success, SaaS, Churn reduction, QBR, Onboarding, Upselling

#resume-subheading[Customer Success Manager][#link("https://www.saasnow.it")[https\:\/\/www\.saasnow\.it]][SaaSNow S\.r\.l\.][mar 2018–dic 2020]
- Responsabile di un portafoglio di 80 clienti SMB nel settore software gestionale, con focus su adozione e soddisfazione\.
- Progettazione di un percorso di onboarding strutturato che ha ridotto il time\-to\-value medio da 60 a 35 giorni\.
- Monitoraggio di KPI di salute del cliente tramite CRM e dashboard, con interventi proattivi sui clienti a rischio\.
- Gestione delle escalation e coordinamento tra supporto tecnico, prodotto e sales\.
- Contributo alla creazione del team Customer Success e alla definizione dei processi interni\.
#strong[Parole chiave]: Onboarding, Time\-to\-value, KPI, CRM, Escalation

#resume-subheading[Account Manager][#link("https://www.digitaliaconsulting.it")[https\:\/\/www\.digitaliaconsulting\.it]][Digitalia Consulting][set 2014–feb 2018]
- Gestione della relazione commerciale con clienti nei settori manifatturiero e servizi, per un portafoglio da 1,2 milioni di euro\.
- Analisi dei bisogni, presentazione di soluzioni digitali e negoziazione dei contratti\.
- Coordinamento di progetti di trasformazione digitale con team interni e partner esterni\.
- Raggiungimento del 115% degli obiettivi di vendita annuali nel 2017\.
#strong[Parole chiave]: Account Management, Negotiation, Digital Transformation, Sales
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: C1, Business English])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francese]: Competenza professionale limitata], [#strong[Parole chiave]: A2, Conversazione di base])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Customer Success Management]: Esperto], [#strong[Parole chiave]: Onboarding, Fidelizzazione, Customer Journey, QBR, Churn prevention, Upselling])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CRM e Analisi Dati]: Avanzato], [#strong[Parole chiave]: Salesforce, HubSpot, Gainsight, Power BI, Tableau, Excel avanzato])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Comunicazione e Negoziazione]: Avanzato], [#strong[Parole chiave]: Presentazioni executive, Gestione escalation, Mediazione, Storytelling])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Project Management]: Avanzato], [#strong[Parole chiave]: Agile, Jira, Asana, Gestione stakeholder])
]

= Premi
#resume-pad[
#resume-subheading[Customer Success Leader of the Year][][NexaCloud Italia][nov 2023]
Riconoscimento interno per i risultati ottenuti nella riduzione del churn e nella costruzione di un modello di customer success scalabile per il segmento enterprise\.

#resume-subheading[Excellence in Customer Retention][][SaaSNow S\.r\.l\.][feb 2020]
Premio assegnato per il miglior tasso di rinnovo del portafoglio SMB e per l\'implementazione di un programma di adozione proattiva\.
]

= Certificazioni
#resume-pad[
#resume-subheading[Certified Customer Success Manager (CCSM)][#link("https://www.successcoaching.com/certified-customer-success-manager")[https\:\/\/www\.successcoaching\.com\/certified\-customer\-success\-manager]][SuccessCOACHING][mar 2022]

#resume-subheading[Salesforce Certified Administrator][#link("https://trailhead.salesforce.com/credentials/administrator")[https\:\/\/trailhead\.salesforce\.com\/credentials\/administrator]][Salesforce][giu 2021]

#resume-subheading[HubSpot Sales Software Certification][#link("https://academy.hubspot.com/courses/sales-software")[https\:\/\/academy\.hubspot\.com\/courses\/sales\-software]][HubSpot Academy][set 2020]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[Ridurre il churn con l\'adozione proattiva][#link("https://www.customersuccessitalia.it/whitepaper/churn-adozione-proattiva")[https\:\/\/www\.customersuccessitalia\.it\/whitepaper\/churn\-adozione\-proattiva]][Customer Success Italia][giu 2023]
- Analisi delle principali cause di abbandono nei SaaS B2B e delle metriche di early warning\.
- Modello operativo per segmentare i clienti in base al rischio e attivare interventi mirati\.
- Casi studio su onboarding, health score e business review\.
]

= Progetti
#resume-pad[
#resume-subheading[Programma di onboarding scale\-up][#link("https://www.nexacloud.it/customer-success")[https\:\/\/www\.nexacloud\.it\/customer\-success]][Percorso di onboarding standardizzato per clienti enterprise e mid\-market\.][gen 2022–dic 2022]
- Ridisegno del percorso di onboarding con template, milestone e responsabilità chiare\.
- Riduzione del time\-to\-first\-value del 30% e aumento del CSAT post\-onboarding da 4,2 a 4,7\.
- Creazione di una libreria di contenuti self\-service e formazione per i clienti\.
#strong[Parole chiave]: Onboarding, Time\-to\-value, CSAT, Self\-service

#resume-subheading[Health score per il portafoglio clienti][#link("https://www.nexacloud.it/insights/health-score")[https\:\/\/www\.nexacloud\.it\/insights\/health\-score]][Modello predittivo per identificare i clienti a rischio di abbandono\.][mar 2023–set 2023]
- Definizione di indicatori di adozione, engagement e soddisfazione ponderati per segmento\.
- Integrazione del modello con CRM e dashboard operative per i Customer Success Manager\.
- Aumento del 25% degli interventi proattivi sui clienti a rischio\.
#strong[Parole chiave]: Health score, Analytics, Churn, CRM
]

= Interessi
#resume-pad[
#strong[Innovazione digitale]: AI generativa, Product\-led growth, Design thinking

#strong[Sport e benessere]: Running, Yoga, Trekking

#strong[Comunità e formazione]: Mentoring, Public speaking
]

= Volontariato
#resume-pad[
#resume-subheading[Mentor][#link("https://www.womenintechitalia.it")[https\:\/\/www\.womenintechitalia\.it]][Women in Tech Italia][set 2021–Presente]
- Mentoring individuale per giovani professioniste che desiderano intraprendere carriere nel customer success e nelle vendite SaaS\.
- Partecipazione a incontri di orientamento e workshop su comunicazione, negoziazione e crescita professionale\.
- Supporto alla community nella creazione di percorsi di sviluppo e networking\.
]