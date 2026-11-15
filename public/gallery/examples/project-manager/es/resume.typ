#set document(
  title: "Lucía Fernández Gómez - Gerente de Proyectos Senior | PMP | Transformación Digital",
  author: "Lucía Fernández Gómez",
  keywords: "Gestión de Proyectos, Metodologías Ágiles, Herramientas, Liderazgo y Comunicación, Análisis y Datos",
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

#text(size: 1.44em)[Gerente de Proyectos Senior | PMP | Transformación Digital]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia.fernandez@email.com")[lucia\.fernandez\@email\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.luciafernandez-pm.com")[https\:\/\/www\.luciafernandez\-pm\.com]

Calle de Alcalá 123, 4º B, Madrid, Comunidad de Madrid, España, 28010

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/luciafernandez-pm")[luciafernandez\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/luciafernandez")[luciafernandez] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/lucia_pm")[lucia\_pm]
]

= Información básica

#resume-pad[
Gerente de Proyectos con más de 8 años de experiencia liderando proyectos tecnológicos y de transformación digital en sectores como banca, retail y salud\. Especializada en metodologías ágiles (Scrum, Kanban) y en la gestión integral del ciclo de vida del proyecto, desde la definición de requisitos hasta la entrega y el cierre\.

- Lideré equipos multidisciplinares de hasta 25 personas, alcanzando una tasa de entrega del 95% dentro del plazo y presupuesto\.
- Gestioné presupuestos de hasta 2,5 M€, optimizando costes en un 18% mediante la renegociación con proveedores y la mejora de procesos\.
- Certificada PMP, Scrum Master y ITIL Foundation, con sólida experiencia en gestión de stakeholders y comunicación ejecutiva\.
- Apasionada por la mejora continua y la adopción de herramientas digitales para la gestión de proyectos (Jira, Asana, MS Project)\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Politécnica de Madrid][#link("https://www.upm.es")[https\:\/\/www\.upm\.es]][Maestría, Dirección de Proyectos, Puntuación: 9\.2][2017\-09\-01–2019\-07\-15]
- Formación avanzada en dirección y gestión de proyectos complejos
- Proyecto fin de máster\: implantación de PMO en una empresa del sector retail
#strong[Cursos]: Gestión de Proyectos Ágiles, Planificación y Control de Proyectos, Gestión de Riesgos, Liderazgo de Equipos, Finanzas para Gerentes de Proyecto, Metodologías PMBOK

#resume-subheading[Universidad de Sevilla][#link("https://www.us.es")[https\:\/\/www\.us\.es]][Licenciatura, Administración y Dirección de Empresas, Puntuación: 8\.7][2011\-09\-01–2015\-06\-30]
- Base sólida en administración, finanzas y gestión empresarial
- Participación en programas de intercambio internacional
#strong[Cursos]: Contabilidad Financiera, Dirección Estratégica, Gestión de Operaciones, Comportamiento Organizacional, Marketing
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Gerente de Proyectos Senior][#link("https://telefonicatech.com")[https\:\/\/telefonicatech\.com]][Telefónica Tech][2021\-03\-01 hasta la fecha]
- Lideré un portfolio de 12 proyectos de transformación digital con un presupuesto total de 2,5 M€\.
- Implementé marcos ágiles híbridos (Scrum \+ Kanban) que redujeron el time\-to\-market en un 30%\.
- Coordiné equipos multidisciplinares de hasta 25 personas distribuidas en 4 países\.
- Gestioné la relación con stakeholders ejecutivos, presentando informes de progreso y métricas KPI\.
- Implanté una PMO que estandarizó procesos y mejoró la trazabilidad de los proyectos\.
#strong[Palabras clave]: Scrum, Kanban, Gestión de riesgos, Presupuestos, PMO, Stakeholders

#resume-subheading[Gerente de Proyectos][#link("https://www.santander.com")[https\:\/\/www\.santander\.com]][Banco Santander][2019\-09\-01–2021\-02\-28]
- Dirigí proyectos de desarrollo de software bancario bajo metodología Agile, con equipos de 10\-15 personas\.
- Gestioné el ciclo completo de vida de los proyectos\: análisis, planificación, ejecución, seguimiento y cierre\.
- Elaboré planes de proyecto, cronogramas y matrices de riesgos, asegurando el cumplimiento de plazos y presupuestos\.
- Facilité ceremonias ágiles (daily stand\-ups, sprint planning, retrospectivas) y eliminé impedimentos\.
- Colaboré con product owners y equipos técnicos para priorizar el backlog y entregar valor de forma continua\.
#strong[Palabras clave]: Agile, Scrum, Jira, Backlog, Banca, Gestión de proyectos

#resume-subheading[Analista de Proyectos][#link("https://www.accenture.com")[https\:\/\/www\.accenture\.com]][Accenture][2015\-09\-01–2017\-08\-31]
- Apoyé la gestión de proyectos de consultoría tecnológica para clientes del sector público y privado\.
- Realicé seguimiento de hitos, elaboración de informes de estado y coordinación de reuniones con clientes\.
- Participé en la definición de alcance, estimación de esfuerzos y control de cambios\.
- Contribuí a la implantación de herramientas de gestión como MS Project y Confluence\.
#strong[Palabras clave]: MS Project, Confluence, Consultoría, Informes, Control de cambios
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Español nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: TOEFL 105, Certificado C1])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francés]: Competencia limitada de trabajo], [#strong[Palabras clave]: DELF B1])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestión de Proyectos]: Experto], [#strong[Palabras clave]: PMBOK, Planificación, Presupuestos, Gestión de riesgos, Cronogramas])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Metodologías Ágiles]: Avanzado], [#strong[Palabras clave]: Scrum, Kanban, Lean, SAFe, Design Thinking])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Herramientas]: Avanzado], [#strong[Palabras clave]: Jira, Confluence, MS Project, Asana, Trello, Monday\.com])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Liderazgo y Comunicación]: Experto], [#strong[Palabras clave]: Liderazgo de equipos, Negociación, Comunicación ejecutiva, Gestión de stakeholders])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análisis y Datos]: Intermedio], [#strong[Palabras clave]: Power BI, Excel avanzado, SQL, Métricas KPI])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Excelencia en Gestión de Proyectos][][PMI Madrid][2023\-11\-15]
Reconocimiento por la dirección del proyecto de transformación digital con mayor impacto en el sector bancario\.

#resume-subheading[Empleada del Año][][Telefónica Tech][2022\-12\-20]
Distinción por liderazgo excepcional y resultados sobresalientes en la gestión de proyectos estratégicos\.
]

