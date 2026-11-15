#set document(
  title: "Giulia Ferrari - Data Scientist | Machine Learning e Analytics",
  author: "Giulia Ferrari",
  keywords: "Apprendimento Automatico, Ingegneria dei Dati, Statistica Applicata, Visualizzazione dei Dati, Cloud e MLOps, Comunicazione dei Risultati",
  description: "Résumé of Giulia Ferrari",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Giulia Ferrari]] #v(-0.2em)

#text(size: 1.44em)[Data Scientist | Machine Learning e Analytics]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 347 123 4567")[\+39 347 123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:giulia.ferrari@example.it")[giulia\.ferrari\@example\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.giuliaferrari-data.it")[https\:\/\/www\.giuliaferrari\-data\.it]

Via Giovanni Battista Pirelli 18, Milano, Lombardia, Italia, 20124

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/giulia-ferrari-data")[giulia\-ferrari\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/giuliaferrari")[giuliaferrari] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/1234567/giulia-ferrari")[giulia\-ferrari]
]

= Informazioni personali

#resume-pad[
Data Scientist con oltre 7 anni di esperienza nella progettazione di modelli predittivi e soluzioni analitiche per i settori energia, bancario e pagamenti digitali\.

- Esperienza end\-to\-end\: dalla raccolta dei requisiti alla messa in produzione e al monitoraggio di modelli\.
- Solida base statistica e di apprendimento automatico, con attenzione alla validazione, all\'interpretabilità e all\'impatto di business\.
- Capacità di comunicare risultati complessi a stakeholder tecnici e non tecnici, in italiano e in inglese\.
- Approccio collaborativo, mentoria di junior e forte orientamento alla qualità del dato\.
]

= Formazione
#resume-pad[
#resume-subheading[Università degli Studi di Milano\-Bicocca][#link("https://www.unimib.it")[https\:\/\/www\.unimib\.it]][Laurea magistrale, Data Science, Punteggio: 110\/110 e lode][2015\-09\-15–2017\-07\-20]
- Formazione avanzata in statistica, machine learning e gestione di grandi volumi di dati\.
- Sviluppo di progetti applicativi con Python, R e SQL su casi reali di previsione e segmentazione\.
- Particolare attenzione alla validazione dei modelli, alla comunicazione dei risultati e all\'impatto organizzativo\.
#strong[Corsi]: Statistica Computazionale, Apprendimento Automatico, Basi di Dati e Data Warehousing, Analisi delle Serie Temporali, Data Mining, Visualizzazione dei Dati, Metodi Bayesiani, Etica e Governance dei Dati

#resume-subheading[Università degli Studi di Milano][#link("https://www.unimi.it")[https\:\/\/www\.unimi\.it]][Laurea triennale, Statistica e Informatica, Punteggio: 108\/110][2012\-09\-10–2015\-07\-15]
- Solide basi quantitativa e informatica per l\'analisi dei dati\.
- Esperienza pratica con dataset reali, pulizia dei dati e reportistica statistica\.
#strong[Corsi]: Statistica Descrittiva, Probabilità e Inferenza, Programmazione in Python, Basi di Dati Relazionali, Analisi Esplorativa dei Dati, Metodi di Campionamento
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Data Scientist Senior][#link("https://www.nexi.it")[https\:\/\/www\.nexi\.it]][Nexi Digital][2022\-03\-01–Presente]
- Guido un team di 4 data scientist nello sviluppo di modelli predittivi per il rilevamento delle frodi e la personalizzazione delle offerte\.
- Progettato e implementato pipeline MLOps su AWS per l\'addestramento, il versionamento e il monitoraggio continuo dei modelli\.
- Ridotto del 18% i falsi positivi nel sistema antifrode migliorando le regole di validazione e l\'interpretabilità dei modelli\.
- Collaborato con product manager, ingegneri e team compliance per tradurre requisiti di business in soluzioni dati misurabili\.
- Mentorato due junior data scientist e promosso pratiche di code review e documentazione tecnica\.
#strong[Parole chiave]: Modelli predittivi, MLOps, Customer Analytics, Leadership tecnica

#resume-subheading[Data Scientist][#link("https://www.enelx.com/it/it")[https\:\/\/www\.enelx\.com\/it\/it]][Enel X][2019\-01\-15–2022\-02\-28]
- Sviluppato modelli di previsione della domanda energetica a livello giornaliero e orario, con riduzione dell\'errore MAPE dal 12% all\'8%\.
- Realizzato segmentazioni clienti tramite clustering e analisi di sopravvivenza per campagne di retention mirate\.
- Automatizzato la reportistica mensile con Airflow e Power BI, riducendo il tempo di preparazione da 3 giorni a 4 ore\.
- Condotto test A\/B e analisi causali per valutare l\'impatto delle iniziative commerciali\.
#strong[Parole chiave]: Previsione della domanda, Customer Analytics, Test A\/B, Airflow

#resume-subheading[Analista Dati][#link("https://www.unicredit.it")[https\:\/\/www\.unicredit\.it]][UniCredit][2017\-09\-01–2019\-01\-10]
- Analizzato portafogli creditizi e costruito dashboard per il monitoraggio degli indicatori di rischio\.
- Sviluppato modelli statistici per la previsione di insolvenza e la valutazione del merito creditizio\.
- Pulito e integrato dati provenienti da fonti eterogenee, migliorando la qualità e la coerenza delle analisi\.
- Presentato risultati periodici ai team risk e business con report chiari e visualizzazioni efficaci\.
#strong[Parole chiave]: Rischio di credito, SQL, Dashboard, Statistica
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: IELTS 8\.0, C1])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francese]: Competenza professionale limitata], [#strong[Parole chiave]: DELF B1])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Apprendimento Automatico]: Esperto], [#strong[Parole chiave]: Python, scikit\-learn, TensorFlow, PyTorch, XGBoost])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Ingegneria dei Dati]: Avanzato], [#strong[Parole chiave]: SQL, Spark, Airflow, dbt, Databricks])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Statistica Applicata]: Esperto], [#strong[Parole chiave]: Test A\/B, Inferenza causale, Serie temporali, Analisi di sopravvivenza])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Visualizzazione dei Dati]: Avanzato], [#strong[Parole chiave]: Power BI, Tableau, Looker, Plotly, Streamlit])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud e MLOps]: Avanzato], [#strong[Parole chiave]: AWS, Azure, Docker, Kubernetes, MLflow])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Comunicazione dei Risultati]: Avanzato], [#strong[Parole chiave]: Narrazione dei dati, Presentazioni executive, Documentazione tecnica, Facilitazione workshop])
]

