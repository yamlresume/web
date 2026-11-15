#set document(
  title: "Lucía Fernández - Diseñadora UX/UI senior, especializada en investigación y diseño de servicios digitales",
  author: "Lucía Fernández",
  keywords: "Research, Prototipado y diseño, Arquitectura de la información, Accesibilidad",
  description: "Résumé of Lucía Fernández",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Lucía Fernández]] #v(-0.2em)

#text(size: 1.44em)[Diseñadora UX\/UI senior, especializada en investigación y diseño de servicios digitales]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia@fernandezux.com")[lucia\@fernandezux\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.fernandezux.com")[https\:\/\/www\.fernandezux\.com]

Calle Gran Vía 28, 2º, Madrid, Comunidad de Madrid, España, 28013

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/luciafernandezux")[luciafernandezux] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M232 237.2c31.8-15.2 48.4-38.2 48.4-74 0-70.6-52.6-87.8-113.3-87.8l-167.1 0 0 354.4 171.8 0c64.4 0 124.9-30.9 124.9-102.9 0-44.5-21.1-77.4-64.7-89.7zM77.9 135.9l73.1 0c28.1 0 53.4 7.9 53.4 40.5 0 30.1-19.7 42.2-47.5 42.2l-79 0 0-82.7zm83.3 233.7l-83.3 0 0-97.6 84.9 0c34.3 0 56 14.3 56 50.6 0 35.8-25.9 47-57.6 47zM519.7 128.9l-143.7 0 0-34.9 143.7 0 0 34.9zM576 305.2c0-75.9-44.4-139.2-124.9-139.2-78.2 0-131.3 58.8-131.3 135.8 0 79.9 50.3 134.7 131.3 134.7 61.3 0 101-27.6 120.1-86.3l-62.2 0c-6.7 21.9-34.3 33.5-55.7 33.5-41.3 0-63-24.2-63-65.3l185.1 0c.3-4.2 .6-8.7 .6-13.2zM390.4 274c2.3-33.7 24.7-54.8 58.5-54.8 35.4 0 53.2 20.8 56.2 54.8l-114.7 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.behance.net/luciafernandez")[luciafernandez]
]

= Información básica

#resume-pad[
Diseñadora de producto con más de 7 años de experiencia en proyectos digitales para banca, salud y retail\.
Combino investigación cualitativa, análisis de datos y prototipado para crear experiencias usables y accesibles\.

- Lidero el diseño de extremo a extremo\: research, ideación, prototipado, testing y traspaso a desarrollo\.
- Defiendo la accesibilidad (WCAG 2\.2) y el diseño inclusivo como parte esencial del proceso\.
- Colaboro con equipos ágiles, producto y negocio para alinear objetivos y prioridades\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Politécnica de Madrid][#link("https://www.upm.es/")[https\:\/\/www\.upm\.es\/]][Maestría, Diseño de Experiencia de Usuario][sept 2016–jul 2018]
- Proyecto final premiado\: rediseño de una plataforma de teleasistencia para mayores\.
- Colaboración con el Laboratorio de Accesibilidad para auditar apps públicas\.
#strong[Cursos]: Métodos de investigación con usuarios, Diseño de interacción, Arquitectura de la información, Evaluación de usabilidad, Visualización de datos

#resume-subheading[Universidad Carlos III de Madrid][#link("https://www.uc3m.es/")[https\:\/\/www\.uc3m\.es\/]][Licenciatura, Ingeniería de Diseño Industrial][sept 2011–jun 2015]
#strong[Cursos]: Ergonomía y factores humanos, Diseño centrado en el usuario, Tecnologías multimedia
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Senior UX Designer][#link("https://www.nubikadigital.com")[https\:\/\/www\.nubikadigital\.com]][Nubika Digital][mar 2021 hasta la fecha]
- Lidero el área de UX dentro de una squad de banca digital, colaborando con PMs, analistas y desarrolladores\.
- Rediseño integral de la app móvil de un banco europeo, logrando un aumento del 34 % en finalización de onboarding\.
- Creo y mantengo el design system junto a otros diseñadores, con más de 80 componentes en Figma\.
- Planifico y facilito sesiones de co\-creación y testeos con personas usuarias en distintos países\.
#strong[Palabras clave]: Design Systems, Banca digital, Figma, Agile, Accessibility

#resume-subheading[UX\/UI Designer][#link("https://www.pixelhousestudio.com")[https\:\/\/www\.pixelhousestudio\.com]][Pixel House Studio][jun 2018–feb 2021]
- Diseñé la experiencia de marca y producto para más de 20 clientes de los sectores salud, turismo y comercio electrónico\.
- Implementé procesos de investigación dentro de la agencia\: entrevistas, encuestas y pruebas de usabilidad\.
- Trabajé junto a desarrolladores front\-end para asegurar la viabilidad técnica de las propuestas\.
- Ganamos dos premios Lovie por proyectos de e\-commerce accesibles\.
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Lengua materna])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: TOEFL 105, Inglés técnico])

