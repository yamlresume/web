#set document(
  title: "Marco Bianchi - Analista Finanziario Senior",
  author: "Marco Bianchi",
  keywords: "Modellizzazione Finanziaria, Analisi di Bilancio, Valutazione d'Azienda, Gestione del Rischio, Strumenti Software",
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

#text(size: 1.44em)[Analista Finanziario Senior]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 345 678 9012")[\+39 345 678 9012] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:marco.bianchi@finanza.it")[marco\.bianchi\@finanza\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marcobianchi.it")[https\:\/\/www\.marcobianchi\.it]

Via della Moscova, 18, Milano, Lombardia, Italia, 20121

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marcobianchi")[marcobianchi]
]

= Informazioni personali

#resume-pad[
- Analista finanziario con oltre 7 anni di esperienza nella valutazione d\'azienda, modellizzazione finanziaria e analisi di bilancio\.
- Specializzato in settore bancario e assicurativo, con una solida conoscenza degli standard IFRS e dei mercati finanziari\.
- Esperto nell\'uso di Excel, VBA, Python e SQL per l\'analisi dati e l\'automazione di processi di reporting\.
- Capacità di comunicare efficacemente risultati complessi a stakeholder senior e team cross\-funzionali\.
]

= Formazione
#resume-pad[
#resume-subheading[Università Commerciale Luigi Bocconi][#link("https://www.unibocconi.it")[https\:\/\/www\.unibocconi\.it]][Laurea magistrale, Finanza, Punteggio: 110\/110 con lode][set 2014–lug 2016]
- Approfondita conoscenza della teoria finanziaria e delle applicazioni pratiche\.
- Sviluppo di competenze analitiche attraverso progetti di gruppo e casi di studio reali\.
- Partecipazione a competizioni di finanza e seminari con professionisti del settore\.
#strong[Corsi]: Finanza Aziendale, Mercati e Strumenti Finanziari, Analisi degli Investimenti, Risk Management, Economia dei Mercati Mobiliari, Bilancio e Analisi di Bilancio, Finanza Internazionale, Metodi Quantitativi per la Finanza
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Analista Finanziario Senior][#link("https://www.intesasanpaolo.com")[https\:\/\/www\.intesasanpaolo\.com]][Banca Intesa Sanpaolo][gen 2021–Presente]
- Responsabile della modellizzazione finanziaria per operazioni di M&A e valutazioni strategiche\.
- Coordinamento di un team di 3 analisti junior nella preparazione di report per il Consiglio di Amministrazione\.
- Sviluppo di modelli DCF e analisi di comparabili per aziende del settore bancario e assicurativo\.
- Automazione dei processi di reporting mensile tramite Python e SQL, riducendo i tempi del 40%\.
#strong[Parole chiave]: M&A, Modelli DCF, Analisi comparabili, Reporting, Python

#resume-subheading[Analista Finanziario][#link("https://www.generali.com")[https\:\/\/www\.generali\.com]][Generali Assicurazioni][set 2018–dic 2020]
- Analisi di bilancio e monitoraggio dei KPI finanziari per il segmento assicurativo\.
- Preparazione di previsioni finanziarie e scenari di stress test per il risk management\.
- Collaborazione con il team di controllo di gestione per l\'ottimizzazione dei costi\.
- Redazione di report trimestrali per il top management e gli investitori\.
#strong[Parole chiave]: Analisi di bilancio, KPI, Previsioni, Stress test, IFRS

#resume-subheading[Analista Finanziario Junior][#link("https://www2.deloitte.com/it/it.html")[https\:\/\/www2\.deloitte\.com\/it\/it\.html]][Deloitte Italia][set 2016–ago 2018]
- Supporto a progetti di due diligence finanziaria per acquisizioni nel settore industriale\.
- Costruzione di modelli finanziari e analisi di sensitività per valutazioni d\'azienda\.
- Preparazione di presentazioni e report per clienti e team interni\.
- Utilizzo avanzato di Excel e PowerPoint per l\'analisi e la comunicazione dei risultati\.
#strong[Parole chiave]: Due diligence, Valutazione, Excel, PowerPoint, Analisi di sensitività
]

= Lingue
#resume-pad[
#strong[Italiano]: Madrelingua o bilingue

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: IELTS 8\.0, Business English])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francese]: Competenza professionale limitata], [#strong[Parole chiave]: DELF B2])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Modellizzazione Finanziaria]: Esperto], [#strong[Parole chiave]: Excel, VBA, Python, SQL, Power BI])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analisi di Bilancio]: Avanzato], [#strong[Parole chiave]: IFRS, Contabilità, KPI, Rendicontazione])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Valutazione d\'Azienda]: Avanzato], [#strong[Parole chiave]: DCF, Comparabili, M&A, LBO])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestione del Rischio]: Intermedio], [#strong[Parole chiave]: VaR, Stress test, Basilea III, Risk management])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Strumenti Software]: Avanzato], [#strong[Parole chiave]: Bloomberg, Reuters, SAP, Tableau])
]

= Premi
#resume-pad[
#resume-subheading[Premio Eccellenza Accademica][][Università Bocconi][lug 2016]
Riconoscimento per il miglior rendimento accademico del corso di laurea magistrale in Finanza\.

#resume-subheading[Top Performer dell\'anno][][Banca Intesa Sanpaolo][dic 2022]
Premio assegnato per il contributo eccezionale al progetto di analisi finanziaria strategica\.
]

= Certificazioni
#resume-pad[
#resume-subheading[CFA Livello I][#link("https://www.cfainstitute.org")[https\:\/\/www\.cfainstitute\.org]][CFA Institute][giu 2019]

#resume-subheading[Financial Modeling & Valuation Analyst (FMVA)][#link("https://corporatefinanceinstitute.com")[https\:\/\/corporatefinanceinstitute\.com]][Corporate Finance Institute][mar 2020]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[L\'impatto della digitalizzazione sul settore bancario italiano][#link("https://www.rivistadifinanza.it/articolo")[https\:\/\/www\.rivistadifinanza\.it\/articolo]][Rivista di Finanza][nov 2021]
Analisi delle trasformazioni digitali e dei nuovi modelli di business nel settore bancario\.
]

= Progetti
#resume-pad[
#resume-subheading[Analisi di valutazione per acquisizione][#link("https://www.marcobianchi.it/progetti/valutazione-energia")[https\:\/\/www\.marcobianchi\.it\/progetti\/valutazione\-energia]][Progetto di valutazione di un\'azienda target nel settore energetico][gen 2022–apr 2022]
- Costruzione di un modello DCF, analisi comparabili e redazione di un report per il management\.
- Presentazione dei risultati al comitato investimenti\.
#strong[Parole chiave]: DCF, M&A, Energia
]

= Interessi
#resume-pad[
#strong[Investimenti]: Azioni, Obbligazioni, ETF

#strong[Lettura]: Economia, Storia, Biografie

#strong[Sport]: Tennis, Corsa, Sci
]

= Volontariato
#resume-pad[
#resume-subheading[Volontario][#link("https://www.insegnantiperitalia.it")[https\:\/\/www\.insegnantiperitalia\.it]][Insegnanti per l\'Italia][set 2019–giu 2020]
- Insegnamento di educazione finanziaria a studenti delle scuole superiori\.
- Sviluppo di materiali didattici interattivi per la comprensione dei concetti base di finanza\.
]