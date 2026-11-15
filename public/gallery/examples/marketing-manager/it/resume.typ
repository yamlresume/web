#set document(
  title: "Marco Ferrari - Responsabile Marketing | Strategia, Brand e Crescita Digitale",
  author: "Marco Ferrari",
  keywords: "Marketing Digitale, Analisi e Performance, Brand e Comunicazione, CRM e Automazione, Leadership e Team Management",
  description: "Résumé of Marco Ferrari",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Marco Ferrari]] #v(-0.2em)

#text(size: 1.44em)[Responsabile Marketing | Strategia, Brand e Crescita Digitale]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 347 123 4567")[\+39 347 123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:marco.ferrari.marketing@gmail.com")[marco\.ferrari\.marketing\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marcoferrari-marketing.it")[https\:\/\/www\.marcoferrari\-marketing\.it]

Via Torino 45, Milano, Lombardia, Italia, 20123

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marco-ferrari-marketing")[marco\-ferrari\-marketing] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@marcoferrari_mkt")[marcoferrari\_mkt] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M224.3 141a115 115 0 1 0 -.6 230 115 115 0 1 0 .6-230zm-.6 40.4a74.6 74.6 0 1 1 .6 149.2 74.6 74.6 0 1 1 -.6-149.2zm93.4-45.1a26.8 26.8 0 1 1 53.6 0 26.8 26.8 0 1 1 -53.6 0zm129.7 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM399 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.instagram.com/marcoferrari.mkt")[marcoferrari\.mkt]
]

= Informazioni personali

#resume-pad[
Responsabile Marketing con oltre 8 anni di esperienza nella definizione e nell\'esecuzione di strategie di marketing B2C e B2B\. Specializzato in gestione del brand, marketing digitale, e\-commerce e analisi delle performance\.

- Ho guidato team cross\-funzionali e budget fino a 1,2 milioni di euro, ottenendo crescita misurabile in traffico, conversioni e vendite\.
- Competenze solide in SEO\/SEM, campagne Meta e Google, CRM, marketing dei contenuti e dashboard KPI\.
- Abituato a lavorare con vendite, prodotto e agenzie esterne per trasformare dati e insight in piani di marketing concreti\.
]

= Formazione
#resume-pad[
#resume-subheading[Università Commerciale Luigi Bocconi][#link("https://www.unibocconi.it")[https\:\/\/www\.unibocconi\.it]][Laurea magistrale, Marketing e Comunicazione d\'Impresa, Punteggio: 110\/110 e lode][2013\-09\-01–2015\-07\-15]
- Formazione avanzata in strategia di marketing, branding e analisi dei dati
- Tesi su modelli di attribuzione per il marketing omnicanale
- Esperienza pratica tramite case study con aziende del settore retail e food
#strong[Corsi]: Marketing Strategico, Comportamento del Consumatore, Ricerche di Mercato, Gestione del Brand, Comunicazione Integrata, Marketing Digitale, Analisi dei Dati per il Marketing

#resume-subheading[Università degli Studi di Padova][#link("https://www.unipd.it")[https\:\/\/www\.unipd\.it]][Laurea triennale, Economia e Management, Punteggio: 108\/110][2010\-09\-01–2013\-07\-15]
- Solide basi economiche e manageriali
- Approfondimento di statistica e analisi quantitative applicate al business
#strong[Corsi]: Economia Aziendale, Statistica, Diritto Privato, Marketing, Organizzazione Aziendale
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Responsabile Marketing][#link("https://www.luminaretail.it")[https\:\/\/www\.luminaretail\.it]][Lumina Retail Italia][2022\-03\-01–Presente]
- Guido il piano marketing annuale per 3 linee di prodotto, con un budget di 1,2 milioni di euro
- Coordino un team di 6 persone tra brand, digital, contenuti e CRM
- Ho aumentato del 28% il traffico organico e del 19% il tasso di conversione e\-commerce in 18 mesi
- Ho introdotto un modello di attribuzione multi\-touch e dashboard mensili per il monitoraggio delle performance
- Collaboro con vendite, prodotto e agenzie esterne per allineare campagne, promozioni e lancio di nuovi prodotti
#strong[Parole chiave]: Strategia di marketing, Gestione del brand, E\-commerce, Analisi dati, Team leadership

#resume-subheading[Specialista Marketing Senior][#link("https://www.verdevitafood.it")[https\:\/\/www\.verdevitafood\.it]][VerdeVita Food][2019\-06\-01–2022\-02\-28]
- Ho sviluppato campagne digitali integrate su Meta, Google e piattaforme di content discovery
- Ho gestito il calendario editoriale e la produzione di contenuti per blog, newsletter e social media
- Ho contribuito a un incremento del 35% delle vendite online nel segmento biologico
- Ho coordinato ricerche di mercato e test A\/B per ottimizzare landing page e materiali promozionali
- Ho lavorato con il team CRM per segmentare il database e migliorare il tasso di apertura delle email
#strong[Parole chiave]: Campagne digitali, Marketing dei contenuti, SEO\/SEM, Email marketing, Test A\/B

#resume-subheading[Specialista Marketing][#link("https://www.tecnonovasoluzioni.it")[https\:\/\/www\.tecnonovasoluzioni\.it]][TecnoNova Soluzioni][2016\-09\-01–2019\-05\-31]
- Ho supportato la creazione di materiali commerciali, presentazioni e casi studio per il team vendite
- Ho gestito la presenza social e il sito web aziendale, con focus su generazione di lead B2B
- Ho organizzato webinar ed eventi di settore, raccogliendo oltre 800 contatti qualificati
- Ho monitorato KPI di campagna e preparato report periodici per la direzione
#strong[Parole chiave]: Generazione di lead, Marketing B2B, Eventi, Social media, Reporting
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: Certificazione C1, Uso quotidiano professionale])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francese]: Competenza professionale limitata], [#strong[Parole chiave]: Conversazione base])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Marketing Digitale]: Esperto], [#strong[Parole chiave]: SEO\/SEM, Google Ads, Meta Ads, Marketing dei contenuti, Social media])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analisi e Performance]: Avanzato], [#strong[Parole chiave]: Google Analytics 4, Looker Studio, Dashboard KPI, Test A\/B, Modelli di attribuzione])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Brand e Comunicazione]: Avanzato], [#strong[Parole chiave]: Posizionamento del brand, Copywriting, Relazioni pubbliche digitali, Gestione agenzie])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CRM e Automazione]: Intermedio], [#strong[Parole chiave]: HubSpot, Mailchimp, Segmentazione, Automazione marketing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Leadership e Team Management]: Avanzato], [#strong[Parole chiave]: Gestione budget, Mentoring, Gestione progetti, Gestione stakeholder])
]

