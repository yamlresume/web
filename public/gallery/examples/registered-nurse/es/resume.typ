#set document(
  title: "Lucía Fernández Morales - Enfermera Registrada | Urgencias y Cuidados Críticos",
  author: "Lucía Fernández Morales",
  keywords: "Cuidados de Enfermería, Urgencias y Emergencias, Gestión Clínica, Educación Sanitaria",
  description: "Résumé of Lucía Fernández Morales",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Lucía Fernández Morales]] #v(-0.2em)

#text(size: 1.44em)[Enfermera Registrada | Urgencias y Cuidados Críticos]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia.fernandez@enfermeria.es")[lucia\.fernandez\@enfermeria\.es] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.luciafernandez-enfermeria.es")[https\:\/\/www\.luciafernandez\-enfermeria\.es]

Calle de la Salud 45, 3\.º B, Madrid, Comunidad de Madrid, España, 28012

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucia-fernandez-enfermeria")[lucia\-fernandez\-enfermeria] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/lucia_enfermera")[lucia\_enfermera]
]

= Información básica

#resume-pad[
Enfermera registrada con más de siete años de experiencia en hospitales de alta complejidad, especializada en urgencias, cuidados críticos y atención centrada en la persona\.

- Valoración integral del paciente y ejecución de cuidados de enfermería basados en evidencia\.
- Experiencia en triaje, monitorización hemodinámica, soporte vital avanzado y administración segura de medicamentos\.
- Coordinación con equipos multidisciplinares y comunicación clara con pacientes y familias\.
- Compromiso con la seguridad del paciente, la formación continua y la mejora de protocolos asistenciales\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Complutense de Madrid][#link("https://www.ucm.es")[https\:\/\/www\.ucm\.es]][Licenciatura, Enfermería, Puntuación: 8,7\/10][sept 2014–jun 2018]
- Formación generalista con prácticas clínicas en hospitalización, urgencias y atención primaria\.
- Trabajo de fin de grado sobre la prevención de infecciones asociadas a la atención sanitaria\.
- Participación en simulacros de soporte vital y en programas de educación para la salud\.
#strong[Cursos]: Fundamentos de Enfermería, Fisiología Humana, Farmacología Clínica, Cuidados Intensivos, Salud Pública, Ética y Legislación Sanitaria, Enfermería Materno\-Infantil, Urgencias y Emergencias
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Enfermera de Urgencias][#link("https://www.comunidad.madrid/hospital/lapaz")[https\:\/\/www\.comunidad\.madrid\/hospital\/lapaz]][Hospital Universitario La Paz][ene 2021 hasta la fecha]
- Realización de triaje inicial y clasificación de pacientes según prioridad asistencial en un servicio con más de 300 urgencias diarias\.
- Ejecución de cuidados de enfermería en pacientes críticos\: monitorización, canalización de vías, administración de fármacos y apoyo en soporte vital avanzado\.
- Coordinación con médicos, técnicos y auxiliares para garantizar una atención rápida, segura y humanizada\.
- Registro riguroso de datos clínicos y educación al paciente y a la familia sobre el plan de cuidados y los signos de alarma\.
#strong[Palabras clave]: Triaje, Urgencias, RCP avanzada, Monitorización, Registro clínico

#resume-subheading[Enfermera de Hospitalización][#link("https://www.comunidad.madrid/hospital/clinicosancarlos")[https\:\/\/www\.comunidad\.madrid\/hospital\/clinicosancarlos]][Hospital Clínico San Carlos][sept 2018–dic 2020]
- Atención integral a pacientes adultos en unidades de medicina interna y cirugía, con una media de 12 pacientes por turno\.
- Administración segura de medicamentos, curas, sondajes y control de signos vitales conforme a los protocolos del centro\.
- Colaboración en la preparación del paciente para pruebas diagnósticas e intervenciones quirúrgicas\.
- Educación sanitaria a pacientes y cuidadores para favorecer la continuidad de cuidados y la adherencia al tratamiento\.
#strong[Palabras clave]: Cuidados postoperatorios, Administración de medicamentos, Educación al paciente, Seguridad del paciente, Trabajo en equipo
]

