#set document(
  title: "Lucía Ferrer Navarro - Gerente de Recursos Humanos especializada en talento y cultura",
  author: "Lucía Ferrer Navarro",
  keywords: "Gestión del talento, Relaciones laborales, Analítica de personas, Desarrollo organizacional, Sistemas de RR. HH.",
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

#text(size: 1.44em)[Gerente de Recursos Humanos especializada en talento y cultura]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 910 555 274")[\+34 910 555 274] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia.ferrer@example.com")[lucia\.ferrer\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.luciaferrer-hr.es")[https\:\/\/www\.luciaferrer\-hr\.es]

Calle de Serrano 45, 4º B, Madrid, Comunidad de Madrid, España, 28001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/luciaferrerhr")[luciaferrerhr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@luciaferrerhr")[luciaferrerhr]
]

= Información básica

#resume-pad[
- Gerente de Recursos Humanos con más de diez años de experiencia diseñando estrategias de talento, cultura y relaciones laborales en entornos retail y tecnológicos\.
- Especializada en planificación de plantilla, desarrollo de liderazgo, analítica de personas y programas de bienestar que mejoran la retención y el compromiso\.
- Experiencia liderando equipos multidisciplinares y acompañando procesos de transformación organizativa, cambio cultural y crecimiento internacional\.
- Enfoque orientado a resultados, con capacidad para traducir necesidades de negocio en políticas de personas medibles y sostenibles\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Complutense de Madrid][#link("https://www.ucm.es")[https\:\/\/www\.ucm\.es]][Maestría, Dirección de Recursos Humanos, Puntuación: 9\.1][2011\-09\-01–2012\-07\-15]
- Formación avanzada en dirección de personas, estrategia de talento y transformación organizativa\.
- Trabajo final sobre modelos de retención y desarrollo de liderazgo en empresas de servicios\.
#strong[Cursos]: Gestión estratégica del talento, Derecho laboral y relaciones de trabajo, Psicología organizacional, Análisis de datos aplicado a RR\. HH\., Compensación y beneficios, Desarrollo organizacional

#resume-subheading[Universidad de Valencia][#link("https://www.uv.es")[https\:\/\/www\.uv\.es]][Licenciatura, Relaciones Laborales y Recursos Humanos, Puntuación: 8\.7][2007\-09\-15–2011\-06\-30]
- Base académica sólida en relaciones laborales, gestión de personas y marco normativo del empleo\.
- Prácticas en departamento de personal y participación en proyectos de diagnóstico organizativo\.
#strong[Cursos]: Sociología del trabajo, Economía laboral, Gestión de la formación, Negociación colectiva, Derecho del trabajo
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Gerente de Recursos Humanos][#link("https://www.grupomeridianoretail.es")[https\:\/\/www\.grupomeridianoretail\.es]][Grupo Meridiano Retail][2020\-02\-01 hasta la fecha]
- Lidero la función de Recursos Humanos para una plantilla de 1\.200 personas distribuidas en 85 tiendas y tres centros logísticos\.
- Diseñé e implanté el plan estratégico de personas 2021\-2024, alineado con los objetivos de crecimiento, digitalización y experiencia de cliente\.
- Impulsé un modelo de analítica de personas que redujo la rotación voluntaria un 18 % y mejoró el tiempo de cobertura de vacantes en un 25 %\.
- Coordino las relaciones laborales con los comités de empresa y la negociación de convenios, asegurando un clima social estable\.
- Desarrollé programas de liderazgo, bienestar y diversidad reconocidos por la dirección general y por entidades del sector\.
#strong[Palabras clave]: Gestión del talento, Cultura organizacional, Relaciones laborales, Analítica de personas

#resume-subheading[Responsable de Desarrollo de Talento][#link("https://www.neurotechsolutions.es")[https\:\/\/www\.neurotechsolutions\.es]][NeuroTech Solutions Iberia][2016\-03\-01–2020\-01\-31]
- Diseñé el modelo de selección por competencias y lideré la incorporación de 140 perfiles tecnológicos y comerciales\.
- Implementé el ciclo de desempeño y los planes de desarrollo individual, con una cobertura del 92 % de la plantilla\.
- Puse en marcha el programa de marca empleadora, aumentando las candidaturas espontáneas un 35 %\.
- Coordiné formación técnica y de liderazgo para equipos distribuidos en España, Portugal e Italia\.
#strong[Palabras clave]: Selección, Formación, Evaluación del desempeño, Marca empleadora

#resume-subheading[Especialista de Recursos Humanos][#link("https://www.consultoraalameda.es")[https\:\/\/www\.consultoraalameda\.es]][Consultora Alameda][2012\-09\-01–2016\-02\-28]
- Gestioné procesos de reclutamiento, incorporación y administración de personal para clientes de servicios profesionales\.
- Elaboré políticas de RR\. HH\., descripciones de puesto y procedimientos de gestión documental\.
- Participé en proyectos de compensación, encuestas salariales y análisis de indicadores de plantilla\.
#strong[Palabras clave]: Reclutamiento, Incorporación, Políticas de RR\. HH\., Sistemas de RR\. HH\.
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Español nativo, Comunicación escrita])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: C1 certificado, Inglés de negocios])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francés]: Competencia limitada de trabajo], [#strong[Palabras clave]: DELF B1, Reuniones básicas])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestión del talento]: Experto], [#strong[Palabras clave]: Planificación de plantilla, Selección por competencias, Desarrollo de carrera, Gestión del desempeño])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Relaciones laborales]: Avanzado], [#strong[Palabras clave]: Negociación colectiva, Convenios colectivos, Prevención de riesgos, Disciplina laboral])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analítica de personas]: Avanzado], [#strong[Palabras clave]: Power BI, Excel avanzado, Encuestas de clima, Indicadores de RR\. HH\.])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Desarrollo organizacional]: Avanzado], [#strong[Palabras clave]: Diseño organizativo, Gestión del cambio, Cultura corporativa, Comunicación interna])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Sistemas de RR\. HH\.]: Intermedio], [#strong[Palabras clave]: Workday, SAP SuccessFactors, BambooHR, Factorial])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Excelencia en Gestión de Personas][][Asociación Española de Dirección de Personas][2019\-11\-15]
- Reconocimiento por el diseño e implantación de un modelo de desarrollo de liderazgo orientado a la retención del talento clave\.

#resume-subheading[Reconocimiento a la Mejor Iniciativa de Bienestar Laboral][][Grupo Meridiano Retail][2023\-06\-20]
- Galardón interno por el programa de bienestar integral que mejoró la satisfacción laboral y redujo el absentismo\.
]

