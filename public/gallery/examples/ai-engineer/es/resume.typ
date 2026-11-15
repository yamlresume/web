#set document(
  title: "Alejandro Vega Moreno - Ingeniero de IA especializado en visión por computador, NLP y MLOps",
  author: "Alejandro Vega Moreno",
  keywords: "Aprendizaje automático, Procesamiento de lenguaje, Visión por computador, MLOps e infraestructura, Datos y cloud, Desarrollo de software",
  description: "Résumé of Alejandro Vega Moreno",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "es", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Alejandro Vega Moreno]] #v(-0.2em)

#text(size: 1.44em)[Ingeniero de IA especializado en visión por computador, NLP y MLOps]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:alejandro.vega.moreno@gmail.com")[alejandro\.vega\.moreno\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://alejandrovega.dev")[https\:\/\/alejandrovega\.dev]

Calle de Serrano 45, 4º B, Madrid, Comunidad de Madrid, España, 28001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/alejandrovega-ai")[alejandrovega\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/alejandrovega-ai")[alejandrovega\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/1234567/alejandro-vega")[alejandro\-vega]
]

= Información básica

#resume-pad[
Ingeniero de IA con más de 6 años de experiencia diseñando, desplegando y monitorizando sistemas de aprendizaje automático en producción\. Especializado en visión por computador, procesamiento de lenguaje natural y MLOps, con impacto medible en eficiencia operativa y experiencias de cliente\.

- Lideré el ciclo completo de modelos de IA, desde la exploración de datos hasta el despliegue en cloud y la monitorización continua\.
- Experiencia con Python, PyTorch, TensorFlow, Kubernetes y plataformas de datos en AWS y Azure\.
- Colaborador técnico y mentor, con comunicación clara entre equipos de negocio, producto e ingeniería\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Politécnica de Madrid][#link("https://www.upm.es")[https\:\/\/www\.upm\.es]][Maestría, Inteligencia Artificial, Puntuación: 9,2\/10][2017\-09\-01–2019\-07\-01]
- Formación orientada a la investigación aplicada y al desarrollo de sistemas inteligentes en entornos reales\.
- Trabajo final centrado en detección de anomalías con modelos híbridos y despliegue en cloud\.
#strong[Cursos]: Aprendizaje Automático Avanzado, Visión por Computador, Procesamiento de Lenguaje Natural, Sistemas de Recomendación, Computación Distribuida, Ética y Gobernanza de la IA

#resume-subheading[Universidad de Sevilla][#link("https://www.us.es")[https\:\/\/www\.us\.es]][Licenciatura, Ingeniería Informática, Puntuación: 8,7\/10][2013\-09\-01–2017\-06\-30]
- Base sólida en programación, bases de datos, estadística y desarrollo de software\.
- Participación en proyectos académicos de análisis de datos y automatización de procesos\.
#strong[Cursos]: Algoritmos y Estructuras de Datos, Bases de Datos, Ingeniería del Software, Estadística, Sistemas Operativos, Redes de Computadores
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Ingeniero de IA Senior][#link("https://www.nexoia.es")[https\:\/\/www\.nexoia\.es]][Nexo IA Labs][2022\-03\-01 hasta la fecha]
- Diseñé y desplegué modelos de visión por computador y NLP para productos de análisis documental y atención al cliente\.
- Lideré la implantación de pipelines MLOps con MLflow, Docker y Kubernetes, reduciendo el tiempo de puesta en producción de modelos en un 40%\.
- Definí métricas de calidad, deriva de datos y monitorización de modelos, mejorando la fiabilidad de los sistemas en producción\.
- Colaboré con producto y negocio para priorizar casos de uso de IA según impacto y viabilidad técnica\.
- Mentoricé a ingenieros junior y promoví buenas prácticas de experimentación, revisión de código y documentación\.
#strong[Palabras clave]: Visión por computador, MLOps, PyTorch, AWS, Liderazgo técnico

#resume-subheading[Ingeniero de Aprendizaje Automático][#link("https://www.datamente.es")[https\:\/\/www\.datamente\.es]][DataMente Soluciones][2019\-09\-01–2022\-02\-28]
- Desarrollé modelos predictivos para segmentación de clientes, previsión de demanda y detección de fraude\.
- Construí APIs con FastAPI y servicios de inferencia escalables sobre AWS, integrados con plataformas internas de datos\.
- Automaticé procesos de entrenamiento y validación con Airflow, reduciendo tareas manuales repetitivas\.
- Realicé análisis exploratorios y presentaciones ejecutivas para equipos no técnicos, traduciendo resultados en decisiones de negocio\.
#strong[Palabras clave]: Machine Learning, FastAPI, AWS, Airflow, Analítica predictiva
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: TOEIC 940, C1 acreditado])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Catalán]: Competencia profesional plena], [#strong[Palabras clave]: Nivel C2, Uso profesional])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Aprendizaje automático]: Experto], [#strong[Palabras clave]: Python, PyTorch, TensorFlow, scikit\-learn, XGBoost])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Procesamiento de lenguaje]: Avanzado], [#strong[Palabras clave]: Transformers, BERT, LLMs, spaCy, RAG])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Visión por computador]: Avanzado], [#strong[Palabras clave]: OpenCV, YOLO, Segmentación, CNN, TensorRT])

#grid(columns: (1fr, auto), align: (left, right), [#strong[MLOps e infraestructura]: Avanzado], [#strong[Palabras clave]: Docker, Kubernetes, MLflow, Airflow, CI\/CD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Datos y cloud]: Avanzado], [#strong[Palabras clave]: AWS SageMaker, Azure ML, Spark, SQL, Snowflake])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Desarrollo de software]: Avanzado], [#strong[Palabras clave]: Python, FastAPI, Git, C\+\+, Pruebas unitarias])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Innovación en IA][][Nexo IA Labs][2024\-05\-16]
Reconocimiento interno por el diseño de un sistema de visión artificial que redujo los errores de clasificación documental en un 35%\.

#resume-subheading[Mejor proyecto de fin de máster][][Universidad Politécnica de Madrid][2019\-07\-10]
Galardón al proyecto de detección temprana de anomalías en series temporales mediante modelos híbridos y despliegue en cloud\.
]