= Idiomas
#resume-pad[
#strong[Español]: Competencia nativa o bilingüe

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: B2\-C1, Inglés sanitario])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francés]: Competencia limitada de trabajo], [#strong[Palabras clave]: A2])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Cuidados de Enfermería]: Experto], [#strong[Palabras clave]: Valoración del paciente, Cuidados básicos, Curas y vendajes, Sondajes, Control de signos vitales])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Urgencias y Emergencias]: Avanzado], [#strong[Palabras clave]: Triaje Manchester, RCP avanzada, Manejo de vías, Monitorización])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestión Clínica]: Intermedio], [#strong[Palabras clave]: Historia clínica electrónica, Registro de datos, Coordinación de equipos, Mejora de protocolos])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Educación Sanitaria]: Avanzado], [#strong[Palabras clave]: Educación al paciente, Promoción de la salud, Adherencia al tratamiento, Comunicación clínica])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Excelencia Asistencial][][Hospital Universitario La Paz][dic 2023]
Reconocimiento por la mejora del protocolo de comunicación en el triaje de urgencias y por la formación de nuevos profesionales\.

#resume-subheading[Mejor Expediente de Enfermería][][Universidad Complutense de Madrid][jun 2018]
Distinción otorgada al expediente académico con mayor calificación de la promoción en el Grado en Enfermería\.
]

= Certificados
#resume-pad[
#resume-subheading[Soporte Vital Avanzado (SVA)][#link("https://www.semes.org")[https\:\/\/www\.semes\.org]][Sociedad Española de Medicina de Urgencias y Emergencias][mar 2022]

#resume-subheading[Curso de Triaje Manchester][#link("https://www.triajemanchester.es")[https\:\/\/www\.triajemanchester\.es]][Grupo Español de Triaje][may 2021]

#resume-subheading[Enfermería de Urgencias y Emergencias][#link("https://www.comunidad.madrid/hospital/lapaz")[https\:\/\/www\.comunidad\.madrid\/hospital\/lapaz]][Hospital Universitario La Paz][oct 2020]
]

= Publicaciones
#resume-pad[
#resume-subheading[Protocolo de actuación en triaje de urgencias pediátricas][#link("https://www.enfermeriaurgencias.es/articulos/triaje-pediatrico")[https\:\/\/www\.enfermeriaurgencias\.es\/articulos\/triaje\-pediatrico]][Revista Española de Enfermería de Urgencias][nov 2023]
- Artículo basado en la experiencia del servicio de urgencias del Hospital Universitario La Paz\.
- Propone criterios de valoración rápida y comunicación estructurada entre enfermería y pediatría\.
- Incluye indicadores de calidad para evaluar la adherencia al protocolo\.
]

= Referencias
#resume-pad[
#resume-subheading[Dra\. Marta Ruiz Salgado][Supervisora de Urgencias][marta\.ruiz\@salud\.madrid\.org][\+34 915 123 456]
Lucía destaca por su criterio clínico, su capacidad de priorización y su trato cercano con pacientes y familias\. Es una profesional fiable y comprometida con la mejora continua\.
]

= Proyectos
#resume-pad[
#resume-subheading[Programa de educación para la salud en diabetes][#link("https://www.madrid.es/salud/diabetes")[https\:\/\/www\.madrid\.es\/salud\/diabetes]][Programa comunitario para mejorar el autocuidado de personas con diabetes tipo 2\.][feb 2022–nov 2022]
- Diseño de talleres sobre alimentación, ejercicio y control de la glucemia\.
- Coordinación con atención primaria y asociaciones de pacientes\.
- Evaluación de la satisfacción y de la adherencia a las recomendaciones\.
#strong[Palabras clave]: Educación sanitaria, Diabetes, Atención primaria, Autocuidado
]

= Intereses
#resume-pad[
#strong[Voluntariado sanitario]: Cruz Roja, Primeros auxilios, Formación

#strong[Deporte]: Natación, Carrera, Yoga

#strong[Lectura]: Divulgación científica, Novela histórica
]

= Voluntariado
#resume-pad[
#resume-subheading[Voluntaria de Socorros y Emergencias][#link("https://www.cruzroja.es")[https\:\/\/www\.cruzroja\.es]][Cruz Roja Española][jun 2016–sept 2019]
- Participación en dispositivos preventivos y atención de primeros auxilios en eventos públicos\.
- Formación a nuevos voluntarios en soporte vital básico y manejo inicial de emergencias\.
- Colaboración en campañas de promoción de la salud y donación de sangre\.
]