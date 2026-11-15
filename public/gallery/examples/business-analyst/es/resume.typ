#set document(
  title: "Lucía Ferrer Navarro - Analista de Negocio Senior | Transformación digital y mejora de procesos",
  author: "Lucía Ferrer Navarro",
  keywords: "Análisis de Negocio, Datos y Reporting, Herramientas, Metodologías",
  description: "Résumé of Lucía Ferrer Navarro",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Lucía Ferrer Navarro]] #v(-0.2em)

#text(size: 1.44em)[Analista de Negocio Senior | Transformación digital y mejora de procesos]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:hola@luciaferrer.es")[hola\@luciaferrer\.es] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.luciaferrer.es")[https\:\/\/www\.luciaferrer\.es]

Calle de Alcalá 45, 3º B, Madrid, Comunidad de Madrid, España, 28014

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucia-ferrer-navarro")[lucia\-ferrer\-navarro] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@luciaferrer")[luciaferrer] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/luciaferrer")[luciaferrer]
]

= Información básica

#resume-pad[
Analista de negocio con más de seis años de experiencia en proyectos de transformación digital, optimización de procesos y definición de soluciones basadas en datos\.

- Especializada en levantamiento de requisitos, modelado de procesos BPMN y priorización de alcance con stakeholders técnicos y de negocio\.
- Experiencia en entornos ágiles, análisis funcional, definición de KPIs y elaboración de dashboards ejecutivos en Power BI\.
- Capacidad demostrada para traducir necesidades de negocio en historias de usuario, criterios de aceptación y hojas de ruta accionables\.
- Enfoque analítico, comunicación clara y orientación a resultados medibles\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Carlos III de Madrid][#link("https://www.uc3m.es")[https\:\/\/www\.uc3m\.es]][Maestría, Análisis de Negocio y Transformación Digital, Puntuación: 8,9\/10][sept 2018–jul 2020]
- Formación orientada a la definición de soluciones de negocio, análisis de datos y liderazgo de iniciativas de mejora\.
- Trabajo fin de máster centrado en la priorización de requisitos y la medición de impacto operativo en entornos retail\.
#strong[Cursos]: Dirección Estratégica y Modelos de Negocio, Análisis Financiero para la Toma de Decisiones, Gestión de Procesos y BPMN, Analítica de Datos Aplicada, Metodologías Ágiles y Gestión de Producto, Gestión del Cambio y Comunicación, Investigación de Mercados, Gestión de Proyectos

#resume-subheading[Universitat de València][#link("https://www.uv.es")[https\:\/\/www\.uv\.es]][Licenciatura, Administración y Dirección de Empresas, Puntuación: 8,2\/10][sept 2014–jul 2018]
- Base sólida en finanzas, operaciones y sistemas de información para el análisis de procesos y la toma de decisiones\.
- Participación en proyectos interdisciplinares de consultoría junior para pequeñas empresas locales\.
#strong[Cursos]: Contabilidad Financiera, Estadística Empresarial, Economía de la Empresa, Sistemas de Información, Marketing Estratégico, Derecho Mercantil
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Analista de Negocio Senior][#link("https://www.aurearetail.es")[https\:\/\/www\.aurearetail\.es]][Aurea Retail Ibérica][ene 2022 hasta la fecha]
- Lideré el análisis de negocio para la modernización del proceso de alta de clientes, reduciendo el tiempo de tramitación en un 35 %\.
- Facilité talleres de descubrimiento con negocio, tecnología y operaciones para alinear alcance, prioridades y criterios de aceptación\.
- Definí historias de usuario, reglas de negocio y flujos BPMN para equipos de desarrollo en entornos Scrum y Kanban\.
- Diseñé cuadros de mando en Power BI para el seguimiento de KPIs comerciales y operativos, mejorando la visibilidad de incidencias\.
- Coordiné la gestión del cambio y la documentación funcional para más de 200 usuarios internos\.
#strong[Palabras clave]: Análisis de requisitos, Modelado BPMN, Power BI, Scrum, Gestión del cambio

#resume-subheading[Analista de Negocio][#link("https://www.grupomeridianoseguros.es")[https\:\/\/www\.grupomeridianoseguros\.es]][Grupo Meridiano Seguros][sept 2020–dic 2021]
- Analicé procesos de siniestros y contratación para identificar cuellos de botella y oportunidades de automatización\.
- Elaboré especificaciones funcionales, casos de uso y matrices de trazabilidad para el equipo de desarrollo\.
- Colaboré con negocio y cumplimiento normativo para validar requisitos regulatorios y criterios de aceptación\.
- Implementé informes en SQL y Excel avanzado para el seguimiento de productividad y calidad del servicio\.
#strong[Palabras clave]: Análisis funcional, SQL, Casos de uso, Automatización, KPIs

#resume-subheading[Analista Funcional Junior][#link("https://www.consultoraitaca.es")[https\:\/\/www\.consultoraitaca\.es]][Consultora Ítaca][feb 2019–ago 2020]
- Apoyé la definición de requisitos y la documentación de procesos en proyectos de digitalización para pymes\.
- Participé en reuniones de toma de requisitos, análisis de brechas y preparación de propuestas de solución\.
- Realicé pruebas funcionales y documenté incidencias para asegurar la calidad de las entregas\.
- Preparé manuales de usuario y materiales de formación para la implantación de nuevas herramientas\.
#strong[Palabras clave]: Digitalización, Pruebas funcionales, Documentación funcional, Análisis de brechas, Formación
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Lengua materna])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: C1 Cambridge Advanced])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francés]: Competencia limitada de trabajo], [#strong[Palabras clave]: A2 DELF])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Análisis de Negocio]: Experto], [#strong[Palabras clave]: Análisis de requisitos, Modelado BPMN, Historias de usuario, Casos de uso, Gestión de stakeholders])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Datos y Reporting]: Avanzado], [#strong[Palabras clave]: SQL, Power BI, Tableau, Excel avanzado, KPIs])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Herramientas]: Avanzado], [#strong[Palabras clave]: Jira, Confluence, Azure DevOps, Miro, Visio])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Metodologías]: Avanzado], [#strong[Palabras clave]: Scrum, Kanban, Lean Six Sigma, Design Thinking, Gestión del cambio])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Excelencia Operacional][][Aurea Retail Ibérica][nov 2023]
Reconocimiento por la mejora del proceso de alta de clientes y la reducción de tiempos de tramitación mediante análisis de negocio y automatización\.

#resume-subheading[Finalista del Datathon de Retail][][Retail Data Summit][may 2022]
Proyecto finalista centrado en la detección de patrones de abandono y la priorización de acciones comerciales a partir de datos transaccionales\.
]

