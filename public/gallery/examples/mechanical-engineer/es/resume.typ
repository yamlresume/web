#set document(
  title: "Carlos Javier Pérez Gómez - Ingeniero Mecánico Senior especializado en diseño de producto y fabricación",
  author: "Carlos Javier Pérez Gómez",
  keywords: "Diseño Mecánico CAD, Simulación y Análisis CAE, Fabricación y Procesos, Gestión de Proyectos, Programación y Herramientas",
  description: "Résumé of Carlos Javier Pérez Gómez",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Carlos Javier Pérez Gómez]] #v(-0.2em)

#text(size: 1.44em)[Ingeniero Mecánico Senior especializado en diseño de producto y fabricación]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 678 123 456")[\+34 678 123 456] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:carlos.perez@example.com")[carlos\.perez\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.carlosperez-ingenieria.com")[https\:\/\/www\.carlosperez\-ingenieria\.com]

Calle de Alcalá, 123, 4ºB, Madrid, Comunidad de Madrid, España, 28001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/carlosperezmecanico")[carlosperezmecanico] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/cperez-mec")[cperez\-mec]
]

= Información básica

#resume-pad[
- Ingeniero Mecánico con más de 8 años de experiencia en el diseño, desarrollo y optimización de productos y sistemas mecánicos\.
- Especializado en CAD\/CAE (SolidWorks, CATIA, ANSYS) y en la gestión de proyectos de fabricación\.
- Sólida experiencia en el sector de automoción y energías renovables, liderando equipos multidisciplinares\.
- Enfoque en la mejora continua, reducción de costes y cumplimiento de normativas de calidad (ISO 9001, IATF 16949)\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Politécnica de Madrid][#link("https://www.upm.es")[https\:\/\/www\.upm\.es]][Licenciatura, Ingeniería Mecánica, Puntuación: 8\.2\/10][sept 2012–jul 2016]
- Formación sólida en fundamentos de ingeniería mecánica, con especial énfasis en diseño y análisis\.
- Participación en proyectos de fin de grado sobre optimización de estructuras ligeras\.
- Prácticas en laboratorio de ensayos mecánicos y caracterización de materiales\.
#strong[Cursos]: Cálculo Diferencial e Integral, Mecánica de Sólidos, Termodinámica Aplicada, Mecánica de Fluidos, Diseño de Máquinas, Materiales de Ingeniería

#resume-subheading[Universidad Carlos III de Madrid][#link("https://www.uc3m.es")[https\:\/\/www\.uc3m\.es]][Maestría, Ingeniería Mecánica Avanzada, Puntuación: 9\.1\/10][sept 2016–jul 2018]
- Especialización en simulación numérica y diseño avanzado de componentes mecánicos\.
- Trabajo de fin de máster sobre análisis de fatiga en palas de aerogeneradores\.
- Colaboración con departamento de I\+D de empresa del sector eólico\.
#strong[Cursos]: Diseño Mecánico Asistido por Ordenador, Mecánica de Materiales Compuestos, Dinámica de Sistemas Multicuerpo, Tribología, Optimización Topológica, Simulación CFD
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Ingeniero Mecánico de Diseño][#link("https://www.siemensgamesa.com")[https\:\/\/www\.siemensgamesa\.com]][Siemens Gamesa Renewable Energy][sept 2018–dic 2021]
- Diseño y desarrollo de componentes mecánicos para aerogeneradores de gran potencia\.
- Análisis estructural y de fatiga mediante ANSYS, optimizando la vida útil de los componentes\.
- Coordinación con equipos de fabricación y proveedores para asegurar la viabilidad del diseño\.
- Redacción de especificaciones técnicas y documentación de ingeniería\.
#strong[Palabras clave]: Aerogeneradores, Diseño mecánico, CATIA V5, ANSYS, Fatiga, Normativa IEC

#resume-subheading[Ingeniero de Producto \- Componentes Mecánicos][#link("https://www.seat.es")[https\:\/\/www\.seat\.es]][SEAT S\.A\.][ene 2022 hasta la fecha]
- Gestión del ciclo de vida de componentes mecánicos para vehículos eléctricos\.
- Aplicación de GD&T y normas IATF 16949 en la definición de especificaciones\.
- Liderazgo de equipos multidisciplinares en la resolución de problemas de calidad\.
- Implementación de acciones de reducción de costes sin comprometer el rendimiento\.
#strong[Palabras clave]: Automoción, SolidWorks, GD&T, IATF 16949, APQP, Reducción de costes
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: TOEFL iBT 110, Uso profesional])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francés]: Competencia limitada de trabajo], [#strong[Palabras clave]: DELF B1])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Diseño Mecánico CAD]: Experto], [#strong[Palabras clave]: SolidWorks, CATIA V5, AutoCAD, Inventor, GD&T])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Simulación y Análisis CAE]: Avanzado], [#strong[Palabras clave]: ANSYS, Abaqus, MATLAB, Simulink, CFD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Fabricación y Procesos]: Avanzado], [#strong[Palabras clave]: Lean Manufacturing, Six Sigma, CNC, Impresión 3D, Soldadura])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Gestión de Proyectos]: Intermedio], [#strong[Palabras clave]: PMP, Agile, Scrum, Microsoft Project, SAP])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programación y Herramientas]: Intermedio], [#strong[Palabras clave]: Python, VBA, MATLAB, PLC, Arduino])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Innovación en Diseño Mecánico][][Colegio Oficial de Ingenieros Industriales de Madrid][nov 2019]
Reconocimiento por el desarrollo de un sistema de transmisión más eficiente para aerogeneradores\.
]