= Premi
#resume-pad[
#resume-subheading[Premio Innovazione Dati 2023][][Associazione Italiana per l\'Intelligenza Artificiale][2023\-06\-15]
Riconoscimento per il progetto \"Previsione della Domanda Energetica\", selezionato tra le migliori applicazioni di intelligenza artificiale in ambito utilities\.

#resume-subheading[Borsa di Studio per Merito][][Università degli Studi di Milano\-Bicocca][2016\-10\-01]
Borsa di studio assegnata per eccellenza accademica durante il corso di laurea magistrale in Data Science\.
]

= Certificazioni
#resume-pad[
#resume-subheading[Google Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google Cloud][2021\-05\-20]

#resume-subheading[AWS Certified Machine Learning – Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2020\-11\-12]

#resume-subheading[Microsoft Certified\: Azure Data Scientist Associate][#link("https://learn.microsoft.com/en-us/certifications/azure-data-scientist/")[https\:\/\/learn\.microsoft\.com\/en\-us\/certifications\/azure\-data\-scientist\/]][Microsoft][2022\-09\-08]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[Modelli predittivi per la manutenzione di reti elettriche intelligenti][#link("https://doi.org/10.1234/risa.2022.12.004")[https\:\/\/doi\.org\/10\.1234\/risa\.2022\.12\.004]][Rivista Italiana di Statistica Applicata][2022\-12\-01]
- Confronto tra modelli di serie temporali e apprendimento supervisionato per la manutenzione predittiva\.
- Analisi dell\'impatto delle variabili meteo e di carico sulla probabilità di guasto\.

#resume-subheading[Segmentazione dei clienti tramite apprendimento non supervisionato][#link("https://doi.org/10.5678/cids.2021.09.012")[https\:\/\/doi\.org\/10\.5678\/cids\.2021\.09\.012]][Atti della Conferenza Italiana di Data Science][2021\-09\-15]
- Applicazione di clustering e riduzione della dimensionalità a dati di consumo energetico\.
- Valutazione della stabilità dei segmenti e delle implicazioni per campagne di marketing\.
]

= Progetti
#resume-pad[
#resume-subheading[Previsione della Domanda Energetica][#link("https://github.com/giuliaferrari/energy-demand-forecast")[https\:\/\/github\.com\/giuliaferrari\/energy\-demand\-forecast]][Sistema di previsione della domanda energetica per un\'azienda utilities, con modelli a livello giornaliero e orario\.][2021\-03\-01–2021\-12\-20]
- Costruito pipeline di feature engineering con dati storici, meteo e calendario\.
- Confrontato Prophet, XGBoost e LSTM; selezionato il modello con il miglior errore in validazione temporale\.
- Pubblicato dashboard interattiva per il monitoraggio delle previsioni e degli scostamenti\.
#strong[Parole chiave]: Serie temporali, Prophet, XGBoost, Airflow, Dashboard

#resume-subheading[Analisi della Soddisfazione Clienti][#link("https://github.com/giuliaferrari/customer-satisfaction")[https\:\/\/github\.com\/giuliaferrari\/customer\-satisfaction]][Analisi di recensioni e sondaggi per identificare i fattori chiave della soddisfazione clienti\.][2020\-06\-01–2020\-11\-30]
- Applicato NLP per estrarre topic e sentiment da recensioni in italiano\.
- Integrato i risultati con dati transazionali per stimare l\'impatto sulla soddisfazione\.
- Presentato insight actionable al team customer experience\.
#strong[Parole chiave]: NLP, Topic modeling, Sentiment analysis, Power BI
]

= Interessi
#resume-pad[
#strong[Sport]: Corsa, Sci, Yoga

#strong[Musica]: Pianoforte, Jazz

#strong[Divulgazione]: Mentoraggio, Open data, Scrittura tecnica
]

= Volontariato
#resume-pad[
#resume-subheading[Mentor Data Science][#link("https://www.datiperilbenecomune.it")[https\:\/\/www\.datiperilbenecomune\.it]][Dati per il Bene Comune][2020\-01\-15–2024\-06\-30]
- Supportato associazioni no profit nella definizione di indicatori e dashboard per misurare l\'impatto sociale\.
- Tenuto laboratori introduttivi su Python, analisi dati e visualizzazione per volontari e studenti\.
- Contribuito alla pubblicazione di dataset aperti e linee guida per la qualità del dato\.
]