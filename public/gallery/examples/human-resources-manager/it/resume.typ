#set document(
  title: "Giulia Bianchi - Responsabile Risorse Umane e Sviluppo del Talento",
  author: "Giulia Bianchi",
  keywords: "Gestione delle Risorse Umane, Diritto del Lavoro e Relazioni Sindacali, Sistemi Informativi del Personale, Sviluppo Organizzativo, Competenze Trasversali",
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
  lang: "en", number-type: "old-style",
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

#text(size: 1.44em)[Responsabile Risorse Umane e Sviluppo del Talento]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 02 555 0182")[\+39 02 555 0182] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:giulia.bianchi@giuliabianchi-hr.it")[giulia\.bianchi\@giuliabianchi\-hr\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.giuliabianchi-hr.it")[https\:\/\/www\.giuliabianchi\-hr\.it]

Via Alessandro Manzoni 12, Milano, Lombardia, Italy, 20121

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/giulia-bianchi-hr")[giulia\-bianchi\-hr]
]

= Basics

#resume-pad[
Responsabile Risorse Umane con oltre dieci anni di esperienza nella guida di gruppi di lavoro e nella definizione di strategie orientate alle persone\.

- Gestione completa del ciclo del talento\: selezione, inserimento, formazione, valutazione delle prestazioni e sviluppo delle carriere\.
- Esperienza consolidata nelle relazioni sindacali, nella contrattazione collettiva e nella conformità normativa\.
- Capacità di tradurre gli obiettivi aziendali in politiche e strumenti concreti per le Risorse Umane\.
- Orientamento ai risultati, alla qualità delle relazioni interne e al benessere organizzativo\.
]

= Education
#resume-pad[
#resume-subheading[Università Commerciale Luigi Bocconi][#link("https://www.unibocconi.it")[https\:\/\/www\.unibocconi\.it]][Master, Economia e Gestione delle Risorse Umane, Score: 110\/110 con lode][Sep 2009–Jul 2011]
- Formazione avanzata nella gestione strategica delle Risorse Umane e nelle relazioni industriali\.
- Partecipazione a laboratori e progetti con aziende del territorio su selezione, valutazione e sviluppo del personale\.
- Tesi sperimentale sui modelli di valutazione delle prestazioni nelle imprese di servizi\.
#strong[Courses]: Gestione Strategica delle Risorse Umane, Diritto del Lavoro e Relazioni Industriali, Comportamento Organizzativo, Economia del Personale, Sistemi di Valutazione delle Prestazioni, Statistica per le Scienze Sociali

#resume-subheading[Università degli Studi di Milano][#link("https://www.unimi.it")[https\:\/\/www\.unimi\.it]][Bachelor, Scienze dell\'Organizzazione e del Lavoro, Score: 108\/110][Sep 2006–Jul 2009]
- Acquisizione di solide basi in sociologia del lavoro, psicologia delle organizzazioni e diritto sindacale\.
- Sviluppo di competenze analitiche attraverso ricerche sul campo e analisi dei dati organizzativi\.
#strong[Courses]: Sociologia del Lavoro, Psicologia delle Organizzazioni, Diritto Sindacale, Economia Aziendale, Metodologia della Ricerca Sociale
]

= Work
#resume-pad[
#resume-subheading[Responsabile Risorse Umane][#link("https://www.lombardiaenergia.it")[https\:\/\/www\.lombardiaenergia\.it]][Lombardia Energia S\.p\.A\.][Jan 2020–Present]
- Guida di un gruppo di 6 professionisti delle Risorse Umane, con responsabilità su selezione, formazione, sviluppo e amministrazione del personale\.
- Definizione e attuazione della strategia delle Risorse Umane in linea con gli obiettivi aziendali e con il piano industriale\.
- Gestione delle relazioni sindacali e della contrattazione collettiva, con riduzione del contenzioso del 30% in tre anni\.
- Introduzione di un modello di valutazione delle prestazioni e dei percorsi di carriera, aumentando la mobilità interna del 25%\.
- Progettazione di programmi di benessere aziendale e di diversità e inclusione, con un incremento del coinvolgimento dei dipendenti di 18 punti percentuali\.
- Monitoraggio degli indicatori chiave di prestazione delle Risorse Umane e predisposizione della reportistica per la direzione\.
#strong[Keywords]: Strategia delle Risorse Umane, Relazioni sindacali, Sviluppo del talento, Benessere aziendale, Diversità e inclusione, Budget del personale

