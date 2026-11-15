#set document(
  title: "Lucía Fernández Gómez - Customer Success Manager | Especialista en Retención y Crecimiento de Clientes",
  author: "Lucía Fernández Gómez",
  keywords: "Gestión de Customer Success, Herramientas CRM, Análisis de Datos, Comunicación y Liderazgo",
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

#text(size: 1.44em)[Customer Success Manager | Especialista en Retención y Crecimiento de Clientes]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia.fernandez@example.com")[lucia\.fernandez\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.luciafernandez.es")[https\:\/\/www\.luciafernandez\.es]

Calle de Serrano 45, Madrid, Comunidad de Madrid, España, 28001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucia-fernandez-csm")[lucia\-fernandez\-csm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/lucia_csm")[lucia\_csm]
]

= Información básica

#resume-pad[
Customer Success Manager con más de 8 años de experiencia en empresas SaaS y tecnología, enfocada en la retención, adopción y crecimiento de clientes estratégicos\.

- Gestión de carteras de clientes B2B con un NPS superior a 70 y una tasa de retención del 95%\.
- Implementación de programas de onboarding que reducen el time\-to\-value en un 30%\.
- Colaboración estrecha con Ventas, Producto y Soporte para identificar oportunidades de upselling y cross\-selling\.
- Comunicación bilingüe (español nativo, inglés profesional) y orientación a resultados\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Complutense de Madrid][#link("https://www.ucm.es")[https\:\/\/www\.ucm\.es]][Licenciatura, Administración y Dirección de Empresas, Puntuación: 8\.5][sept 2012–jul 2016]
- Formación sólida en gestión empresarial, análisis financiero y estrategia comercial\.
- Participación en programas de intercambio y proyectos de consultoría para pymes\.
- Desarrollo de habilidades de comunicación, liderazgo y trabajo en equipo\.
#strong[Cursos]: Fundamentos de Marketing, Comportamiento Organizacional, Gestión de Recursos Humanos, Contabilidad Financiera, Estadística Aplicada a la Empresa, Sistemas de Información para la Gestión, Negociación y Habilidades Directivas, Estrategia Empresarial
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Senior Customer Success Manager][#link("https://www.nexocloud.es")[https\:\/\/www\.nexocloud\.es]][Nexo Cloud Solutions][ene 2021 hasta la fecha]
- Responsable de una cartera de 45 clientes enterprise con un valor anual contratado (ACV) de 4,5 M€\.
- Diseñé y ejecuté el plan de éxito del cliente, logrando un aumento del 25% en la adopción de producto y una reducción del churn del 18%\.
- Lideré revisiones trimestrales (QBR) con directivos, alineando métricas de negocio con el valor entregado\.
- Identifiqué oportunidades de expansión por 1,2 M€ mediante análisis de uso y colaboración con el equipo de Ventas\.
- Mentoría a dos Customer Success Managers junior, mejorando sus índices de satisfacción y retención\.
#strong[Palabras clave]: Retención de clientes, Onboarding, QBR, Upselling, SaaS, CRM

#resume-subheading[Customer Success Manager][#link("https://www.datavista.es")[https\:\/\/www\.datavista\.es]][DataVista Analytics][mar 2018–dic 2020]
- Gestioné una cartera de 80 clientes pyme y mid\-market en el sector de analítica de datos\.
- Implementé un programa de onboarding automatizado que redujo el tiempo de activación de 30 a 21 días\.
- Aumenté el NPS de 45 a 68 en 18 meses mediante seguimiento proactivo y resolución de incidencias\.
- Colaboré con Producto en la priorización de funcionalidades solicitadas por clientes clave\.
- Realicé formaciones periódicas y webinars para fomentar la adopción de nuevas funcionalidades\.
#strong[Palabras clave]: Analítica de datos, NPS, Onboarding, Formación, Pyme

#resume-subheading[Customer Support Specialist][#link("https://www.solucionesagiles.com")[https\:\/\/www\.solucionesagiles\.com]][Soluciones Ágiles][sept 2016–feb 2018]
- Atendí solicitudes de soporte técnico y funcional de más de 200 clientes corporativos\.
- Resolví incidencias con un índice de satisfacción del 92% y un tiempo medio de respuesta inferior a 2 horas\.
- Documenté procedimientos y creé una base de conocimiento que redujo las consultas repetitivas en un 35%\.
- Coordiné escalados con los equipos de Ingeniería y Producto para la resolución de bugs críticos\.
#strong[Palabras clave]: Soporte técnico, Base de conocimiento, SLA, Escalado
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Español nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: C1, TOEIC 950])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francés]: Competencia elemental], [#strong[Palabras clave]: A2])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestión de Customer Success]: Experto], [#strong[Palabras clave]: Retención, Onboarding, QBR, Planes de éxito, Renovaciones])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Herramientas CRM]: Avanzado], [#strong[Palabras clave]: Salesforce, HubSpot, Gainsight, Zendesk])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análisis de Datos]: Avanzado], [#strong[Palabras clave]: Excel, SQL, Tableau, KPIs])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Comunicación y Liderazgo]: Experto], [#strong[Palabras clave]: Presentaciones, Negociación, Mentoría, Trabajo en equipo])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Excelencia en Customer Success][][Nexo Cloud Solutions][dic 2023]
Reconocimiento anual por lograr la mayor tasa de retención y satisfacción de clientes en la compañía\.

#resume-subheading[Innovación en Procesos de Onboarding][][DataVista Analytics][jun 2020]
Galardón por el diseño e implementación de un programa de onboarding que mejoró el time\-to\-value en un 30%\.
]

