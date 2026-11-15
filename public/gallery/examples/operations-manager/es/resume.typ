#set document(
  title: "Lucía Fernández Moreno - Gerente de Operaciones | Eficiencia, personas y mejora continua",
  author: "Lucía Fernández Moreno",
  keywords: "Gestión de Operaciones, Liderazgo y Equipos, Análisis y Herramientas, Logística y Cadena de Suministro",
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

#text(size: 1.44em)[Gerente de Operaciones | Eficiencia, personas y mejora continua]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia.fernandez@example.com")[lucia\.fernandez\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.luciafernandez.es")[https\:\/\/www\.luciafernandez\.es]

Calle de Alcalá 120, 4º B, Madrid, Comunidad de Madrid, España, 28009

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucia-fernandez-ops")[lucia\-fernandez\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@luciafernandezops")[luciafernandezops]
]

= Información básica

#resume-pad[
- Gerente de Operaciones con más de 10 años de experiencia en logística, retail y servicios, liderando equipos multidisciplinares de hasta 45 personas\.
- Especializada en optimización de procesos, control de costes, planificación de la demanda y mejora continua mediante metodologías Lean Six Sigma\.
- Historial demostrado en la reducción de tiempos de entrega, aumento de la productividad y despliegue de indicadores operativos alineados con objetivos estratégicos\.
- Profesional orientada a resultados, con sólida capacidad de negociación, gestión de proveedores y coordinación entre áreas comerciales, financieras y de atención al cliente\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Carlos III de Madrid][#link("https://www.uc3m.es")[https\:\/\/www\.uc3m\.es]][Maestría, Dirección de Operaciones, Puntuación: 8,9\/10][2013\-09\-01–2014\-07\-01]
- Formación avanzada en diseño, planificación y control de operaciones\.
- Trabajo de fin de máster sobre optimización de inventarios en retail\.
#strong[Cursos]: Gestión de la Cadena de Suministro, Dirección de Producción, Análisis de Datos para Operaciones, Gestión de Calidad, Negociación y Gestión de Proveedores

#resume-subheading[Universidad de Valladolid][#link("https://www.uva.es")[https\:\/\/www\.uva\.es]][Licenciatura, Administración y Dirección de Empresas, Puntuación: 8,2\/10][2009\-09\-01–2013\-06\-30]
- Base sólida en gestión empresarial, finanzas y análisis cuantitativo\.
- Participación en proyectos de consultoría para pymes locales\.
#strong[Cursos]: Economía de la Empresa, Contabilidad Financiera, Estadística Aplicada, Dirección de Recursos Humanos, Logística Empresarial
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Gerente de Operaciones][#link("https://www.novaretail.es")[https\:\/\/www\.novaretail\.es]][Distribuciones NovaRetail S\.L\.][2019\-03\-01 hasta la fecha]
- Dirección de las operaciones de una red de 18 tiendas y un centro de distribución, con un equipo de 45 personas\.
- Rediseño de los procesos de reposición y planificación de la demanda, reduciendo el stock obsoleto un 23 % y mejorando el nivel de servicio al 97 %\.
- Implantación de un cuadro de mando con indicadores de productividad, costes logísticos y satisfacción del cliente\.
- Negociación de contratos con proveedores y operadores logísticos, con un ahorro anual superior a 180\.000 EUR\.
- Impulso de programas de formación y desarrollo del equipo, disminuyendo la rotación un 15 %\.
#strong[Palabras clave]: Lean Six Sigma, Planificación S&OP, Control de costes, Gestión de equipos, Indicadores

#resume-subheading[Coordinadora de Operaciones][#link("https://www.logistica-iberica.com")[https\:\/\/www\.logistica\-iberica\.com]][Logística Ibérica Express][2015\-06\-01–2019\-02\-28]
- Coordinación de una flota de 60 vehículos y de las operaciones diarias de reparto en la zona centro\.
- Optimización de rutas y planificación de turnos, logrando una reducción del 12 % en kilómetros recorridos\.
- Seguimiento de acuerdos de nivel de servicio con clientes clave y resolución de incidencias operativas\.
- Colaboración con el área de sistemas en la digitalización de albaranes y pruebas de entrega\.
#strong[Palabras clave]: Gestión de flotas, Optimización de rutas, Atención al cliente, Nivel de servicio

#resume-subheading[Supervisora de Tienda][#link("https://www.grupomercadocentral.es")[https\:\/\/www\.grupomercadocentral\.es]][Grupo Mercado Central][2014\-09\-01–2015\-05\-31]
- Supervisión de un equipo de 12 personas en una tienda de gran superficie\.
- Gestión de inventarios, reposición y control de mermas\.
- Formación en atención al cliente y cumplimiento de estándares de calidad y seguridad\.
#strong[Palabras clave]: Gestión de inventario, Atención al cliente, Control de mermas, Seguridad
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Español nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: C1, Uso profesional])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francés]: Competencia limitada de trabajo], [#strong[Palabras clave]: A2])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestión de Operaciones]: Experto], [#strong[Palabras clave]: Planificación de demanda, Mejora continua, Lean Six Sigma, Gestión de inventario, Planificación S&OP])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Liderazgo y Equipos]: Avanzado], [#strong[Palabras clave]: Gestión de equipos, Mentoría, Negociación, Gestión del cambio, Comunicación])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análisis y Herramientas]: Avanzado], [#strong[Palabras clave]: Excel avanzado, Power BI, SAP, Tableau, SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Logística y Cadena de Suministro]: Experto], [#strong[Palabras clave]: Aprovisionamiento, Gestión de proveedores, Almacenamiento, Transporte, Última milla])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Excelencia Operativa][][Distribuciones NovaRetail S\.L\.][2022\-11\-15]
Reconocimiento por la mejora del nivel de servicio y la reducción de costes logísticos durante el ejercicio 2022\.

#resume-subheading[Reconocimiento por Mejora Continua][][Logística Ibérica Express][2018\-06\-20]
Distinción por la optimización de rutas y la disminución de incidencias en la zona centro\.
]