= Premi
#resume-pad[
#resume-subheading[Premio Eccellenza Marketing 2023][][Associazione Italiana Marketing][2023\-11\-15]
Riconoscimento per la campagna omnicanale \"Lumina Casa Green\", selezionata per impatto su brand awareness e sostenibilità\.

#resume-subheading[Migliore Campagna Digitale \- Retail][][Digital Marketing Awards Italia][2021\-10\-01]
Premio assegnato alla campagna \"VerdeVita a Tavola\" per creatività, risultati di vendita e integrazione tra canali online e offline\.
]

= Certificazioni
#resume-pad[
#resume-subheading[Certificazione Google Analytics 4][#link("https://skillshop.withgoogle.com/")[https\:\/\/skillshop\.withgoogle\.com\/]][Google][2023\-05\-10]

#resume-subheading[Certificazione HubSpot Content Marketing][#link("https://academy.hubspot.com/courses/content-marketing")[https\:\/\/academy\.hubspot\.com\/courses\/content\-marketing]][HubSpot Academy][2022\-09\-20]

#resume-subheading[Certificazione Meta Digital Marketing Associate][#link("https://www.facebook.com/business/learn/certification")[https\:\/\/www\.facebook\.com\/business\/learn\/certification]][Meta][2021\-04\-12]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[Il ruolo dei dati nella strategia di marketing omnicanale][#link("https://www.marketingoggi.it/articoli/dati-marketing-omnicanale")[https\:\/\/www\.marketingoggi\.it\/articoli\/dati\-marketing\-omnicanale]][Marketing Oggi][2024\-02\-10]
- Analisi dei modelli di attribuzione e delle metriche chiave per collegare investimenti marketing e risultati di business
- Casi pratici di dashboard e governance dei dati per team marketing e vendite
]

= Progetti
#resume-pad[
#resume-subheading[Campagna Nazionale Rilancio VerdeVita][#link("https://www.verdevitafood.it/campagne/rilancio")[https\:\/\/www\.verdevitafood\.it\/campagne\/rilancio]][Campagna integrata per il rilancio della linea biologica VerdeVita con focus su sostenibilità e stagionalità\.][2021\-03\-01–2021\-10\-31]
- Ho coordinato creatività, media planning e contenuti per TV digitale, social, newsletter e punto vendita
- Ho gestito un budget di 450\.000 euro e un aumento del 35% delle vendite online della linea
- Ho impostato test creativi e report settimanali per ottimizzare il ritorno della spesa pubblicitaria
#strong[Parole chiave]: Campagna integrata, Sostenibilità, Media planning, Retail

#resume-subheading[Customer Data Platform Lumina Retail][#link("https://www.luminaretail.it/progetti/customer-data-platform")[https\:\/\/www\.luminaretail\.it\/progetti\/customer\-data\-platform]][Progetto di consolidamento dei dati cliente per personalizzare campagne e migliorare la customer experience\.][2023\-01\-15–2023\-12\-20]
- Ho definito i requisiti marketing e i casi d\'uso per la segmentazione dinamica del cliente
- Ho collaborato con IT e CRM per integrare dati da e\-commerce, negozi e assistenza clienti
- Ho introdotto journey personalizzate con un incremento del 22% nel tasso di riattivazione
#strong[Parole chiave]: Customer experience, Segmentazione, Automazione marketing, Data strategy
]

= Interessi
#resume-pad[
#strong[Tecnologia e Innovazione]: Intelligenza artificiale, Marketing analytics, Prodotti digitali

#strong[Sostenibilità]: Consumo consapevole, Economia circolare

#strong[Sport all\'aperto]: Corsa, Ciclismo, Trekking

#strong[Lettura]: Saggi di marketing, Narrativa contemporanea
]

= Volontariato
#resume-pad[
#resume-subheading[Mentor per giovani marketer][#link("https://www.marketingperilbenecomune.it")[https\:\/\/www\.marketingperilbenecomune\.it]][Fondazione Marketing per il Bene Comune][2020\-01\-15–Presente]
- Affianco studenti e giovani professionisti nello sviluppo di competenze di marketing strategico e digitale
- Partecipo a incontri di orientamento e workshop su personal branding e ricerca del lavoro
- Collaboro all\'organizzazione di eventi formativi gratuiti per associazioni no profit
]