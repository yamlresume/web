#set document(
  title: "Sophie Bakker - Data Scientist met passie voor voorspellende modellen",
  author: "Sophie Bakker",
  keywords: "Machine Learning, Statistiek, Data Engineering, Data Visualisatie, Datamanagement",
  description: "Résumé of Sophie Bakker",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "nl", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Sophie Bakker]] #v(-0.2em)

#text(size: 1.44em)[Data Scientist met passie voor voorspellende modellen]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+31 6 12345678")[\+31 6 12345678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:sophie.bakker@datavak.nl")[sophie\.bakker\@datavak\.nl] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.sophiebakker.nl")[https\:\/\/www\.sophiebakker\.nl]

Herengracht 123, Amsterdam, Noord\-Holland, Nederland, 1011 AB

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/sophiebakker")[sophiebakker] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/sophiebakker")[sophiebakker]
]

= Basis Informatie

#resume-pad[
Data Scientist met ruim 6 jaar ervaring in het ontwikkelen en implementeren van
datagedreven oplossingen voor complexe vraagstukken\.

- Ontwerpt en implementeert voorspellende modellen voor klantverloop, vraagvoorspelling en fraudedetectie\.
- Combineert sterke analytische vaardigheden met een pragmatische, bedrijfsgerichte aanpak\.
- Ervaren met Python, R, SQL en cloudplatformen zoals AWS en Google Cloud\.
- Begeleidt junior datascientists en draagt bij aan de datastrategie van de organisatie\.
]

= Opleidingen
#resume-pad[
#resume-subheading[Universiteit van Amsterdam][#link("https://www.uva.nl")[https\:\/\/www\.uva\.nl]][Master, Data Science, Score: 8\.2][sep 2017–jul 2019]
- Afstudeeronderzoek naar causale inferentie in observationele studies, beoordeeld met een 9\.
- Specialisatie in voorspellende modellen en datagedreven besluitvorming\.
#strong[Cursussen]: Machine Learning, Statistical Learning, Big Data Technologies, Deep Learning, Data Visualisatie, Ethiek en Databeleid

#resume-subheading[Universiteit Utrecht][#link("https://www.uu.nl")[https\:\/\/www\.uu\.nl]][Bachelor, Kunstmatige Intelligentie, Score: 7\.6][sep 2014–jul 2017]
- Brede basis in AI\-technieken, statistiek en softwareontwikkeling\.
- Minor Ondernemerschap gevolgd aan de Universiteit Utrecht\.
#strong[Cursussen]: Logica en Redeneren, Algoritmiek, Datastructuren, Probabilistische Modellen, Mens\-Machine Interactie, Cognitiewetenschap
]

= Werkervaring
#resume-pad[
#resume-subheading[Senior Data Scientist][#link("https://www.nova-analytics.nl")[https\:\/\/www\.nova\-analytics\.nl]][Nova Analytics B\.V\.][jan 2022–Heden]
- Geeft leiding aan de ontwikkeling van schaalbare machine\-learning\-pipelines voor klanten in de financiële sector\.
- Verbeterde het churnmodel met 15% nauwkeurigheid door feature\-engineering en modeloptimalisatie\.
- Implementeerde MLOps\-praktijken zoals CI\/CD en modelmonitoring, wat de time\-to\-market van modellen met 40% verkortte\.
- Adviseert het management over datastrategie en bouwt aan een sterk data science\-team\.
#strong[Trefwoorden]: Python, Machine Learning, MLOps, Strategie, Teamlead

#resume-subheading[Data Scientist][#link("https://www.zichtdata.nl")[https\:\/\/www\.zichtdata\.nl]][Zicht Data BV][sep 2019–dec 2021]
- Analyseerde grote datasets om logistieke processen efficiënter te maken\.
- Ontwikkelde realtime dashboards met Python, Streamlit en Tableau voor het monitoren van KPI\'s\.
- Werkte nauw samen met productowners en domeinexperts om databehoeften te vertalen naar analyses\.
- Voerde A\/B\-testen en statistische analyses uit ter ondersteuning van productbeslissingen\.
#strong[Trefwoorden]: Python, SQL, Data\-analyse, Tableau, A\/B\-testen

#resume-subheading[Data Analyst (stage)][#link("https://www.datazichtlabs.nl")[https\:\/\/www\.datazichtlabs\.nl]][Datazicht Labs][feb 2019–jul 2019]
- Ondersteunde het team bij het opschonen, samenvoegen en analyseren van data voor beleidsonderzoek\.
- Realiseerde interactieve visualisaties met R en R Shiny\.
- Droeg bij aan datakwaliteitsrapportages en verbeterde de metadata van datasets\.
#strong[Trefwoorden]: R, Data Cleaning, Visualisatie, Rapportage
]

