#set document(
  title: "Luca Bianchi - Data Engineer | Piattaforme Dati e Analytics Cloud",
  author: "Luca Bianchi",
  keywords: "Data Engineering, Cloud & Data Warehouse, Analytics & BI, Linguaggi e Strumenti",
  description: "Résumé of Luca Bianchi",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Luca Bianchi]] #v(-0.2em)

#text(size: 1.44em)[Data Engineer | Piattaforme Dati e Analytics Cloud]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 346 123 4567")[\+39 346 123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:luca.bianchi.data@gmail.com")[luca\.bianchi\.data\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://lucabianchi.dev")[https\:\/\/lucabianchi\.dev]

Via Tortona 31, Milano, Lombardia, Italia, 20144

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/luca-bianchi-data")[luca\-bianchi\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/lucabianchi-data")[lucabianchi\-data]
]

= Informazioni personali

#resume-pad[
Data Engineer con oltre 9 anni di esperienza nella progettazione e nello sviluppo di piattaforme dati scalabili su cloud\.
Specializzato in pipeline ETL\/ELT, modellazione dei dati e orchestrazione con Apache Airflow e dbt\.
Esperienza consolidata con AWS, Snowflake e BigQuery, maturata in contesti Agile e team interfunzionali\.
Orientato alla qualità del dato, all\'automazione e al monitoraggio delle pipeline\.
Appassionato di open source e della diffusione della cultura data\-driven\.
]

= Formazione
#resume-pad[
#resume-subheading[Politecnico di Milano][#link("https://www.polimi.it")[https\:\/\/www\.polimi\.it]][Laurea magistrale, Ingegneria Informatica, Punteggio: 110\/110 e lode][set 2014–lug 2016]
- Tesi magistrale su architetture dati distribuite per l\'analisi di grandi volumi di dati
- Approfondimento di basi di dati relazionali e NoSQL, modellazione dimensionale e processi ETL
- Partecipazione a progetti di gruppo con metodologie Agile e presentazioni tecniche
#strong[Corsi]: Basi di Dati e Sistemi Informativi, Ingegneria del Software, Sistemi Distribuiti, Machine Learning, Cloud Computing, Architetture dei Sistemi di Elaborazione, Sicurezza dei Sistemi Informatici

#resume-subheading[Università degli Studi di Milano][#link("https://www.unimi.it")[https\:\/\/www\.unimi\.it]][Laurea triennale, Ingegneria Informatica, Punteggio: 108\/110][set 2011–lug 2014]
- Solida preparazione in programmazione, algoritmi e basi di dati
- Esperienza pratica con Java, Python e SQL in progetti universitari
- Sviluppo di competenze di analisi e problem solving
#strong[Corsi]: Fondamenti di Programmazione, Algoritmi e Strutture Dati, Basi di Dati, Reti di Calcolatori, Sistemi Operativi, Analisi Matematica
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Data Engineer Senior][#link("https://www.fintechlabitalia.it")[https\:\/\/www\.fintechlabitalia\.it]][FintechLab Italia][gen 2022–Presente]
- Progettazione e implementazione di una piattaforma dati cloud\-native su AWS con Snowflake e dbt
- Orchestrazione di oltre 120 pipeline giornaliere con Apache Airflow, riducendo i tempi di elaborazione del 35%
- Definizione di standard di qualità del dato e osservabilità con Great Expectations e monitoraggio su Grafana
- Collaborazione con team prodotto e compliance per la modellazione di dati finanziari e reportistica regolamentare
- Mentoring di due data engineer junior e revisione delle pull request
#strong[Parole chiave]: Data Platform, Apache Airflow, dbt, Snowflake, AWS, Data Quality

#resume-subheading[Data Engineer][#link("https://www.retailanalytics.it")[https\:\/\/www\.retailanalytics\.it]][Retail Analytics S\.p\.A\.][feb 2019–dic 2021]
- Sviluppo di pipeline ETL\/ELT per l\'integrazione di dati da CRM, ERP e piattaforme e\-commerce
- Modellazione di un data warehouse su Google BigQuery con viste materializzate e partizionamento
- Automazione dei flussi con Airflow e Python, con test automatici e deploy tramite CI\/CD
- Ottimizzazione delle query SQL e riduzione dei costi di elaborazione del 20%
- Realizzazione di dashboard self\-service in Looker per i team commerciale e marketing
#strong[Parole chiave]: ETL\/ELT, Google BigQuery, Python, Apache Airflow, Looker, Data Warehouse

#resume-subheading[Business Intelligence Analyst][#link("https://www.consulenzadatimilano.it")[https\:\/\/www\.consulenzadatimilano\.it]][Consulenza Dati Milano][set 2016–gen 2019]
- Raccolta dei requisiti e sviluppo di report e dashboard in Power BI per clienti del settore manifatturiero
- Scrittura di query SQL complesse su SQL Server e PostgreSQL per analisi operative e direzionali
- Supporto alla definizione di KPI e modelli dati con i referenti business
- Documentazione dei processi di reporting e formazione degli utenti finali
#strong[Parole chiave]: Power BI, SQL Server, PostgreSQL, KPI, Data Visualization
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: IELTS 7\.5, C1 Business English])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francese]: Competenza professionale limitata], [#strong[Parole chiave]: DELF B1])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Engineering]: Esperto], [#strong[Parole chiave]: Python, SQL, Apache Spark, PySpark, Apache Airflow, dbt, Kafka, ETL\/ELT])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud & Data Warehouse]: Avanzato], [#strong[Parole chiave]: AWS, Snowflake, Google BigQuery, Azure, PostgreSQL, Docker, Kubernetes, Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analytics & BI]: Avanzato], [#strong[Parole chiave]: Power BI, Tableau, Looker, Data Modeling, Data Quality, Data Governance])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Linguaggi e Strumenti]: Avanzato], [#strong[Parole chiave]: Scala, Java, Bash, Git, Jira, Confluence, Agile\/Scrum])
]