= Certificados
#resume-pad[
#resume-subheading[Certificación CBAP en Análisis de Negocio][#link("https://www.iiba.org/certification/cbap/")[https\:\/\/www\.iiba\.org\/certification\/cbap\/]][IIBA][mar 2024]

#resume-subheading[Scrum Master Profesional I][#link("https://www.scrum.org/professional-scrum-master-i-certification")[https\:\/\/www\.scrum\.org\/professional\-scrum\-master\-i\-certification]][Scrum\.org][jun 2022]

#resume-subheading[Analista de Datos Power BI Associate][#link("https://learn.microsoft.com/en-us/certifications/power-bi-data-analyst-associate/")[https\:\/\/learn\.microsoft\.com\/en\-us\/certifications\/power\-bi\-data\-analyst\-associate\/]][Microsoft][sept 2023]
]

= Publicaciones
#resume-pad[
#resume-subheading[Guía práctica para priorizar requisitos con MoSCoW][#link("https://www.productoydatos.es/guias/moscow-requisitos")[https\:\/\/www\.productoydatos\.es\/guias\/moscow\-requisitos]][Blog de Producto y Datos][mar 2024]
- Artículo sobre técnicas de priorización de requisitos en proyectos con múltiples stakeholders\.
- Incluye criterios prácticos para equilibrar valor de negocio, esfuerzo técnico y riesgo\.
]

= Proyectos
#resume-pad[
#resume-subheading[Rediseño del proceso de alta de clientes][#link("https://www.aurearetail.es/casos/alta-clientes")[https\:\/\/www\.aurearetail\.es\/casos\/alta\-clientes]][Proyecto de transformación operativa para simplificar la contratación y mejorar la experiencia del cliente\.][mar 2023–nov 2023]
- Mapeo del proceso actual y definición del proceso objetivo con negocio, operaciones y tecnología\.
- Especificación de requisitos funcionales, reglas de validación y criterios de aceptación\.
- Seguimiento de indicadores de adopción, tiempo de tramitación y satisfacción de usuarios internos\.
#strong[Palabras clave]: BPMN, Power BI, Gestión del cambio, Experiencia de cliente

#resume-subheading[Cuadro de mando comercial omnicanal][#link("https://www.aurearetail.es/casos/cuadro-mando-omnicanal")[https\:\/\/www\.aurearetail\.es\/casos\/cuadro\-mando\-omnicanal]][Solución de reporting para unificar métricas de ventas, tráfico y conversión en tienda y canal online\.][ene 2022–dic 2022]
- Definición de KPIs y reglas de negocio junto a dirección comercial y equipos de datos\.
- Diseño de dashboards en Power BI para el seguimiento semanal de objetivos por canal y región\.
- Documentación de fuentes de datos, definiciones métricas y procesos de actualización\.
#strong[Palabras clave]: Power BI, KPIs, Omnicanalidad, Modelo de datos
]

= Intereses
#resume-pad[
#strong[Analítica y visualización de datos]: Power BI, Storytelling con datos, Datos abiertos

#strong[Sostenibilidad]: Economía circular, Movilidad urbana

#strong[Lectura]: Ensayo, Novela negra
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de jóvenes analistas][#link("https://www.aanes.es")[https\:\/\/www\.aanes\.es]][Asociación de Analistas de Negocio de España][sept 2022 hasta la fecha]
- Acompaño a profesionales junior en la preparación de entrevistas, elaboración de currículos y desarrollo de competencias de análisis\.
- Participo en sesiones formativas sobre requisitos, modelado de procesos y comunicación con stakeholders\.
]