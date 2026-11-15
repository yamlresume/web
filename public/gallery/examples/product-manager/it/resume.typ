#set document(
  title: "Giulia Bianchi - Product Manager senior per SaaS B2B e trasformazione digitale",
  author: "Giulia Bianchi",
  keywords: "Strategia di prodotto, Discovery e ricerca, Analytics di prodotto, Metodologie Agile, Leadership e stakeholder, Strumenti",
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

#text(size: 1.44em)[Product Manager senior per SaaS B2B e trasformazione digitale]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 347 892 4510")[\+39 347 892 4510] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:giulia.bianchi@giuliabianchi.it")[giulia\.bianchi\@giuliabianchi\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.giuliabianchi.it")[https\:\/\/www\.giuliabianchi\.it]

Via Alessandro Volta 42, Milano, Lombardia, Italia, 20154

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/giuliabianchi-pm")[giuliabianchi\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@giulia.bianchi")[giulia\.bianchi]
]

= Informazioni personali

#resume-pad[
Product Manager con oltre otto anni di esperienza nella definizione, nello sviluppo e nella crescita di prodotti digitali SaaS B2B\. Lavoro a stretto contatto con team cross\-funzionali di prodotto, design, engineering e go\-to\-market, combinando ascolto del cliente, analisi dei dati e una solida capacità di prioritizzazione\.

- Definisco visione, roadmap e OKR allineati agli obiettivi di business
- Guido discovery, user research, sperimentazione e analisi dei KPI di prodotto
- Traduco bisogni complessi in requisiti chiari, user story e prototipi validati
- Coordino stakeholder internazionali in contesti agile, regolamentati e in rapida evoluzione
]

= Formazione
#resume-pad[
#resume-subheading[Politecnico di Milano][#link("https://www.polimi.it/")[https\:\/\/www\.polimi\.it\/]][Laurea magistrale, Ingegneria Gestionale, Punteggio: 110\/110 e lode][set 2014–lug 2016]
- Percorso focalizzato su product management, innovazione e gestione di progetti complessi
- Tesi sperimentale sull\'adozione di piattaforme SaaS nelle PMI italiane
#strong[Corsi]: Strategia e innovazione tecnologica, Marketing industriale, Gestione dei progetti, Economia digitale, Analytics per il business

#resume-subheading[Università Bocconi][#link("https://www.unibocconi.it/")[https\:\/\/www\.unibocconi\.it\/]][Laurea triennale, Economia e Management, Punteggio: 108\/110][set 2011–lug 2014]
#strong[Corsi]: Economia aziendale, Statistica, Sistemi informativi, Ricerche di mercato
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Senior Product Manager][#link("https://www.nexacloud.it")[https\:\/\/www\.nexacloud\.it]][NexaCloud S\.p\.A\.][mar 2021–Presente]
- Guido la strategia di prodotto per una piattaforma SaaS B2B di automazione documentale, con un portafoglio da 6 milioni di euro di ricavi annuali\.
- Definisco roadmap trimestrale e OKR in collaborazione con sales, customer success, design e engineering\.
- Ho ridotto del 32% il time\-to\-value per i nuovi clienti tramite onboarding guidato e semplificazione dei flussi\.
- Ho introdotto un processo di discovery continuo con oltre 120 interviste a clienti e stakeholder in due anni\.
- Ho coordinato il lancio di tre moduli chiave, contribuendo a un aumento del 18% nell\'adozione della piattaforma\.
#strong[Parole chiave]: Roadmap, OKR, SaaS B2B, Discovery, Go\-to\-market, Data\-driven

#resume-subheading[Product Manager][#link("https://www.finlabdigital.it")[https\:\/\/www\.finlabdigital\.it]][FinLab Digital S\.r\.l\.][gen 2018–feb 2021]
- Ho gestito il ciclo di vita di un prodotto di pagamenti digitali per PMI, dalla discovery al go\-to\-market\.
- Ho aumentato del 27% l\'attivazione mensile grazie a un redesign del flusso di onboarding e a campagne in\-app\.
- Ho introdotto metriche di prodotto condivise tra business e technology, riducendo i tempi decisionali del 20%\.
- Ho coordinato un team distribuito di 12 persone tra prodotto, design, engineering e operations\.
#strong[Parole chiave]: Pagamenti digitali, Onboarding, Metriche di prodotto, Go\-to\-market, PMI

#resume-subheading[Product Owner][#link("https://www.retailhubitalia.it")[https\:\/\/www\.retailhubitalia\.it]][RetailHub Italia][set 2016–dic 2017]
- Ho gestito il backlog e le priorità di una piattaforma e\-commerce B2C con oltre 1 milione di visitatori mensili\.
- Ho collaborato con marketing e UX per lanciare un programma di personalizzazione dell\'esperienza di acquisto\.
- Ho contribuito a un incremento del 12% nel tasso di conversione attraverso test A\/B e ottimizzazione del funnel\.
#strong[Parole chiave]: E\-commerce, Backlog, A\/B testing, UX, Conversione
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: IELTS 8\.0, C1 certificato])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francese]: Competenza professionale limitata], [#strong[Parole chiave]: DELF B1])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Strategia di prodotto]: Esperto], [#strong[Parole chiave]: Roadmap, OKR, Visione di prodotto, Prioritizzazione, Jobs\-to\-be\-Done])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Discovery e ricerca]: Avanzato], [#strong[Parole chiave]: Interviste utente, User testing, Prototipazione, Design thinking])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analytics di prodotto]: Avanzato], [#strong[Parole chiave]: SQL, Mixpanel, Amplitude, Looker, A\/B testing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Metodologie Agile]: Esperto], [#strong[Parole chiave]: Scrum, Kanban, SAFe, Backlog management])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Leadership e stakeholder]: Avanzato], [#strong[Parole chiave]: Stakeholder management, Mentoring, Comunicazione, Negoziazione])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Strumenti]: Avanzato], [#strong[Parole chiave]: Jira, Confluence, Figma, Miro, Notion])
]