= Premi
#resume-pad[
#resume-subheading[Premio Data Innovation][][Data Summit Italia][nov 2023]
Riconoscimento per il progetto di osservabilità delle pipeline dati che ha ridotto del 40% il tempo medio di risoluzione degli incidenti\.

#resume-subheading[Miglior Progetto Dati dell\'Anno][][Retail Analytics S\.p\.A\.][dic 2020]
Premio interno per la realizzazione del data warehouse su BigQuery e delle dashboard self\-service per il team commerciale\.
]

= Certificazioni
#resume-pad[
#resume-subheading[AWS Certified Data Engineer \- Associate][#link("https://aws.amazon.com/certification/certified-data-engineer-associate/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-data\-engineer\-associate\/]][Amazon Web Services][mar 2024]

#resume-subheading[Google Professional Data Engineer][#link("https://cloud.google.com/learn/certification/data-engineer")[https\:\/\/cloud\.google\.com\/learn\/certification\/data\-engineer]][Google Cloud][giu 2022]

#resume-subheading[dbt Analytics Engineering Certification][#link("https://www.getdbt.com/certifications/analytics-engineer/")[https\:\/\/www\.getdbt\.com\/certifications\/analytics\-engineer\/]][dbt Labs][set 2023]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[Pipeline dati affidabili\: pattern di osservabilità per team analytics][#link("https://www.ridata.it/articoli/osservabilita-pipeline-dati")[https\:\/\/www\.ridata\.it\/articoli\/osservabilita\-pipeline\-dati]][Rivista Italiana di Data Engineering][apr 2023]
- Articolo tecnico su metriche di qualità, monitoraggio e gestione degli incidenti nelle pipeline dati
- Condivisione di pattern applicabili con Airflow, dbt e Great Expectations
- Casi pratici tratti da contesti fintech e retail
]

= Progetti
#resume-pad[
#resume-subheading[Data Quality Radar][#link("https://github.com/lucabianchi-data/data-quality-radar")[https\:\/\/github\.com\/lucabianchi\-data\/data\-quality\-radar]][Framework open source per il monitoraggio della qualità dei dati nelle pipeline Airflow\.][gen 2023–giu 2023]
- Progettazione di controlli di qualità riutilizzabili per tabelle Snowflake e BigQuery
- Integrazione con Airflow per l\'esecuzione schedulata e la notifica degli alert
- Documentazione e rilascio su PyPI con oltre 300 download mensili
#strong[Parole chiave]: Data Quality, Great Expectations, Apache Airflow, Python

#resume-subheading[Self\-Service Analytics Hub][#link("https://github.com/lucabianchi-data/analytics-hub")[https\:\/\/github\.com\/lucabianchi\-data\/analytics\-hub]][Piattaforma interna per l\'accesso governato ai dati e la creazione di dashboard self\-service\.][mar 2021–nov 2022]
- Modellazione di dataset certificati in dbt e Snowflake per i team business
- Definizione di ruoli e permessi per l\'accesso ai dati sensibili
- Formazione di oltre 60 utenti su Looker e sulle best practice di analytics
#strong[Parole chiave]: Analytics, Looker, Snowflake, dbt
]

= Interessi
#resume-pad[
#strong[Open Source]: Apache Airflow, dbt, Great Expectations

#strong[Sport]: Ciclismo, Nuoto, Trekking

#strong[Fotografia]: Paesaggio, Street photography
]

= Volontariato
#resume-pad[
#resume-subheading[Mentore Data Engineering][#link("https://www.womenintechitalia.it")[https\:\/\/www\.womenintechitalia\.it]][Women in Tech Italia][set 2021–Presente]
- Mentoring per donne che intraprendono percorsi di carriera nel data engineering
- Supporto nella preparazione di colloqui tecnici e nella definizione di piani di crescita
- Partecipazione a incontri di community e workshop su SQL e pipeline dati

#resume-subheading[Volontario e speaker][#link("https://www.datasciencemilano.it")[https\:\/\/www\.datasciencemilano\.it]][Data Science Milano][gen 2020–dic 2023]
- Organizzazione di meetup mensili su data engineering, analytics e machine learning
- Interventi su orchestrazione di pipeline e data quality
- Coordinamento di volontari e relazioni con speaker e sponsor
]