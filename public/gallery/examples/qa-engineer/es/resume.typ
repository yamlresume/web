#set document(
  title: "Lucía Fernández Gómez - Ingeniera QA Senior | Automatización de Pruebas y Calidad de Software",
  author: "Lucía Fernández Gómez",
  keywords: "Automatización de Pruebas, Pruebas de API, CI/CD y DevOps, Gestión de Calidad, Pruebas de Rendimiento",
  description: "Résumé of Lucía Fernández Gómez",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Lucía Fernández Gómez]] #v(-0.2em)

#text(size: 1.44em)[Ingeniera QA Senior | Automatización de Pruebas y Calidad de Software]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia.fernandez.qa@example.com")[lucia\.fernandez\.qa\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://luciafernandezqa.dev")[https\:\/\/luciafernandezqa\.dev]

Calle de Alcalá 120, 4º B, Madrid, Comunidad de Madrid, España, 28009

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucia-fernandez-qa")[lucia\-fernandez\-qa] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/luciafdzqa")[luciafdzqa]
]

= Información básica

#resume-pad[
- Ingeniera de calidad de software con más de 6 años de experiencia diseñando estrategias de prueba para aplicaciones web y APIs en entornos ágiles\.
- Especializada en automatización E2E y de API con Playwright, Cypress, TypeScript y Python, integrando suites en pipelines CI\/CD\.
- Experiencia liderando equipos QA, definiendo métricas de calidad y promoviendo la cultura de prevención de defectos\.
- Colaboradora cercana con producto, desarrollo y operaciones para asegurar entregas rápidas, estables y centradas en el usuario\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Politécnica de Madrid][#link("https://www.upm.es")[https\:\/\/www\.upm\.es]][Licenciatura, Ingeniería Informática, Puntuación: 8\.7\/10][sept 2015–jul 2019]
- Formación sólida en desarrollo de software, bases de datos y sistemas distribuidos\.
- Proyecto final orientado a la validación automatizada de servicios REST\.
- Participación en equipos multidisciplinares y prácticas en laboratorio de calidad\.
#strong[Cursos]: Ingeniería del Software, Bases de Datos, Sistemas Operativos, Redes de Computadores, Arquitectura de Software, Seguridad Informática, Metodologías Ágiles, Calidad y Pruebas de Software
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Senior QA Automation Engineer][#link("https://www.nexopay.es")[https\:\/\/www\.nexopay\.es]][NexoPay Tecnología][mar 2022 hasta la fecha]
- Diseñé la estrategia de pruebas para una plataforma de pagos con más de 2 millones de transacciones mensuales\.
- Implementé suites de automatización E2E con Playwright y TypeScript, reduciendo el tiempo de regresión un 65 %\.
- Desarrollé pruebas de API y contratos con Postman, Newman y OpenAPI, integradas en GitHub Actions\.
- Lideré un equipo de tres ingenieros QA, fomentando buenas prácticas de revisión de código y documentación\.
- Definí indicadores de calidad y dashboards en Grafana para seguimiento de defectos, cobertura y estabilidad\.
#strong[Palabras clave]: Playwright, TypeScript, Pruebas de API, GitHub Actions, Liderazgo QA, Pagos

#resume-subheading[QA Engineer][#link("https://www.grupoairetecnologia.com")[https\:\/\/www\.grupoairetecnologia\.com]][Grupo Aire Tecnología][jun 2019–feb 2022]
- Automaticé pruebas funcionales y de regresión para aplicaciones web con Selenium WebDriver y Python\.
- Gestioné casos de prueba, defectos y trazas en Jira y TestRail dentro de equipos Scrum\.
- Ejecuté pruebas de integración, compatibilidad y accesibilidad en distintos navegadores y dispositivos\.
- Participé en revisiones de requisitos y criterios de aceptación para prevenir defectos desde el diseño\.
- Colaboré con desarrollo en la resolución de incidencias críticas y en la mejora continua del proceso de entrega\.
#strong[Palabras clave]: Selenium, Python, Jira, TestRail, Scrum, Regresión

#resume-subheading[QA Analyst Junior][#link("https://www.solucionesmovilesibericas.com")[https\:\/\/www\.solucionesmovilesibericas\.com]][Soluciones Móviles Ibéricas][sept 2018–may 2019]
- Ejecuté pruebas manuales funcionales y exploratorias sobre aplicaciones móviles iOS y Android\.
- Documenté evidencias, reproducibilidad y severidad de defectos en herramientas de seguimiento\.
- Apoyé la creación de checklists y matrices de dispositivos para pruebas de compatibilidad\.
- Aprendí fundamentos de ciclo de vida del defecto y metodologías ágiles en un entorno de producto\.
#strong[Palabras clave]: Pruebas manuales, Mobile QA, Android, iOS, Checklists, Defectos
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: TOEIC 940, Comunicación técnica])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Portugués]: Competencia limitada de trabajo], [#strong[Palabras clave]: Conversación])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Automatización de Pruebas]: Experto], [#strong[Palabras clave]: Playwright, Cypress, Selenium, TypeScript, Python])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Pruebas de API]: Avanzado], [#strong[Palabras clave]: Postman, Newman, REST Assured, OpenAPI, GraphQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CI\/CD y DevOps]: Avanzado], [#strong[Palabras clave]: GitHub Actions, Jenkins, Docker, Git, Azure DevOps])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestión de Calidad]: Avanzado], [#strong[Palabras clave]: Jira, TestRail, Xray, Métricas QA, Gestión de defectos])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Pruebas de Rendimiento]: Intermedio], [#strong[Palabras clave]: JMeter, k6, Lighthouse, Gatling])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Excelencia en Calidad][][NexoPay Tecnología][nov 2023]
Reconocimiento por liderar la modernización de la estrategia de pruebas y reducir un 65 % el tiempo de regresión\.

#resume-subheading[Reconocimiento a la Innovación en Automatización][][Grupo Aire Tecnología][jun 2021]
Otorgado por el diseño de un framework interno de pruebas de API reutilizable por tres equipos de producto\.
]