= Premi
#resume-pad[
#resume-subheading[Premio Innovazione Digitale][][Osservatorio Innovazione Digitale][nov 2022]
Riconoscimento assegnato per il progetto di onboarding intelligente della piattaforma NexaCloud, con un impatto misurabile sulla riduzione del time\-to\-value e sull\'adozione dei clienti\.
]

= Certificazioni
#resume-pad[
#resume-subheading[Certificazione Scrum Product Owner (CSPO)][#link("https://www.scrumalliance.org/community/profile/gbianchi")[https\:\/\/www\.scrumalliance\.org\/community\/profile\/gbianchi]][Scrum Alliance][giu 2019]

#resume-subheading[Certificazione Google Analytics 4][#link("https://skillshop.withgoogle.com/")[https\:\/\/skillshop\.withgoogle\.com\/]][Google][set 2023]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[Product discovery nelle PMI italiane\: un modello operativo][#link("https://www.economiaemanagement.it/articoli/product-discovery-pmi")[https\:\/\/www\.economiaemanagement\.it\/articoli\/product\-discovery\-pmi]][Economia & Management][ott 2021]
Articolo che presenta un modello di discovery leggero e misurabile per team di prodotto in aziende PMI, basato su casi studio e interviste sul campo\.
]

= Referenze
#resume-pad[
#resume-subheading[Marco Ferri][Vicepresidente Prodotto, NexaCloud S\.p\.A\.][marco\.ferri\@nexacloud\.it][\+39 02 9475 6321]
Giulia ha guidato con grande equilibrio la trasformazione del nostro processo di prodotto, combinando visione strategica, ascolto del cliente e attenzione ai risultati misurabili\.
]

= Progetti
#resume-pad[
#resume-subheading[Programma Beta Aperta][#link("https://www.nexacloud.it/beta-aperta")[https\:\/\/www\.nexacloud\.it\/beta\-aperta]][Iniziativa di co\-creazione con clienti selezionati per validare nuovi moduli della piattaforma\.][feb 2022–set 2022]
- Ho reclutato e coordinato 25 clienti beta in tre segmenti di mercato
- Ho strutturato un ciclo di feedback bisettimanale con product design e engineering
- Il programma ha generato 14 miglioramenti prioritizzati e due nuove funzionalità candidate
#strong[Parole chiave]: Co\-creazione, Beta testing, Customer feedback, Validazione

#resume-subheading[Evoluzione del modello di pricing][][Progetto di revisione del packaging e del modello di prezzo per il segmento mid\-market\.][apr 2023–dic 2023]
- Ho condotto analisi di valore percepito e benchmark competitivo su cinque mercati
- Ho definito tre nuovi pacchetti con il supporto di sales, finance e customer success
- Il nuovo modello ha contribuito a un aumento del 9% nel valore medio del contratto
#strong[Parole chiave]: Pricing, Packaging, Value\-based pricing, Mid\-market
]

= Interessi
#resume-pad[
#strong[Tecnologia e innovazione]: Intelligenza artificiale, Prodotti no\-code, Open data

#strong[Sport e benessere]: Running, Yoga, Trekking

#strong[Musica]: Pianoforte, Concerti
]

= Volontariato
#resume-pad[
#resume-subheading[Mentor di prodotto][#link("https://www.digitalwomen.it/")[https\:\/\/www\.digitalwomen\.it\/]][Digital Women Italia][gen 2020–Presente]
- Affianco giovani professioniste nella definizione del portfolio e nella preparazione ai colloqui per ruoli di product management
- Partecipo a incontri mensili e workshop su discovery, priorizzazione e comunicazione con gli stakeholder
- Ho contribuito a organizzare due edizioni del programma di mentorship
]