= Certificados
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/certification/certified-machine-learning-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-machine\-learning\-specialty\/]][Amazon Web Services][2023\-04\-12]

#resume-subheading[Professional Scrum Master I][#link("https://www.scrum.org/professional-scrum-certifications/professional-scrum-master-i-certification")[https\:\/\/www\.scrum\.org\/professional\-scrum\-certifications\/professional\-scrum\-master\-i\-certification]][Scrum\.org][2021\-11\-03]
]

= Publicaciones
#resume-pad[
#resume-subheading[Detección temprana de anomalías en series temporales con modelos híbridos][#link("https://revista.iberoai.org/articulos/deteccion-anomalias-series-temporales")[https\:\/\/revista\.iberoai\.org\/articulos\/deteccion\-anomalias\-series\-temporales]][Revista Iberoamericana de Inteligencia Artificial][2022\-10\-01]
- Propone una combinación de modelos estadísticos y redes neuronales para detectar anomalías en datos industriales\.
- Evalúa el enfoque en conjuntos de datos reales y analiza su robustez ante ruido y cambios de distribución\.
]

= Proyectos
#resume-pad[
#resume-subheading[Asistente clínico con RAG][#link("https://github.com/alejandrovega-ai/asistente-clinico-rag")[https\:\/\/github\.com\/alejandrovega\-ai\/asistente\-clinico\-rag]][Asistente conversacional para consultas sobre documentación clínica mediante recuperación aumentada\.][2023\-02\-01–2023\-11\-30]
- Implementé un pipeline de ingestión, indexación vectorial y recuperación de documentos médicos\.
- Añadí evaluación de respuestas y trazas para reducir alucinaciones y mejorar la trazabilidad\.
- Desplegué el servicio con FastAPI, Docker y una base vectorial gestionada en cloud\.
#strong[Palabras clave]: RAG, LLMs, FastAPI, Búsqueda vectorial

#resume-subheading[Visión artificial para control de calidad][#link("https://github.com/alejandrovega-ai/vision-calidad")[https\:\/\/github\.com\/alejandrovega\-ai\/vision\-calidad]][Sistema de inspección visual automática para detectar defectos en línea de producción\.][2021\-05\-01–2022\-01\-31]
- Entrené modelos de detección y segmentación con imágenes industriales etiquetadas por expertos\.
- Optimicé la inferencia con TensorRT para cumplir requisitos de latencia en planta\.
- Diseñé un panel de revisión humana para validar casos ambiguos y retroalimentar el modelo\.
#strong[Palabras clave]: Visión por computador, YOLO, TensorRT, Control de calidad
]

= Intereses
#resume-pad[
#strong[Deporte]: Escalada, Ciclismo, Senderismo

#strong[Música]: Guitarra, Jazz, Producción musical

#strong[Divulgación tecnológica]: Meetups, Mentoría, Artículos técnicos
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentor y ponente][#link("https://www.comunidadia.es")[https\:\/\/www\.comunidadia\.es]][Comunidad IA España][2021\-01\-01–2024\-12\-31]
- Mentoricé a profesionales en transición hacia roles de IA y aprendizaje automático\.
- Impartí charlas sobre MLOps, evaluación de modelos y despliegue responsable de IA\.
- Colaboré en la organización de encuentros técnicos y talleres prácticos para la comunidad\.
]