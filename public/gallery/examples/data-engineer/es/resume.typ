#set document(
  title: "Lucía Fernández Moreno - Ingeniera de Datos Senior",
  author: "Lucía Fernández Moreno",
  keywords: "Ingeniería de Datos, Computación en la Nube, Big Data y Procesamiento, Lenguajes y Bases de Datos",
  description: "Résumé of Lucía Fernández Moreno",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Lucía Fernández Moreno]] #v(-0.2em)

#text(size: 1.44em)[Ingeniera de Datos Senior]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia.fernandez@example.com")[lucia\.fernandez\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://luciafernandez.dev")[https\:\/\/luciafernandez\.dev]

Calle de Alcalá 123, Madrid, Comunidad de Madrid, España, 28009

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucia-fernandez-data")[lucia\-fernandez\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/luciafdez")[luciafdez]
]

= Información básica

#resume-pad[
- Ingeniera de Datos con más de 10 años de experiencia diseñando y construyendo plataformas de datos escalables\.
- Especializada en arquitecturas de datos modernas, pipelines ETL\/ELT y soluciones analíticas en la nube\.
- Sólida experiencia en modelado dimensional, optimización de consultas y gobierno del dato\.
- Colaboradora habitual con equipos de negocio, analítica y ciencia de datos para convertir requisitos en soluciones medibles\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Politécnica de Madrid][#link("https://www.upm.es")[https\:\/\/www\.upm\.es]][Maestría, Ciencia de Datos e Ingeniería de Datos, Puntuación: 9\.1][sept 2012–jul 2014]
- Formación avanzada en diseño de sistemas de datos, analítica y aprendizaje automático\.
- Proyecto fin de máster centrado en la optimización de pipelines de ingestión en tiempo real\.
#strong[Cursos]: Arquitecturas de Datos Escalables, Procesamiento Distribuido, Minería de Datos, Bases de Datos Avanzadas, Aprendizaje Automático

#resume-subheading[Universidad de Sevilla][#link("https://www.us.es")[https\:\/\/www\.us\.es]][Licenciatura, Ingeniería Informática, Puntuación: 8\.7][sept 2008–jun 2012]
- Base sólida en programación, sistemas distribuidos y fundamentos de bases de datos\.
#strong[Cursos]: Estructuras de Datos, Algoritmos, Sistemas Operativos, Redes de Computadores, Bases de Datos
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Ingeniera de Datos Senior][#link("https://www.iberiadata.example.com")[https\:\/\/www\.iberiadata\.example\.com]][Iberia Data Solutions][mar 2021 hasta la fecha]
- Lideré el diseño de una plataforma de datos en Google Cloud Platform para centralizar información de 12 áreas de negocio\.
- Implementé pipelines ELT con dbt, BigQuery y Airflow, reduciendo el tiempo de publicación de datos en un 60 %\.
- Definí estándares de modelado dimensional y gobierno del dato, mejorando la calidad y trazabilidad de los datasets\.
- Mentoré a tres ingenieros junior y coordiné revisiones técnicas de código y arquitectura\.
#strong[Palabras clave]: Google Cloud Platform, BigQuery, dbt, Airflow, Gobierno del dato

#resume-subheading[Ingeniera de Datos][#link("https://www.telefonicatech.com")[https\:\/\/www\.telefonicatech\.com]][Telefónica Tech][ene 2017–feb 2021]
- Desarrollé pipelines ETL en Python y Spark para procesar más de 2 TB diarios de datos de red y negocio\.
- Modelé datos en Amazon Redshift y optimicé consultas analíticas para equipos de BI y marketing\.
- Automaticé validaciones de calidad con Great Expectations y monitoreo de jobs con Grafana y Prometheus\.
- Participé en la migración de un almacén de datos on\-premise a AWS con enfoque en mínima interrupción\.
#strong[Palabras clave]: Python, Apache Spark, AWS, Redshift, ETL

#resume-subheading[Analista de Datos][#link("https://www.accenture.com/es-es")[https\:\/\/www\.accenture\.com\/es\-es]][Accenture España][sept 2014–dic 2016]
- Construí informes y cuadros de mando en Power BI para clientes de banca y seguros\.
- Escribí consultas SQL complejas y procedimientos almacenados para extraer y transformar datos\.
- Documenté requisitos funcionales y colaboré con equipos de negocio en la definición de KPIs\.
#strong[Palabras clave]: SQL, Power BI, Análisis de Datos, Banca
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Español nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: C1, Uso profesional])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Catalán]: Competencia limitada de trabajo], [#strong[Palabras clave]: Conversación básica])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Ingeniería de Datos]: Experto], [#strong[Palabras clave]: ETL\/ELT, Modelado dimensional, Almacén de datos, Calidad del dato, Gobierno del dato])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Computación en la Nube]: Avanzado], [#strong[Palabras clave]: Google Cloud Platform, AWS, BigQuery, Redshift, Azure Data Factory])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Big Data y Procesamiento]: Avanzado], [#strong[Palabras clave]: Apache Spark, Apache Airflow, Apache Kafka, dbt, Databricks])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Lenguajes y Bases de Datos]: Avanzado], [#strong[Palabras clave]: Python, SQL, Scala, PostgreSQL, MongoDB])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Innovación en Datos][][Iberia Data Solutions][nov 2023]
- Reconocimiento por el diseño de una plataforma de datos que redujo el time\-to\-insight en un 45 %\.

#resume-subheading[Matrícula de Honor en Proyecto Fin de Máster][][Universidad Politécnica de Madrid][jul 2014]
- Galardón al mejor proyecto de la promoción en el área de procesamiento distribuido\.
]