#strong[Francés]: Competencia limitada de trabajo
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Research]: Experto], [#strong[Palabras clave]: Entrevistas con usuarios, Encuestas, Pruebas de usabilidad, Card sorting, Customer journeys])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prototipado y diseño]: Experto], [#strong[Palabras clave]: Figma, Sketch, Prototipado interactivo, Wireframes, Design systems])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Arquitectura de la información]: Avanzado], [#strong[Palabras clave]: Sitemaps, Flujos de usuario, Navegación, Taxonomía])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Accesibilidad]: Avanzado], [#strong[Palabras clave]: WCAG 2\.2, Diseño inclusivo, ARIA, Auditorías de accesibilidad])
]

= Premios
#resume-pad[
#resume-subheading[Premio Nacional de Diseño de Experiencia][][Asociación de Diseño de Interacción (IxDA España)][nov 2022]
Reconocimiento al mejor proyecto de diseño de servicios digitales por la app de salud \"Bienestar360\"\.
]

= Certificados
#resume-pad[
#resume-subheading[Google UX Design Professional Certificate][#link("https://www.coursera.org/professional-certificates/google-ux-design")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-ux\-design]][Coursera][abr 2020]

#resume-subheading[Certified Usability Analyst][#link("https://www.humanfactors.com")[https\:\/\/www\.humanfactors\.com]][Human Factors International][oct 2019]
]

= Publicaciones
#resume-pad[
#resume-subheading[El impacto del design system en la productividad de equipos ágiles][#link("https://www.revistaiahc.org/estudio-design-system")[https\:\/\/www\.revistaiahc\.org\/estudio\-design\-system]][Revista Iberoamericana de Interacción Humano\-Computadora][may 2023]
Estudio de caso sobre la implantación de un design system en una entidad financiera y su efecto en la velocidad de desarrollo y la consistencia del producto\.
]

= Proyectos
#resume-pad[
#resume-subheading[Bienestar360][#link("https://www.bienestar360.example")[https\:\/\/www\.bienestar360\.example]][Rediseño completo de una plataforma de telemedicina para mejorar la adherencia al tratamiento\.][ene 2022–dic 2022]
- Dirigí la investigación con pacientes y profesionales de la salud para identificar puntos de fricción\.
- Testeé prototipos en alta fidelidad con 30 usuarios, iterando el flujo de gestión de citas y medicación\.
- El rediseño redujo el abandono de la plataforma un 28 % y las consultas de soporte un 47 %\.
#strong[Palabras clave]: Salud digital, Telemedicina, User research, Prototipado

#resume-subheading[Design System \"Atomika\"][#link("https://www.designsystem.atomika.example")[https\:\/\/www\.designsystem\.atomika\.example]][Sistema de diseño de código abierto para aplicaciones de banca y seguros\.][mar 2021–jul 2023]
- Definición de tokens, componentes y documentación para un sistema multiplataforma\.
- Incluye pautas de accesibilidad y ejemplos de código para React Native\.
- Adoptado por 5 equipos de producto, reduciendo el tiempo de diseño de nuevas funcionalidades\.
#strong[Palabras clave]: Design system, Tokens, React, Documentación
]

= Intereses
#resume-pad[
#strong[Fotografía urbana]: Street photography, Composición, Luz natural

#strong[Senderismo]: Rutas de montaña, Naturaleza, Bienestar
]

= Voluntariado
#resume-pad[
#resume-subheading[Coordinadora de voluntarios][#link("https://www.uxpa.es")[https\:\/\/www\.uxpa\.es]][UXPA España][ene 2020–mar 2023]
- Organicé encuentros y talleres sobre metodologías UX para la comunidad local\.
- Fui mentora en el programa de jóvenes diseñadores, asesorando a personas en sus primeros proyectos profesionales\.
]