= Talen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Nederlands]: Moedertaal of tweetalige vaardigheid], [#strong[Trefwoorden]: Moedertaal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engels]: Volledige professionele vaardigheid], [#strong[Trefwoorden]: Cambridge C2, Zakelijk Engels])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Duits]: Beperkte werkvaardigheid], [#strong[Trefwoorden]: Basisvaardigheden])
]

= Vaardigheden
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Machine Learning]: Expert], [#strong[Trefwoorden]: Python, scikit\-learn, TensorFlow, PyTorch, XGBoost, LightGBM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Statistiek]: Geavanceerd], [#strong[Trefwoorden]: R, Hypothesetoetsing, Tijdreeksen, A\/B\-testen, Causale Inferentie])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Engineering]: Intermediair], [#strong[Trefwoorden]: SQL, Apache Spark, Airflow, Docker, dbt, AWS])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Visualisatie]: Geavanceerd], [#strong[Trefwoorden]: Tableau, Power BI, matplotlib, seaborn, ggplot2, Plotly, D3\.js])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Datamanagement]: Intermediair], [#strong[Trefwoorden]: Data governance, Datakwaliteit, Metadata, AVG\/GDPR])
]

= Onderscheidingen
#resume-pad[
#resume-subheading[Master Scriptieprijs Data Science][][Nederlandse Vereniging voor Data Science][nov 2019]
Bekroond voor de beste afstudeerscriptie op het gebied van causale inferentie met observationele data\.

#resume-subheading[KLM Datathon \- Best Model][][KLM][jun 2021]
Team behaalde de eerste plaats met een voorspellingsmodel voor bagageafhandelingsvertragingen\.
]

= Certificaten
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][mei 2022]

#resume-subheading[Google Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google][nov 2020]
]

= Publicaties
#resume-pad[
#resume-subheading[Een vergelijking van gradient boosting technieken voor vraagvoorspelling in de retailsector][#link("https://www.tijdschriftdata.nl/artikel/vergelijking-gradient-boosting")[https\:\/\/www\.tijdschriftdata\.nl\/artikel\/vergelijking\-gradient\-boosting]][Tijdschrift voor Toegepaste Data Science][feb 2022]
Onderzoekt de prestaties van XGBoost, LightGBM en CatBoost op retaildata en geeft praktische aanbevelingen voor het toepassen van deze technieken\.
]

= Projecten
#resume-pad[
#resume-subheading[Energieprognose voor slimme wijken][#link("https://github.com/sophiebakker/energy-forecast")[https\:\/\/github\.com\/sophiebakker\/energy\-forecast]][Het project combineert tijdreeksanalyse met deep learning\-modellen (LSTM) en biedt een API voor het ontsluiten van de voorspellingen\. De resultaten worden gevalideerd aan de hand van publieke data van het Centraal Bureau voor de Statistiek\.
][mrt 2020–jul 2020]
Open\-source project dat energieverbruik op buurtniveau voorspelt op basis van historische data en weersvoorspellingen\.
#strong[Trefwoorden]: Python, Tijdreeksen, LSTM, Energietransitie

#resume-subheading[Fraudedetectiesysteem voor betaalverkeer][#link("https://github.com/sophiebakker/fraud-detection")[https\:\/\/github\.com\/sophiebakker\/fraud\-detection]][Implementeerde een realtime fraudedetectiepijplijn met Apache Kafka voor streaming en scikit\-learn voor de detectiemodellen\. Evalueerde het systeem op een gesimuleerde transactiedataset en behaalde een F1\-score van 0,91\.
][feb 2019–jun 2019]
Eindproject van de masteropleiding\: realtime fraudedetectiesysteem voor transacties\.
#strong[Trefwoorden]: Fraudedetectie, Kafka, scikit\-learn, Realtime
]

= Interesses
#resume-pad[
#strong[Wielrennen]: Toertochten, Amstel Gold Race

#strong[Schaken]: Clubcompetitie, Strategie

#strong[Lezen]: Sciencefiction, Vakliteratuur

#strong[Koken]: Vegetarisch, Wereldkeuken
]

= Vrijwilligerswerk
#resume-pad[
#resume-subheading[Data Scientist (vrijwilliger)][#link("https://www.dataforgoodnl.nl")[https\:\/\/www\.dataforgoodnl\.nl]][Data for Good Nederland][jan 2020–Heden]
- Verzorgt data\-analyses voor non\-profitorganisaties, waaronder de optimalisatie van voedselbankdistributie\.
- Ondersteunt vrijwilligers met het uitvoeren van dataprojecten\.
]