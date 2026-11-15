#set document(
  title: "Carlos Mendoza - Científico de Datos Senior | Machine Learning & Analítica Predictiva",
  author: "Carlos Mendoza",
  keywords: "Aprendizaje Automático, Ingeniería de Datos, Visualización de Datos",
  description: "Résumé of Carlos Mendoza",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Carlos Mendoza]] #v(-0.2em)

#text(size: 1.44em)[Científico de Datos Senior | Machine Learning & Analítica Predictiva]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:carlos.mendoza@example.com")[carlos\.mendoza\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.carlosmendoza.dev")[https\:\/\/www\.carlosmendoza\.dev]

Calle de Alcalá 123, Madrid, Comunidad de Madrid, España, 28001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/carlosmendoza")[carlosmendoza] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/carlosmendoza")[carlosmendoza]
]

= Información básica

#resume-pad[
Científico de datos con más de 8 años de experiencia en el desarrollo de soluciones analíticas y modelos predictivos para los sectores financiero, retail y telecomunicaciones\.

Especializado en machine learning, procesamiento del lenguaje natural (NLP) y análisis de grandes volúmenes de datos con Python, Spark y cloud computing (AWS y GCP)\.

- Diseño e implementación de modelos de clasificación y regresión con impacto directo en la reducción de costes y optimización de ingresos\.
- Experiencia en la dirección de equipos multidisciplinares y en la comunicación de resultados a stakeholders no técnicos\.
- Apasionado por el aprendizaje continuo y la aplicación de técnicas de IA responsable y explicable\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Politécnica de Madrid][#link("https://www.upm.es/")[https\:\/\/www\.upm\.es\/]][Maestría, Ciencia de Datos e Inteligencia Artificial, Puntuación: 9,2][sept 2014–jul 2016]
- Graduado con matrícula de honor en el trabajo final\: \"Modelos híbridos para la predicción de series temporales financieras\.\"
- Colaboré como investigador ayudante en el grupo de Sistemas Inteligentes, desarrollando algoritmos de clasificación para datos no balanceados\.
#strong[Cursos]: Aprendizaje Automático Avanzado, Big Data y Computación Distribuida, Visualización de Datos, Estadística Bayesiana, Deep Learning, Minería de Datos

#resume-subheading[Universidad Carlos III de Madrid][#link("https://www.uc3m.es/")[https\:\/\/www\.uc3m\.es\/]][Licenciatura, Ingeniería Informática, Puntuación: 8,7][sept 2010–jun 2014]
- Formación integral en ingeniería del software, sistemas operativos y arquitectura de computadores\.
- Realicé prácticas en empresa en el departamento de inteligencia de negocio de una consultora tecnológica\.
#strong[Cursos]: Estructuras de Datos y Algoritmos, Bases de Datos, Ingeniería del Software, Redes de Computadores
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Científico de Datos Senior][#link("https://www.technova-analytics.es")[https\:\/\/www\.technova\-analytics\.es]][TechNova Analytics][mar 2020 hasta la fecha]
- Lidero el diseño y despliegue de modelos predictivos de fraude en tiempo real, logrando reducir las pérdidas por fraude en un 23 % en el primer año\.
- Desarrollo pipelines de datos escalables en AWS (S3, Glue, SageMaker) y orquestación con Apache Airflow\.
- Impulso la adopción de MLOps y buenas prácticas de reproducibilidad, monitorización y gobernanza de modelos\.
- Coordino un equipo de 4 científicos de datos y colaboro con ingenieros de software y analistas de negocio para priorizar casos de uso de alto impacto\.
- Presento resultados ejecutivos periódicos al comité de dirección y asesoro en la definición de la estrategia de datos de la compañía\.
#strong[Palabras clave]: Machine Learning, AWS, MLOps, Fraude, Liderazgo

#resume-subheading[Analista de Datos \/ Científico de Datos Junior][#link("https://www.grupoibero.es")[https\:\/\/www\.grupoibero\.es]][Grupo Financiero Íbero][sept 2016–feb 2020]
- Construí modelos de segmentación de clientes mediante clustering (K\-means, DBSCAN) para campañas de marketing personalizadas, incrementando la tasa de conversión en un 15 %\.
- Automatizé informes de negocio con Python y SQL, reduciendo el tiempo de generación de reportes de 3 días a 2 horas\.
- Implementé sistemas de recomendación basados en filtrado colaborativo para la banca online\.
- Participé en la migración de un data warehouse on\-premise a Google BigQuery\.
#strong[Palabras clave]: Python, SQL, Clustering, BigQuery, Segmentación

#resume-subheading[Ingeniero de Datos][#link("https://www.abacodigital.es")[https\:\/\/www\.abacodigital\.es]][Consultora Ábaco Digital][jul 2014–ago 2016]
- Diseñé y mantuve procesos ETL para la integración de datos de múltiples fuentes en entornos Hadoop y Spark\.
- Desarrollé dashboards en Tableau y Power BI para monitorizar KPIs de clientes del sector retail\.
- Optimicé consultas SQL y modelos dimensionales para acelerar el acceso a datos analíticos\.
#strong[Palabras clave]: ETL, Hadoop, Spark, Tableau, SQL
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Lengua materna])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: TOEFL 110, Experiencia internacional])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Aprendizaje Automático]: Experto], [#strong[Palabras clave]: Python, Scikit\-learn, TensorFlow, PyTorch, XGBoost, NLP])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Ingeniería de Datos]: Avanzado], [#strong[Palabras clave]: SQL, Apache Spark, Hadoop, Airflow, dbt])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Visualización de Datos]: Avanzado], [#strong[Palabras clave]: Tableau, Power BI, Matplotlib, ggplot2, Looker])
]