= Certificados
#resume-pad[
#resume-subheading[Certificación Profesional en Analítica de Personas][#link("https://www.iap.es")[https\:\/\/www\.iap\.es]][Instituto de Analítica de Personas][2021\-10\-01]

#resume-subheading[Experto en Dirección de Recursos Humanos][#link("https://www.ie.edu")[https\:\/\/www\.ie\.edu]][IE Business School][2018\-05\-15]

#resume-subheading[Certificado en Prevención de Riesgos Laborales][#link("https://www.insst.es")[https\:\/\/www\.insst\.es]][Instituto Nacional de Seguridad y Salud en el Trabajo][2015\-09\-10]
]

= Publicaciones
#resume-pad[
#resume-subheading[El futuro del trabajo híbrido\: claves para una cultura inclusiva][#link("https://www.capitalhumano.es")[https\:\/\/www\.capitalhumano\.es]][Revista Capital Humano][2023\-03\-01]
- Artículo sobre modelos de trabajo híbrido, liderazgo flexible y prácticas de inclusión\.
- Incluye recomendaciones para medir el impacto del trabajo híbrido en el compromiso y la productividad\.

#resume-subheading[Analítica de personas para decisiones de talento][#link("https://www.harvard-deusto.com")[https\:\/\/www\.harvard\-deusto\.com]][Harvard Deusto Business Review][2022\-07\-01]
- Publicación sobre el uso de indicadores de personas para priorizar inversiones en talento\.
- Analiza casos prácticos de retención, absentismo y planificación de la sucesión\.
]

= Proyectos
#resume-pad[
#resume-subheading[Programa Impulsa Talento][#link("https://www.grupomeridianoretail.es/impulsa-talento")[https\:\/\/www\.grupomeridianoretail\.es\/impulsa\-talento]][Programa de desarrollo y promoción interna para mandos intermedios de retail\.][2021\-01\-15–2022\-12\-20]
- Diseñé un itinerario de formación, mentoría y rotación interna para 60 personas con alto potencial\.
- El 45 % de las participantes promocionó a posiciones de responsabilidad en menos de 18 meses\.
- El programa mejoró el indicador de movilidad interna y la satisfacción con el desarrollo de carrera\.
#strong[Palabras clave]: Desarrollo de talento, Promoción interna, Mentoría

#resume-subheading[Modelo de Teletrabajo Sostenible][#link("https://www.grupomeridianoretail.es/teletrabajo")[https\:\/\/www\.grupomeridianoretail\.es\/teletrabajo]][Marco de teletrabajo híbrido para oficinas centrales y equipos de soporte\.][2020\-09\-01–2021\-06\-30]
- Lideré el diagnóstico, la negociación con la representación legal y el despliegue del modelo híbrido\.
- Definí criterios de elegibilidad, dotación tecnológica y formación para líderes y equipos\.
- El modelo aumentó la satisfacción con la flexibilidad y mantuvo la productividad de los equipos\.
#strong[Palabras clave]: Teletrabajo, Flexibilidad, Bienestar
]

= Intereses
#resume-pad[
#strong[Bienestar y deporte]: Yoga, Senderismo, Carrera

#strong[Mentoría y comunidad]: Mentoría de mujeres, Voluntariado, Formación continua

#strong[Lectura y cultura]: Novela histórica, Pódcasts de gestión, Cine europeo
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de carrera profesional][#link("https://www.fundacionintegra.org")[https\:\/\/www\.fundacionintegra\.org]][Fundación Integra Talento][2019\-03\-01 hasta la fecha]
- Acompaño a personas en transición profesional en la definición de objetivos, marca personal y preparación de entrevistas\.
- Participo en talleres de empleabilidad y sesiones de orientación para colectivos en riesgo de exclusión\.

#resume-subheading[Voluntaria en orientación laboral][#link("https://www.graduadosocialmadrid.es")[https\:\/\/www\.graduadosocialmadrid\.es]][Colegio de Graduados Sociales de Madrid][2017\-01\-10–2019\-02\-28]
- Ofrecí orientación laboral y revisión de currículos a personas desempleadas\.
- Colaboré en jornadas de formación sobre búsqueda de empleo y competencias digitales\.
]