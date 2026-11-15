#set document(
  title: "Marco Bianchi - Ingegnere Meccanico Senior specializzato in progettazione e produzione",
  author: "Marco Bianchi",
  keywords: "Progettazione Meccanica, Analisi e Simulazione, Gestione Progetti, Produzione e Materiali",
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

#text(size: 1.44em)[Ingegnere Meccanico Senior specializzato in progettazione e produzione]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+39 02 1234 5678")[\+39 02 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:marco.bianchi@example.it")[marco\.bianchi\@example\.it] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marcobianchi-ingegnere.it")[https\:\/\/www\.marcobianchi\-ingegnere\.it]

Via Roma 45, Milano, Lombardia, Italia, 20121

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marcobianchi-mech")[marcobianchi\-mech]
]

= Informazioni personali

#resume-pad[
- Ingegnere meccanico con oltre 8 anni di esperienza nella progettazione e nello sviluppo di componenti e sistemi meccanici\.
- Specializzato in progettazione CAD 3D, analisi FEM e ottimizzazione di prodotti per i settori automotive e industriale\.
- Esperienza nella gestione di progetti dalla fase di concept fino alla produzione, collaborando con team multifunzionali\.
- Forte orientamento al problem solving, alla qualità e al miglioramento continuo, con conoscenza delle metodologie Lean e Six Sigma\.
]

= Formazione
#resume-pad[
#resume-subheading[Politecnico di Milano][#link("https://www.polimi.it")[https\:\/\/www\.polimi\.it]][Laurea magistrale, Ingegneria Meccanica, Punteggio: 110\/110 e lode][set 2012–lug 2017]
- Formazione solida in progettazione meccanica, con focus su calcolo strutturale e simulazione numerica\.
- Tesi sperimentale sulla ottimizzazione topologica di componenti per riduzione di peso\.
#strong[Corsi]: Progettazione Meccanica Assistita dal Calcolo, Analisi agli Elementi Finiti, Tecnologie di Produzione, Dinamica dei Sistemi Meccanici, Materiali per l\'Ingegneria, Gestione della Produzione Industriale
]

= Esperienza professionale
#resume-pad[
#resume-subheading[Ingegnere Meccanico Senior][#link("https://www.meccanicaavanzata.it")[https\:\/\/www\.meccanicaavanzata\.it]][Meccanica Avanzata S\.p\.A\.][mar 2020–Presente]
- Responsabile della progettazione e dello sviluppo di nuovi componenti meccanici per macchine industriali\.
- Coordinamento di un team di 5 ingegneri e disegnatori, con gestione delle attività di progettazione e validazione\.
- Implementazione di metodologie di analisi FEM per la verifica strutturale e termica dei componenti\.
- Collaborazione con il reparto produzione per ottimizzare i processi di fabbricazione e ridurre i costi\.
- Gestione di progetti chiave, rispettando tempi e budget, con reportistica periodica alla direzione tecnica\.
#strong[Parole chiave]: Progettazione meccanica, Analisi FEM, Gestione progetti, Produzione snella, SolidWorks

#resume-subheading[Ingegnere di Progettazione][#link("https://www.ingegneriadinamica.it")[https\:\/\/www\.ingegneriadinamica\.it]][Ingegneria Dinamica S\.r\.l\.][set 2017–feb 2020]
- Progettazione di componenti meccanici e assiemi utilizzando CAD 3D (SolidWorks e CATIA)\.
- Esecuzione di analisi strutturali e termiche con software FEM per validare i progetti\.
- Redazione di documentazione tecnica, disegni costruttivi e specifiche di prodotto\.
- Supporto al reparto qualità per l\'analisi dei difetti e l\'implementazione di azioni correttive\.
- Partecipazione a progetti di miglioramento continuo e riduzione dei costi\.
#strong[Parole chiave]: CAD 3D, CATIA, Analisi strutturale, Disegno tecnico, Qualità
]

= Lingue
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Italiano]: Madrelingua o bilingue], [#strong[Parole chiave]: Madrelingua])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglese]: Competenza professionale completa], [#strong[Parole chiave]: Certificazione C1, Inglese tecnico])
]

= Competenze
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Progettazione Meccanica]: Esperto], [#strong[Parole chiave]: SolidWorks, CATIA, AutoCAD, Disegno tecnico, Tolleranze])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analisi e Simulazione]: Avanzato], [#strong[Parole chiave]: Analisi FEM, ANSYS, Calcolo strutturale, Termica])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestione Progetti]: Avanzato], [#strong[Parole chiave]: Pianificazione, Coordinamento team, Metodologie Lean, Six Sigma])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Produzione e Materiali]: Intermedio], [#strong[Parole chiave]: Tecnologie di produzione, Metallurgia, Controllo qualità, Manifattura additiva])
]

= Premi
#resume-pad[
#resume-subheading[Premio Innovazione Tecnica][][Associazione Italiana di Meccanica][nov 2022]
Riconoscimento per il contributo allo sviluppo di un componente meccanico innovativo che ha ridotto i costi di produzione del 15%\.
]

= Certificazioni
#resume-pad[
#resume-subheading[Certified SolidWorks Professional][#link("https://www.solidworks.com/certification")[https\:\/\/www\.solidworks\.com\/certification]][Dassault Systèmes][giu 2019]

#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][ott 2023]
]

= Pubblicazioni
#resume-pad[
#resume-subheading[Ottimizzazione topologica di componenti meccanici per la riduzione di peso][#link("https://www.riim.it/articoli/ottimizzazione-topologica")[https\:\/\/www\.riim\.it\/articoli\/ottimizzazione\-topologica]][Rivista Italiana di Ingegneria Meccanica][apr 2021]
- Studio sull\'applicazione dell\'ottimizzazione topologica per la progettazione di componenti leggeri e resistenti\.
- Analisi dei risultati ottenuti tramite simulazioni FEM e validazione sperimentale\.
]

= Progetti
#resume-pad[
#resume-subheading[Sviluppo di un nuovo sistema di trasmissione][#link("https://www.meccanicaavanzata.it/progetti/trasmissione")[https\:\/\/www\.meccanicaavanzata\.it\/progetti\/trasmissione]][Progettazione e prototipazione di un sistema di trasmissione ad alta efficienza per macchine industriali\.][gen 2021–dic 2022]
- Progettazione meccanica del sistema, inclusi ingranaggi, alberi e supporti\.
- Analisi FEM per la verifica delle sollecitazioni e della durata\.
- Realizzazione di prototipi e test di validazione\.
- Riduzione del 20% delle perdite energetiche rispetto al sistema precedente\.
#strong[Parole chiave]: Trasmissione, Ingranaggi, Prototipazione, Analisi FEM
]

= Interessi
#resume-pad[
#strong[Motori e Veicoli]: Formula 1, Restauro auto d\'epoca, Meccatronica

#strong[Tecnologie Emergenti]: Stampa 3D, Materiali compositi, Automazione industriale
]

= Volontariato
#resume-pad[
#resume-subheading[Mentor Tecnico][#link("https://www.aimi.it")[https\:\/\/www\.aimi\.it]][Associazione Ingegneri Meccanici Italiani][set 2018–Presente]
- Supporto a studenti e giovani ingegneri nello sviluppo di competenze pratiche di progettazione meccanica\.
- Organizzazione di workshop su CAD, FEM e metodologie di progettazione\.
- Partecipazione a eventi di orientamento e divulgazione tecnica\.
]