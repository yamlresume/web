#set document(
  title: "Sanne de Vries - AI-engineer | Machine Learning & MLOps",
  author: "Sanne de Vries",
  keywords: "Machine Learning, MLOps en Infrastructuur, Data Engineering, Cloud, AI-ethiek en Governance",
  description: "Résumé of Sanne de Vries",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Sanne de Vries]] #v(-0.2em)

#text(size: 1.44em)[AI\-engineer | Machine Learning & MLOps]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+31 6 1234 5678")[\+31 6 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:sanne@sannedevries.nl")[sanne\@sannedevries\.nl] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.sannedevries.nl")[https\:\/\/www\.sannedevries\.nl]

Keizersgracht 123, Amsterdam, Noord\-Holland, Nederland, 1015 CJ

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/sannedevries-ai")[sannedevries\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/sannedevries")[sannedevries] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/18422031/sanne-de-vries")[sanne\-de\-vries]
]

= Basis Informatie

#resume-pad[
AI\-engineer met 6\+ jaar ervaring in het ontwerpen, bouwen en opschalen van machine learning\-oplossingen van prototype tot productie\. Sterk in het vertalen van businessvragen naar meetbare modellen en het neerzetten van betrouwbare MLOps\-pipelines\.

- Ervaren in Python, PyTorch, TensorFlow en cloudplatformen (AWS, Azure, GCP)
- Combineert kennis van natuurlijke taalverwerking en computer vision met pragmatische software\-engineering
- Gedreven teamspeler die graag kennis deelt en multidisciplinaire teams meeneemt in verantwoorde AI
]

= Opleidingen
#resume-pad[
#resume-subheading[Technische Universiteit Delft][#link("https://www.tudelft.nl")[https\:\/\/www\.tudelft\.nl]][Master, Computerwetenschappen \- Kunstmatige Intelligentie, Score: 8\.2\/10][sep 2017–jul 2019]
- Gespecialiseerd in machine learning, natuurlijke taalverwerking en uitlegbaarheid van modellen
- Afstudeerproject over transparante deep learning\-modellen voor klinische besluitvorming, beoordeeld met een 9,0
- Praktijkervaring opgedaan via onderzoekssamenwerkingen met twee industriële partners
- Vakken op het snijvlak van algoritmiek, statistiek en verantwoorde AI
#strong[Cursussen]: Machine Learning, Deep Learning, Natuurlijke taalverwerking, Computer Vision, Reinforcement Learning, MLOps en Cloud Computing, Ethiek van AI, Data Engineering

#resume-subheading[Universiteit Utrecht][#link("https://www.uu.nl")[https\:\/\/www\.uu\.nl]][Bachelor, Informatiekunde, Score: 7\.8\/10][sep 2014–jun 2017]
- Brede basis in informatiesystemen, data\-analyse en softwareontwikkeling
- Minor gevolgd in toegepaste statistiek en datawetenschap
- Scriptie over predictive analytics voor openbare voorzieningen, afgerond met een 8,5
#strong[Cursussen]: Programmeren in Python, Databases en SQL, Statistiek en Kansrekening, Algoritmen en Datastructuren, Informatiesystemen, Inleiding Machine Learning
]

= Werkervaring
#resume-pad[
#resume-subheading[Senior AI\-engineer][#link("https://www.aidenanalytics.nl")[https\:\/\/www\.aidenanalytics\.nl]][Aiden Analytics][mrt 2022–Heden]
- Leidt een team van vier engineers dat generatieve AI\-toepassingen bouwt voor klanten in de financiële sector en de zorg
- Ontwierp een retrieval\-augmented generatiearchitectuur die de responstijd met 45% verlaagde en de feitelijke nauwkeurigheid meetbaar verbeterde
- Zette een MLOps\-platform op met CI\/CD, modelregistratie, monitoring en drift\-detectie, waardoor releases van weken naar dagen gingen
- Stelde interne richtlijnen op voor verantwoorde AI, inclusief bias\-testen, modelkaarten en menselijke controle bij hoog\-risico beslissingen
- Coacht junior engineers en verzorgt kennissessies over LLM\-evaluatie en prompt\-engineering
#strong[Trefwoorden]: MLOps, Generatieve AI, LLM\-evaluatie, Kubernetes, Verantwoorde AI