= Certificados
#resume-pad[
#resume-subheading[Certified Customer Success Manager (CCSM)][#link("https://www.successcoaching.com/certifications")[https\:\/\/www\.successcoaching\.com\/certifications]][SuccessCOACHING][mar 2021]

#resume-subheading[Salesforce Certified Administrator][#link("https://trailhead.salesforce.com/certifications")[https\:\/\/trailhead\.salesforce\.com\/certifications]][Salesforce][sept 2019]
]

= Publicaciones
#resume-pad[
#resume-subheading[Estrategias de retención en SaaS B2B][#link("https://www.revistacustomersuccess.es/articulos/retencion-saas-b2b")[https\:\/\/www\.revistacustomersuccess\.es\/articulos\/retencion\-saas\-b2b]][Revista Customer Success España][may 2022]
- Artículo sobre las mejores prácticas para reducir el churn en empresas de software como servicio\.
- Incluye casos de éxito y métricas clave para medir el impacto de Customer Success\.
]

= Proyectos
#resume-pad[
#resume-subheading[Programa de Onboarding 2\.0][#link("https://www.nexocloud.es/onboarding")[https\:\/\/www\.nexocloud\.es\/onboarding]][Rediseño del proceso de incorporación de clientes para acelerar la adopción y el valor\.][ene 2022–jun 2022]
- Reestructuré las fases de onboarding con hitos medibles y materiales personalizados por sector\.
- Integré el programa con el CRM para automatizar seguimientos y alertas tempranas\.
- Resultado\: reducción del tiempo de activación en un 30% y aumento del 20% en la adopción de funciones clave\.
#strong[Palabras clave]: Onboarding, Automatización, Adopción

#resume-subheading[Dashboard de Salud del Cliente][#link("https://www.nexocloud.es/dashboard-salud")[https\:\/\/www\.nexocloud\.es\/dashboard\-salud]][Panel interno para monitorizar el riesgo de churn y las oportunidades de expansión\.][mar 2021–sept 2021]
- Definí métricas de salud del cliente (uso, tickets, NPS, facturación) y umbrales de alerta\.
- Desarrollé informes automatizados en Tableau para el equipo de Customer Success\.
- Permitiió priorizar acciones proactivas y evitar renovaciones en riesgo\.
#strong[Palabras clave]: Churn, KPIs, Tableau
]

= Intereses
#resume-pad[
#strong[Tecnología]: SaaS, Inteligencia artificial, No\-code

#strong[Sostenibilidad]: Economía circular, Voluntariado ambiental

#strong[Bienestar]: Yoga, Meditación, Running
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentor de Customer Success][#link("https://www.aecs.es")[https\:\/\/www\.aecs\.es]][Asociación Española de Customer Success][sept 2021 hasta la fecha]
- Ejercí como mentora de profesionales junior en la definición de planes de carrera y mejora de habilidades de gestión de clientes\.
- Participé en jornadas y talleres sobre retención, onboarding y métricas de éxito del cliente\.
- Colaboré en la creación de una guía de buenas prácticas para equipos de Customer Success en España\.
]