= Certificados
#resume-pad[
#resume-subheading[Lean Six Sigma Green Belt][#link("https://asq.org/cert/lean-six-sigma-green-belt")[https\:\/\/asq\.org\/cert\/lean\-six\-sigma\-green\-belt]][ASQ][2020\-02\-10]

#resume-subheading[Certificación en Gestión de Cadena de Suministro][#link("https://www.ascm.org/credentials/cscp/")[https\:\/\/www\.ascm\.org\/credentials\/cscp\/]][APICS][2019\-09\-05]
]

= Publicaciones
#resume-pad[
#resume-subheading[Optimización de inventarios en redes de retail][#link("https://www.revistadireccionoperaciones.com/articulos/optimizacion-inventarios-retail")[https\:\/\/www\.revistadireccionoperaciones\.com\/articulos\/optimizacion\-inventarios\-retail]][Revista de Dirección y Operaciones][2021\-04\-12]
- Artículo sobre modelos de reposición y planificación de la demanda en entornos multitienda\.
- Análisis de indicadores clave para reducir roturas de stock sin aumentar el capital inmovilizado\.
]

= Proyectos
#resume-pad[
#resume-subheading[Automatización del Inventario][#link("https://www.novaretail.es/proyectos/inventario-automatizado")[https\:\/\/www\.novaretail\.es\/proyectos\/inventario\-automatizado]][Implantación de un sistema de inventario automatizado en el centro de distribución\.][2021\-01\-15–2021\-10\-30]
- Definición de requisitos junto con sistemas y operaciones\.
- Pruebas piloto, formación de usuarios y despliegue en 18 tiendas\.
- Reducción del tiempo de recuento en un 40 % y mejora de la exactitud del stock\.
#strong[Palabras clave]: Automatización, Inventario, Formación, Procesos

#resume-subheading[Programa de Reducción de Mermas][#link("https://www.logistica-iberica.com/casos/mermas")[https\:\/\/www\.logistica\-iberica\.com\/casos\/mermas]][Programa para reducir mermas en tienda y almacén mediante análisis de causas y acciones correctivas\.][2018\-03\-01–2018\-12\-20]
- Análisis de datos de mermas por categoría y tienda\.
- Implantación de controles de recepción y formación al personal\.
- Disminución de la merma un 18 % en nueve meses\.
#strong[Palabras clave]: Mejora continua, Control de mermas, Análisis de datos
]

= Intereses
#resume-pad[
#strong[Deporte]: Carrera, Senderismo, Ciclismo

#strong[Lectura]: Novela histórica, Ensayo, Economía
]

= Voluntariado
#resume-pad[
#resume-subheading[Voluntaria de Logística][#link("https://www.bamadrid.org")[https\:\/\/www\.bamadrid\.org]][Fundación Banco de Alimentos de Madrid][2017\-01\-10–2020\-12\-15]
- Apoyo en la coordinación de la recepción y clasificación de alimentos\.
- Colaboración en la planificación de rutas de reparto a entidades sociales\.
- Participación en campañas de recogida y formación de nuevos voluntarios\.
]