#resume-subheading[Referente Risorse Umane per le Funzioni Aziendali][#link("https://www.technovaitalia.it")[https\:\/\/www\.technovaitalia\.it]][TechNova Italia S\.r\.l\.][Mar 2016–Dec 2019]
- Partner di riferimento per le funzioni commerciale e operativa nella gestione delle tematiche delle Risorse Umane\.
- Gestione completa dei processi di selezione per profili tecnici e manageriali\.
- Supporto ai responsabili di funzione nella valutazione delle prestazioni, nella definizione degli obiettivi e nei piani di sviluppo individuali\.
- Progettazione ed erogazione di percorsi formativi, con oltre 1\.200 ore di formazione erogate in tre anni\.
- Implementazione di un nuovo sistema informativo del personale e digitalizzazione dei processi di inserimento e valutazione\.
- Partecipazione a progetti di riorganizzazione aziendale e gestione del cambiamento\.
#strong[Keywords]: Selezione del personale, Valutazione delle prestazioni, Formazione, Sistemi del personale, Gestione del cambiamento

#resume-subheading[Specialista Sviluppo Organizzativo][#link("https://www.gruppoeditorialeaurora.it")[https\:\/\/www\.gruppoeditorialeaurora\.it]][Gruppo Editoriale Aurora S\.p\.A\.][Sep 2011–Feb 2016]
- Analisi dei fabbisogni organizzativi e progettazione di percorsi di sviluppo e carriera per circa 400 dipendenti\.
- Realizzazione di indagini sul clima aziendale e definizione di piani di azione per migliorare il benessere organizzativo\.
- Mappatura delle competenze e supporto alla revisione del modello organizzativo\.
- Coordinamento di attività formative e gestione dei rapporti con enti di formazione esterni\.
- Contributo alla redazione di policy interne in materia di gestione delle Risorse Umane\.
#strong[Keywords]: Analisi dei fabbisogni, Percorsi di carriera, Clima aziendale, Formazione, Mappatura delle competenze
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italian]: Native or Bilingual Proficiency], [#strong[Keywords]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Full Professional Proficiency], [#strong[Keywords]: Certificazione C1, Inglese commerciale])

#grid(columns: (1fr, auto), align: (left, right), [#strong[French]: Limited Working Proficiency], [#strong[Keywords]: B1, Conversazione professionale])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestione delle Risorse Umane]: Expert], [#strong[Keywords]: Selezione del personale, Valutazione delle prestazioni, Sviluppo del talento, Pianificazione della successione, Benessere aziendale])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Diritto del Lavoro e Relazioni Sindacali]: Advanced], [#strong[Keywords]: Contrattazione collettiva, Relazioni sindacali, Gestione delle controversie, Conformità normativa])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Sistemi Informativi del Personale]: Advanced], [#strong[Keywords]: SAP SuccessFactors, Zucchetti, Excel avanzato, Power BI, Sistemi del personale])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Sviluppo Organizzativo]: Advanced], [#strong[Keywords]: Analisi dei fabbisogni, Mappatura delle competenze, Gestione del cambiamento, Clima aziendale, Diversità e inclusione])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Competenze Trasversali]: Expert], [#strong[Keywords]: Comunicazione efficace, Negoziazione, Capacità di guida, Risoluzione dei problemi, Pensiero analitico])
]

= Awards
#resume-pad[
#resume-subheading[Premio Eccellenza Risorse Umane][][Associazione Italiana per la Direzione del Personale][Nov 2022]
Riconoscimento assegnato a professionisti che si sono distinti per innovazione nella gestione delle Risorse Umane e per l\'impatto misurabile sui risultati aziendali\.
]

= Certificates
#resume-pad[
#resume-subheading[Certificazione Professionista Senior Risorse Umane][#link("https://www.iicru.it/certificazioni")[https\:\/\/www\.iicru\.it\/certificazioni]][Istituto Italiano di Certificazione delle Risorse Umane][Mar 2021]

#resume-subheading[Esperto in Diritto del Lavoro][#link("https://www.consulentidellavoro.mi.it")[https\:\/\/www\.consulentidellavoro\.mi\.it]][Ordine dei Consulenti del Lavoro di Milano][Jun 2018]
]

= Publications
#resume-pad[
#resume-subheading[Gestione del talento nell\'era del lavoro ibrido][#link("https://www.rivistaitalianadirigenzapersonale.it/articoli/talento-lavoro-ibrido")[https\:\/\/www\.rivistaitalianadirigenzapersonale\.it\/articoli\/talento\-lavoro\-ibrido]][Rivista Italiana di Direzione del Personale][Apr 2023]
- Analisi delle principali tendenze del lavoro ibrido e delle implicazioni per la gestione del talento\.
- Proposta
]