= Certificados
#resume-pad[
#resume-subheading[ISTQB Certified Tester Advanced Level \- Test Automation Engineer][#link("https://www.istqb.org/certifications/advanced-level-test-automation-engineer")[https\:\/\/www\.istqb\.org\/certifications\/advanced\-level\-test\-automation\-engineer]][ISTQB][abr 2021]

#resume-subheading[Postman API Fundamentals Student Expert][#link("https://www.postman.com/postman/workspace/postman-student-expert-program")[https\:\/\/www\.postman\.com\/postman\/workspace\/postman\-student\-expert\-program]][Postman][feb 2023]

#resume-subheading[AWS Certified Cloud Practitioner][#link("https://aws.amazon.com/certification/certified-cloud-practitioner/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-cloud\-practitioner\/]][Amazon Web Services][sept 2022]
]

= Publicaciones
#resume-pad[
#resume-subheading[Pruebas de contrato en arquitecturas de microservicios][#link("https://www.revistatecnologiaycalidad.com/articulos/pruebas-contrato-microservicios")[https\:\/\/www\.revistatecnologiaycalidad\.com\/articulos\/pruebas\-contrato\-microservicios]][Revista Tecnología y Calidad][may 2023]
Artículo técnico sobre estrategias de pruebas de contrato con Pact y OpenAPI para equipos que migran a microservicios\.
]

= Proyectos
#resume-pad[
#resume-subheading[Framework de Automatización QA][#link("https://github.com/luciafdzqa/qa-automation-framework")[https\:\/\/github\.com\/luciafdzqa\/qa\-automation\-framework]][Framework interno para pruebas E2E y de API reutilizable en varios equipos\.][ene 2023–ago 2023]
- Diseñé una arquitectura modular con Playwright, TypeScript y Page Objects\.
- Integré reportes HTML, capturas y trazas en GitHub Actions\.
- Documenté guías de contribución y estándares de codificación para QA\.
#strong[Palabras clave]: Playwright, TypeScript, Page Objects, CI\/CD, Framework

#resume-subheading[Programa de Pruebas de Accesibilidad][#link("https://github.com/luciafdzqa/accesibilidad-qa")[https\:\/\/github\.com\/luciafdzqa\/accesibilidad\-qa]][Iniciativa para incorporar validaciones de accesibilidad en el ciclo de pruebas\.][mar 2022–nov 2022]
- Definí criterios WCAG 2\.1 AA y checklists para equipos de producto\.
- Automaticé auditorías con axe\-core y Lighthouse en pipelines de integración\.
- Formé a desarrolladores y diseñadores en buenas prácticas de accesibilidad\.
#strong[Palabras clave]: Accesibilidad, WCAG, axe\-core, Lighthouse, Calidad
]

= Intereses
#resume-pad[
#strong[Tecnología]: Automatización, Open Source, Ciberseguridad

#strong[Deporte]: Escalada, Running, Ciclismo

#strong[Música]: Guitarra, Conciertos, Producción musical
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora y Organizadora][#link("https://www.comunidadqamadrid.org")[https\:\/\/www\.comunidadqamadrid\.org]][Comunidad QA Madrid][sept 2021 hasta la fecha]
- Organizo encuentros mensuales sobre automatización, calidad y liderazgo técnico\.
- Mentoro a personas que inician su carrera en QA y reviso sus primeros proyectos prácticos\.
- Coordino talleres de pruebas de API y accesibilidad con ponentes de la industria\.
]