#set document(
  title: "Laura Gómez Fernández - Product Manager Senior | Estrategia de producto y transformación digital",
  author: "Laura Gómez Fernández",
  keywords: "Gestión de Producto, Metodologías Ágiles, Análisis de Datos, UX / UI, Herramientas de Producto",
  description: "Résumé of Laura Gómez Fernández",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Laura Gómez Fernández]] #v(-0.2em)

#text(size: 1.44em)[Product Manager Senior | Estrategia de producto y transformación digital]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:laura@lauragomez.es")[laura\@lauragomez\.es] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://lauragomez.es")[https\:\/\/lauragomez\.es]

Calle de Alcalá 45, 3º D, Madrid, Comunidad de Madrid, España, 28001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lauragomezpm")[lauragomezpm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@lauragomezpm")[lauragomezpm]
]

= Información básica

#resume-pad[
Product Manager Senior con más de 6 años de experiencia en el ciclo de vida completo de productos digitales, desde la investigación de usuario hasta el lanzamiento y crecimiento\.
Especializada en estrategia de producto, definición de hoja de ruta (roadmap), OKRs y descubrimiento de producto en entornos ágiles\.
Experiencia en sectores fintech, movilidad y ecommerce, liderando equipos multifuncionales y colaborando estrechamente con diseño, ingeniería y negocio\.
Orientada a datos, con toma de decisiones basada en métricas, analítica de producto, experimentación y A\/B testing\.
]

= Educación
#resume-pad[
#resume-subheading[IE Business School][#link("https://www.ie.edu")[https\:\/\/www\.ie\.edu]][Maestría, Dirección de Producto, Puntuación: 8\.9][sept 2020–jul 2021]
Programa intensivo centrado en el desarrollo de habilidades de liderazgo de producto y toma de decisiones basada en datos\.
Proyecto final\: diseño de una solución de banca digital para jóvenes, con validación de usuario y prototipo funcional\.
#strong[Cursos]: Estrategia de Producto, Analítica Digital, Design Thinking, Liderazgo Ágil, Finanzas para Product Managers

#resume-subheading[Universidad Autónoma de Madrid][#link("https://www.uam.es")[https\:\/\/www\.uam\.es]][Licenciatura, Administración y Dirección de Empresas, Puntuación: 8\.2][sept 2013–jul 2017]
Formación en gestión empresarial con especial interés en marketing digital y estrategia\.
Trabajo de fin de grado sobre la adopción de plataformas digitales en el sector retail\.
#strong[Cursos]: Dirección Estratégica, Marketing Estratégico, Estadística Aplicada, Finanzas Corporativas, Comportamiento del Consumidor
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Senior Product Manager][#link("https://mobiliti.io")[https\:\/\/mobiliti\.io]][Mobiliti][jun 2023 hasta la fecha]
Lidero la estrategia de producto de la app de movilidad compartida con más de 2M de usuarios en España y América Latina\.
Defino la hoja de ruta del producto alineada con los OKRs de la compañía, priorizando iniciativas de retención y monetización\.
Coordino tres squads multifuncionales de diseño, ingeniería y datos para lanzar funcionalidades de pago, geolocalización y fidelización\.
Impulso la experimentación continua mediante A\/B testing y análisis de métricas de producto para reducir el churn y mejorar el LTV\.
Colaboro con marketing y atención al cliente para incorporar insights de usuario y elevar la satisfacción (CSAT\/NPS)\.
#strong[Palabras clave]: Roadmap, OKRs, Metodologías ágiles, Analítica de producto, A\/B testing, Retención

#resume-subheading[Product Manager][#link("https://finpagos.com")[https\:\/\/finpagos\.com]][Finpagos][ene 2021–may 2023]
Gestioné el producto de pasarela de pagos B2B, desde la identificación de oportunidades hasta el lanzamiento y adopción\.
Rediseñé el flujo de onboarding de comercios, logrando reducir el tiempo de alta en un 40% y aumentando la conversión\.
Implementé un proceso de descubrimiento de producto con entrevistas, tests de usabilidad y prototipado rápido\.
Colaboré con ingeniería en la priorización del backlog y la definición de criterios de aceptación\.
Presenté métricas y resultados a stakeholders, apoyándome en dashboards con Tableau y Amplitude\.
#strong[Palabras clave]: Fintech, Pasarela de pagos, Descubrimiento de producto, Backlog, Tableau, Amplitude

#resume-subheading[Product Owner][#link("https://retailwise.io")[https\:\/\/retailwise\.io]][RetailWise][mar 2018–dic 2020]
Actué como product owner de una plataforma de comercio electrónico para clientes de retail y gran consumo\.
Definí la visión y el backlog del producto en colaboración con stakeholders de negocio y tecnología\.
Coordiné los sprints de desarrollo y las entregas a producción en ciclos quincenales con metodología Scrum\.
Implementé mejoras en el proceso de checkout que incrementaron la tasa de conversión media en un 15%\.
Realicé análisis de competencia y estudios de mercado para fundamentar las decisiones de producto\.
#strong[Palabras clave]: Ecommerce, Scrum, Product Owner, Conversión, Investigación de mercado
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Lengua materna, Comunicación, Redacción])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: C1 Advanced, Inglés de negocio, Reuniones internacionales])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Catalán]: Competencia limitada de trabajo], [#strong[Palabras clave]: Comprensión lectora, Conversación básica])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestión de Producto]: Experto], [#strong[Palabras clave]: Roadmaps, OKRs, Priorización, Story Mapping, Product Discovery, Go\-to\-Market])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Metodologías Ágiles]: Experto], [#strong[Palabras clave]: Scrum, Kanban, Lean Startup, Design Sprint])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análisis de Datos]: Avanzado], [#strong[Palabras clave]: SQL, Amplitude, Mixpanel, Google Analytics, A\/B testing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[UX \/ UI]: Intermedio], [#strong[Palabras clave]: Figma, Prototipado, User Research, Usabilidad])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Herramientas de Producto]: Experto], [#strong[Palabras clave]: Jira, Confluence, Notion, Trello])
]