= Certificados
#resume-pad[
#resume-subheading[Google Cloud Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google Cloud][mar 2022]

#resume-subheading[AWS Certified Data Analytics \- Specialty][#link("https://aws.amazon.com/certification/certified-data-analytics-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-data\-analytics\-specialty\/]][Amazon Web Services][sept 2021]

#resume-subheading[dbt Analytics Engineering Certification][#link("https://www.getdbt.com/certifications/")[https\:\/\/www\.getdbt\.com\/certifications\/]][dbt Labs][may 2023]
]

= Publicaciones
#resume-pad[
#resume-subheading[Diseño de pipelines de datos en tiempo real para analítica operativa][#link("https://www.revista-ingenieria-datos.example.com/articulos/pipelines-tiempo-real")[https\:\/\/www\.revista\-ingenieria\-datos\.example\.com\/articulos\/pipelines\-tiempo\-real]][Revista Española de Ingeniería de Datos][oct 2022]
- Artículo técnico sobre patrones de ingestión y procesamiento continuo con Kafka y Spark Structured Streaming\.
- Analiza estrategias de particionado, exactly\-once y monitorización de latencia\.
]

= Proyectos
#resume-pad[
#resume-subheading[Observatorio de Datos Abiertos][#link("https://github.com/luciafdez/observatorio-datos-abiertos")[https\:\/\/github\.com\/luciafdez\/observatorio\-datos\-abiertos]][Plataforma reproducible para ingerir, validar y publicar datasets abiertos de administraciones públicas\.][ene 2023–jun 2023]
- Diseñé un pipeline con Airflow y dbt que ingesta datos de portales open data y genera tablas analíticas listas para consulta\.
- Implementé tests de calidad y documentación automática del linaje de datos\.
- Desplegué la solución en Google Cloud Run y BigQuery con costes controlados\.
#strong[Palabras clave]: Open Data, Airflow, dbt, BigQuery

#resume-subheading[Motor de Recomendación para Retail][#link("https://github.com/luciafdez/retail-recommender")[https\:\/\/github\.com\/luciafdez\/retail\-recommender]][Prototipo de motor de recomendación basado en datos transaccionales anonimizados\.][mar 2020–nov 2020]
- Construí un pipeline de features con Spark y un modelo de filtrado colaborativo en Python\.
- Evalué el rendimiento con métricas de precisión y recall sobre un conjunto de validación temporal\.
- Documenté la arquitectura y los resultados en un informe técnico reproducible\.
#strong[Palabras clave]: Spark, Python, Recomendación, Retail
]

= Intereses
#resume-pad[
#strong[Datos y Tecnología]: Open Source, Arquitecturas de Datos, Automatización

#strong[Actividad Física]: Senderismo, Natación, Ciclismo

#strong[Cultura]: Lectura, Fotografía, Podcasts
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora Técnica][#link("https://www.datagirlsmadrid.example.com")[https\:\/\/www\.datagirlsmadrid\.example\.com]][Data Girls Madrid][sept 2022 hasta la fecha]
- Acompaño a mujeres que inician su carrera en datos en la definición de objetivos y desarrollo de habilidades técnicas\.
- Participo en talleres de SQL, Python y visualización de datos para la comunidad\.

#resume-subheading[Voluntaria de Análisis de Datos][#link("https://www.caritasmadrid.org")[https\:\/\/www\.caritasmadrid\.org]][Cáritas Madrid][ene 2020–ago 2022]
- Apoyé al equipo social en la limpieza y análisis de datos de programas de asistencia\.
- Automaticé informes mensuales en Power BI para facilitar la toma de decisiones\.
]