= Certificados
#resume-pad[
#resume-subheading[Certified SolidWorks Professional (CSWP)][#link("https://www.solidworks.com/certification")[https\:\/\/www\.solidworks\.com\/certification]][Dassault Systèmes][mar 2018]

#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][jun 2020]

#resume-subheading[Lean Six Sigma Green Belt][#link("https://asq.org/cert/lean-six-sigma-green-belt")[https\:\/\/asq\.org\/cert\/lean\-six\-sigma\-green\-belt]][ASQ][sept 2019]
]

= Publicaciones
#resume-pad[
#resume-subheading[Análisis de fatiga en palas de aerogeneradores de gran potencia][#link("https://www.revista-ingenieria-mecanica.org/articulo/12345")[https\:\/\/www\.revista\-ingenieria\-mecanica\.org\/articulo\/12345]][Revista Iberoamericana de Ingeniería Mecánica][dic 2021]
Estudio sobre la vida a fatiga de materiales compuestos en palas de aerogeneradores mediante simulación numérica y validación experimental\.
]

= Proyectos
#resume-pad[
#resume-subheading[Diseño de chasis ligero para vehículo eléctrico][#link("https://www.proyectochasis.com")[https\:\/\/www\.proyectochasis\.com]][Proyecto de I\+D para la optimización topológica de un chasis tubular de aluminio\.][ene 2020–dic 2020]
- Rediseño del chasis reduciendo un 18% el peso manteniendo la rigidez torsional\.
- Validación mediante análisis FEM (ANSYS) y pruebas físicas en pista\.
- Coordinación con proveedores para la fabricación de prototipos\.
#strong[Palabras clave]: Optimización topológica, Aluminio, FEM, Vehículo eléctrico
]

= Intereses
#resume-pad[
#strong[Automoción]: Vehículos eléctricos, Clásicos, Motos

#strong[Energías Renovables]: Eólica, Solar, Almacenamiento

#strong[Deporte]: Ciclismo, Senderismo, Natación
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentor de Jóvenes Ingenieros][#link("https://www.isf.es")[https\:\/\/www\.isf\.es]][Fundación Ingeniería Sin Fronteras][sept 2019–jun 2022]
- Mentoría a estudiantes de ingeniería en el desarrollo de proyectos de cooperación\.
- Organización de talleres sobre diseño sostenible y energías renovables\.
- Colaboración en la evaluación de prototipos para comunidades rurales\.
]