= Premios
#resume-pad[
#resume-subheading[Premio Nacional de Inteligencia Artificial Aplicada][][Asociación Española de Inteligencia Artificial (AEPIA)][nov 2021]
Reconocimiento al proyecto \"Detección temprana de enfermedades cardiovasculares mediante deep learning\", desarrollado en colaboración con el Hospital Universitario de La Paz\.

#resume-subheading[Mejor Comunicación en el Congreso de Ciencia de Datos][][Universidad Politécnica de Madrid][jun 2016]
Premio al trabajo fin de máster por su contribución a la predicción de series temporales financieras con modelos híbridos\.
]

= Certificados
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/es/certification/")[https\:\/\/aws\.amazon\.com\/es\/certification\/]][Amazon Web Services][mar 2022]

#resume-subheading[Professional Data Engineer][#link("https://cloud.google.com/certification")[https\:\/\/cloud\.google\.com\/certification]][Google Cloud][oct 2020]
]

= Publicaciones
#resume-pad[
#resume-subheading[Técnicas de ensemble learning para la detección de fraude en seguros][#link("https://www.iberamia.org/revista")[https\:\/\/www\.iberamia\.org\/revista]][Revista Iberoamericana de Inteligencia Artificial][abr 2022]
- Propone un sistema híbrido basado en Random Forest, Gradient Boosting y redes neuronales para identificar patrones de fraude\.
- El modelo alcanza una AUC\-ROC de 0,97 sobre un conjunto de datos real del sector asegurador\.
- Analiza la interpretabilidad de los modelos mediante SHAP para facilitar su adopción en entornos regulados\.
]

= Referencias
#resume-pad[
#resume-subheading[Dra\. Lucía Fernández][Directora de Data Science en TechNova Analytics][lucia\.fernandez\@technova\-analytics\.es][\+34 655 123 987]
Carlos es un profesional excepcional, con una gran capacidad para traducir problemas de negocio en soluciones analíticas\. Su liderazgo técnico y visión estratégica han sido clave para el éxito de nuestro equipo\.
]

= Proyectos
#resume-pad[
#resume-subheading[Detección de noticias falsas en redes sociales][#link("https://github.com/carlosmendoza/fake-news-detector")[https\:\/\/github\.com\/carlosmendoza\/fake\-news\-detector]][Sistema de PLN basado en Transformers para clasificar noticias en español como verdaderas o falsas\.][ene 2023–jun 2023]
- Fine\-tuning de modelos BERT y RoBERTa sobre un corpus de noticias etiquetadas en español\.
- Desarrollo de una API REST con FastAPI y despliegue en un contenedor Docker en Google Cloud Run\.
- Publicación de los notebooks y el dataset procesado en GitHub como recurso educativo\.
#strong[Palabras clave]: NLP, Transformers, FastAPI, Docker

#resume-subheading[Cuadro de mando integral para pymes][#link("https://github.com/carlosmendoza/dashboard-pymes")[https\:\/\/github\.com\/carlosmendoza\/dashboard\-pymes]][Dashboard interactivo construido con Streamlit para visualizar KPIs financieros y operativos de pequeñas empresas\.][mar 2023–jul 2023]
- Permite a los usuarios sin perfil técnico explorar sus datos de ventas, gastos y rentabilidad de forma intuitiva\.
- Incluye módulos de predicción de tesorería mediante Prophet y análisis de desviaciones\.
#strong[Palabras clave]: Streamlit, Prophet, Dashboard, KPI
]

= Intereses
#resume-pad[
#strong[Ajedrez]: Competiciones locales, Táctica

#strong[Senderismo]: Sierra de Guadarrama, Fotografía de naturaleza

#strong[Música]: Piano, Jazz
]

= Voluntariado
#resume-pad[
#resume-subheading[Voluntario Científico de Datos][#link("https://www.datascienceforsocialgood.es")[https\:\/\/www\.datascienceforsocialgood\.es]][Data Science for Social Good España][may 2019–dic 2022]
- Colaboré con ONG en el análisis de datos socioeconómicos para optimizar la distribución de ayudas alimentarias\.
- Desarrollé modelos de predicción de desempleo a nivel comarcal para orientar políticas públicas locales\.
- Impartí talleres introductorios de Python y visualización de datos a estudiantes de secundaria en zonas rurales\.
]