= Premios
#resume-pad[
#resume-subheading[Premio al Mejor Lanzamiento de Producto][][Finpagos][nov 2022]
Reconocimiento interno al equipo de producto por el lanzamiento de la nueva pasarela de pagos, que alcanzó un crecimiento del 32% en transacciones en el primer trimestre\.

#resume-subheading[Reconocimiento al Liderazgo en Producto][][Mobiliti][feb 2024]
Destacada por mi contribución a la mejora de la retención de usuarios y la consolidación de la estrategia de producto de la compañía\.
]

= Certificados
#resume-pad[
#resume-subheading[Professional Scrum Product Owner (PSPO I)][#link("https://www.scrum.org/certifications/pspo-i")[https\:\/\/www\.scrum\.org\/certifications\/pspo\-i]][Scrum\.org][jun 2022]

#resume-subheading[Product Management Certification][#link("https://productschool.com")[https\:\/\/productschool\.com]][Product School][mar 2020]

#resume-subheading[Google Analytics Individual Qualification][#link("https://skillshop.exceedlms.com")[https\:\/\/skillshop\.exceedlms\.com]][Google][abr 2021]
]

= Publicaciones
#resume-pad[
#resume-subheading[Cómo descubrir oportunidades de producto a través de la experimentación][#link("https://medium.com/@lauragomezpm/como-descubrir-oportunidades-de-producto")[https\:\/\/medium\.com\/\@lauragomezpm\/como\-descubrir\-oportunidades\-de\-producto]][Medium][nov 2022]
Artículo en el que comparto un marco práctico para priorizar experimentos de producto basados en datos y aprendizaje continuo\.

#resume-subheading[Claves para construir un roadmap de producto orientado a resultados][#link("https://www.linkedin.com/pulse/claves-roadmap-producto-laura-gomez")[https\:\/\/www\.linkedin\.com\/pulse\/claves\-roadmap\-producto\-laura\-gomez]][LinkedIn Articles][jul 2023]
Guía práctica para conectar la visión de producto con la ejecución táctica del equipo y la estrategia de negocio\.
]

= Referencias
#resume-pad[
#resume-subheading[Marta López Sánchez][Directora de Producto en Mobiliti][marta\.lopez\@mobiliti\.io][\+34 699 123 456]
Laura es una profesional excepcional, con una gran capacidad para priorizar, comunicar y ejecutar estrategias de producto\. Su liderazgo ha sido clave para el crecimiento de nuestro producto\.
]

= Proyectos
#resume-pad[
#resume-subheading[MentorPM][#link("https://mentorpm.es")[https\:\/\/mentorpm\.es]][Comunidad online para mentorear a product managers en activo\.][sept 2022 hasta la fecha]
Creé una comunidad de producto y crecimiento con más de 500 miembros activos\.
Organizo mentorías mensuales con product managers senior de empresas tecnológicas\.
Desarrollo una newsletter semanal con aprendizajes de producto y liderazgo\.
#strong[Palabras clave]: Comunidad, Mentoría, Liderazgo, Newsletter

#resume-subheading[App de hábitos saludables][#link("https://github.com/lauragomez/habitos")[https\:\/\/github\.com\/lauragomez\/habitos]][Prototipo en Figma de una aplicación móvil de bienestar y hábitos diarios\.][ene 2023–may 2023]
Diseñé un MVP en Figma con pruebas de usuario para validar la propuesta de valor\.
Definición de métricas de éxito y test de usabilidad con 15 participantes\.
#strong[Palabras clave]: UX, Figma, Prototipado
]

= Intereses
#resume-pad[
#strong[Lectura]: Producto, Marketing, Novela histórica

#strong[Running]: Maratones, Trail

#strong[Tecnología]: Inteligencia artificial, Startups, Low\-code
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de producto][#link("https://mujerestech.es")[https\:\/\/mujerestech\.es]][Mujeres Tech España][mar 2022 hasta la fecha]
Acompaño a mujeres que quieren iniciarse en gestión de producto mediante sesiones de mentoría mensuales\.
Colaboro en el diseño de talleres de desarrollo profesional y de liderazgo\.
]