#resume-subheading[Machine Learning Engineer][#link("https://www.mediqdata.nl")[https\:\/\/www\.mediqdata\.nl]][MediQ Data][sep 2019–feb 2022]
- Ontwikkelde en productiseerde voorspelmodellen voor patiëntstromen, met een reductie van 18% in gemiste afspraken
- Bouwde NLP\-pipelines voor het anonimiseren en structureren van vrije tekst uit elektronische patiëntendossiers
- Automatiseerde het trainingsproces met PyTorch en Airflow, inclusief reproduceerbare experimenten en versiebeheer van datasets
- Werkte samen met data\-ethici en juristen om te voldoen aan de AVG en medische richtlijnen
- Presenteerde resultaten aan niet\-technische stakeholders en vertaalde die naar concrete productkeuzes
#strong[Trefwoorden]: PyTorch, NLP, Airflow, AVG, Voorspelmodellen

#resume-subheading[Data Scientist][#link("https://www.blauwdrukdigital.nl")[https\:\/\/www\.blauwdrukdigital\.nl]][Blauwdruk Digital][aug 2018–aug 2019]
- Analyseerde klantgedrag voor e\-commerceklanten en bouwde aanbevelingsmodellen die de conversie met 12% verhoogden
- Ontwikkelde herbruikbare feature\-engineering\-bibliotheek in Python die door drie teams werd gebruikt
- Realiseerde dashboards en rapportages in samenwerking met marketing\- en productteams
- Verkende en vergeleek modellen met A\/B\-testen en statistische validatie
#strong[Trefwoorden]: Python, Aanbevelingssystemen, A\/B\-testen, SQL, Feature Engineering
]

= Talen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Nederlands]: Moedertaal of tweetalige vaardigheid], [#strong[Trefwoorden]: Moedertaal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engels]: Volledige professionele vaardigheid], [#strong[Trefwoorden]: Dagelijks gebruikt op het werk, Technische documentatie])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Duits]: Beperkte werkvaardigheid], [#strong[Trefwoorden]: Basale gesprekken])
]

= Vaardigheden
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Machine Learning]: Expert], [#strong[Trefwoorden]: PyTorch, TensorFlow, Scikit\-learn, XGBoost, Hugging Face])

#grid(columns: (1fr, auto), align: (left, right), [#strong[MLOps en Infrastructuur]: Geavanceerd], [#strong[Trefwoorden]: Docker, Kubernetes, MLflow, Airflow, Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Engineering]: Geavanceerd], [#strong[Trefwoorden]: Python, SQL, Spark, dbt, Kafka])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud]: Geavanceerd], [#strong[Trefwoorden]: AWS SageMaker, Azure ML, Google Vertex AI])

#grid(columns: (1fr, auto), align: (left, right), [#strong[AI\-ethiek en Governance]: Intermediair], [#strong[Trefwoorden]: Modelkaarten, Bias\-detectie, Uitlegbaarheid, AVG])
]

= Onderscheidingen
#resume-pad[
#resume-subheading[Beste AI\-project van het jaar][][Dutch Data Science Awards][nov 2023]
Toegekend voor een retrieval\-augmented generatieoplossing die klantmedewerkers ondersteunt bij complexe vragen, met aantoonbaar hogere nauwkeurigheid en kortere afhandeltijd\.

#resume-subheading[Cum laude afstudeerproject][][Technische Universiteit Delft][jul 2019]
Scriptie over uitlegbaarheid van deep learning in de zorg beoordeeld met een 9,0 en genomineerd voor de facultaire scriptieprijs\.
]

= Certificaten
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][apr 2023]