= Certificados
#resume-pad[
#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][2020\-06\-15]

#resume-subheading[Professional Scrum Master I (PSM I)][#link("https://www.scrum.org/professional-scrum-master-i-certification")[https\:\/\/www\.scrum\.org\/professional\-scrum\-master\-i\-certification]][Scrum\.org][2021\-02\-10]

#resume-subheading[ITIL Foundation][#link("https://www.axelos.com/certifications/itil-certifications")[https\:\/\/www\.axelos\.com\/certifications\/itil\-certifications]][AXELOS][2019\-09\-01]
]

= Publicaciones
#resume-pad[
#resume-subheading[Guía práctica para la implantación de una PMO ágil][#link("https://www.revistadeproyectos.es/guia-pmo-agil")[https\:\/\/www\.revistadeproyectos\.es\/guia\-pmo\-agil]][Revista de Dirección de Proyectos][2022\-05\-01]
Artículo que describe un marco práctico para implantar una oficina de proyectos ágil en organizaciones medianas\.

#resume-subheading[Métricas de valor en proyectos de transformación digital][#link("https://www.congresoproyectos.org/metricas-valor")[https\:\/\/www\.congresoproyectos\.org\/metricas\-valor]][Congreso Internacional de Gestión de Proyectos][2021\-10\-15]
Ponencia sobre indicadores clave para medir el retorno de inversión en iniciativas de transformación digital\.
]

= Proyectos
#resume-pad[
#resume-subheading[Plataforma de Gestión de Proyectos Interna][#link("https://www.telefonicatech.com/proyectos/pm-tool")[https\:\/\/www\.telefonicatech\.com\/proyectos\/pm\-tool]][Desarrollo de una herramienta interna para centralizar la gestión de proyectos y recursos\.][2022\-01\-10–2022\-12\-20]
- Lideré el proyecto desde la definición de requisitos hasta el despliegue en producción\.
- Coordiné un equipo de 8 desarrolladores, 2 diseñadores y 1 analista de negocio\.
- Implementé integraciones con Jira y Power BI para la automatización de informes\.
- Reduje el tiempo de reporting semanal en un 60%\.
#strong[Palabras clave]: Jira, Power BI, Gestión de proyectos, Automatización

#resume-subheading[Transformación Digital del Proceso de Onboarding][#link("https://www.santander.com/onboarding-digital")[https\:\/\/www\.santander\.com\/onboarding\-digital]][Digitalización del proceso de incorporación de clientes para una entidad bancaria\.][2020\-03\-01–2021\-01\-31]
- Dirigí la implementación de un flujo digital de onboarding con firma electrónica\.
- Reduje el tiempo de alta de clientes de 5 días a 2 horas\.
- Gestioné la coordinación entre equipos de negocio, IT, legal y cumplimiento normativo\.
- Aseguré el cumplimiento de la normativa KYC y GDPR\.
#strong[Palabras clave]: Transformación digital, Banca, KYC, GDPR, Onboarding
]

= Intereses
#resume-pad[
#strong[Deporte]: Senderismo, Natación, Yoga

#strong[Voluntariado]: Mentoría, Formación

#strong[Lectura]: Novela histórica, Ensayo

#strong[Viajes]: Asia, Europa
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de Proyectos Sociales][#link("https://www.fundacionintegra.org")[https\:\/\/www\.fundacionintegra\.org]][Fundación Integra][2021\-09\-01–2023\-06\-30]
- Acompaño a organizaciones sin ánimo de lucro en la planificación y ejecución de proyectos sociales\.
- Facilito talleres de gestión de proyectos y metodologías ágiles adaptadas al tercer sector\.
- Ayudo a definir indicadores de impacto y a mejorar la sostenibilidad de las iniciativas\.

#resume-subheading[Voluntaria en Comité de Eventos][#link("https://pmi-madrid.es")[https\:\/\/pmi\-madrid\.es]][PMI Madrid Chapter][2018\-01\-01–2020\-12\-31]
- Colaboré en la organización de congresos y jornadas de gestión de proyectos\.
- Gestioné la logística y coordinación de ponentes para eventos con más de 300 asistentes\.
- Apoyé la comunicación y difusión en redes sociales\.
]