#resume-subheading[Professional Machine Learning Engineer][#link("https://cloud.google.com/learn/certification")[https\:\/\/cloud\.google\.com\/learn\/certification]][Google Cloud][jun 2022]

#resume-subheading[Deep Learning Specialization][#link("https://www.coursera.org/specializations/deep-learning")[https\:\/\/www\.coursera\.org\/specializations\/deep\-learning]][DeepLearning\.AI][feb 2021]
]

= Publicaties
#resume-pad[
#resume-subheading[Uitlegbare voorspelmodellen voor klinische besluitvorming\: een praktijkstudie][#link("https://www.sciencedirect.com/journal/journal-of-biomedical-informatics")[https\:\/\/www\.sciencedirect\.com\/journal\/journal\-of\-biomedical\-informatics]][Journal of Biomedical Informatics][mrt 2020]
- Onderzoekt hoe attention\-visualisaties en counterfactual explanations clinici ondersteunen bij het interpreteren van modeluitkomsten
- Beschrijft een evaluatie met 42 clinici in twee ziekenhuizen
- Geeft praktische richtlijnen voor het documenteren en valideren van klinische modellen
]

= Referenties
#resume-pad[
#resume-subheading[Dr\. Marijke van den Berg][Hoogleraar Kunstmatige Intelligentie][m\.vandenberg\@tudelft\.nl][\+31 15 278 1234]
Sanne combineert sterke technische vaardigheden met een scherp oog voor de maatschappelijke impact van AI\. Ze is zelfstandig, communiceert helder met niet\-technische stakeholders en tilt teams naar een hoger niveau\.
]

= Projecten
#resume-pad[
#resume-subheading[Vraagbaak][#link("https://github.com/sannedevries/vraagbaak")[https\:\/\/github\.com\/sannedevries\/vraagbaak]][Open\-source assistent die interne documentatie doorzoekbaar maakt met retrieval\-augmented generatie][jan 2023–Heden]
- Combineert een vector\-database met een taalmodel voor betrouwbare antwoorden met bronverwijzingen
- Inclusief evaluatieharness voor hallucinatiedetectie en antwoordkwaliteit
- Wordt door drie organisaties in productie gebruikt
#strong[Trefwoorden]: RAG, Vector Database, LLM, Open Source

#resume-subheading[Beeldscan][#link("https://github.com/sannedevries/beeldscan")[https\:\/\/github\.com\/sannedevries\/beeldscan]][Computer vision\-pipeline voor het automatisch classificeren van inspectiefoto\'s in de maakindustrie][mei 2021–dec 2022]
- Transfer learning met een CNN backbone, getraind op een gelabelde dataset van 120\.000 afbeeldingen
- Bereikte een gemiddelde precisie van 96% bij vier schadecategorieën
- Geïmplementeerd als containerized inference\-service met monitoring op datadrift
#strong[Trefwoorden]: Computer Vision, Transfer Learning, Docker
]

= Interesses
#resume-pad[
#strong[Sport]: Hardlopen, Wielrennen, Zwemmen

#strong[Muziek]: Piano, Jazz

#strong[Overig]: Schaken, Open Source, Filosofie van AI
]

= Vrijwilligerswerk
#resume-pad[
#resume-subheading[Mentor datawetenschap][#link("https://www.aivooriedereen.nl")[https\:\/\/www\.aivooriedereen\.nl]][Stichting AI voor Iedereen][sep 2020–Heden]
- Begeleidt jaarlijks vier carrièreswitchers bij hun eerste stappen in machine learning
- Verzorgt gastlessen over AI\-geletterdheid op middelbare scholen
- Organiseert maandelijkse bijeenkomsten voor de open\-source community

#resume-subheading[Vrijwilliger werkgroep Ethiek][#link("https://www.nlaic.nl")[https\:\/\/www\.nlaic\.nl]][NL AI Coalitie][feb 2022–Heden]
- Draagt bij aan publieke richtlijnen voor transparante en uitlegbare AI\-toepassingen
- Reviewt praktijkcases van organisaties die hun AI\-systemen willen documenteren
]