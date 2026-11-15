#set document(
  title: "Carlos Mendoza Ruiz - Ejecutivo de Cuentas Senior | Ventas B2B SaaS",
  author: "Carlos Mendoza Ruiz",
  keywords: "Ventas B2B, CRM y Herramientas, Habilidades Comerciales",
  description: "Résumé of Carlos Mendoza Ruiz",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Carlos Mendoza Ruiz]] #v(-0.2em)

#text(size: 1.44em)[Ejecutivo de Cuentas Senior | Ventas B2B SaaS]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:carlos.mendoza@ventaspro.es")[carlos\.mendoza\@ventaspro\.es] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.carlosmendoza.es")[https\:\/\/www\.carlosmendoza\.es]

Calle de Serrano 45, Madrid, Comunidad de Madrid, España, 28001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/carlosmendozaruiz")[carlosmendozaruiz] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/carlosmendoza_es")[carlosmendoza\_es]
]

= Información básica

#resume-pad[
Ejecutivo de cuentas con más de 7 años de experiencia en ventas B2B y SaaS, especializado en la gestión del ciclo completo de ventas y en la construcción de relaciones duraderas con grandes cuentas\.

- Historial comprobado de superación de cuotas anuales superiores a 1,2 M€\.
- Experto en prospección, negociación y cierre de acuerdos con responsables de decisión de alto nivel\.
- Dominio de Salesforce, HubSpot y LinkedIn Sales Navigator para la gestión del embudo de ventas y la previsión comercial\.
- Apasionado por las ventas consultivas y el desarrollo de equipos comerciales de alto rendimiento\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Complutense de Madrid][#link("https://www.ucm.es")[https\:\/\/www\.ucm\.es]][Licenciatura, Administración y Dirección de Empresas, Puntuación: 8\.7][sept 2012–jun 2016]
- Formación sólida en estrategias de ventas, análisis de mercados y gestión de equipos comerciales\.
- Participación en el programa de prácticas en el departamento comercial de una consultora tecnológica\.
- Trabajo de fin de grado sobre optimización de embudos de ventas B2B, calificado con matrícula de honor\.
#strong[Cursos]: Dirección Comercial, Marketing Estratégico, Negociación Comercial, Análisis Financiero, Gestión de Recursos Humanos, Comportamiento Organizacional, Estadística Aplicada a la Empresa
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Ejecutivo de Cuentas Senior][#link("https://www.solucionescloudsales.es")[https\:\/\/www\.solucionescloudsales\.es]][Soluciones CloudSales][ene 2021 hasta la fecha]
- Gestioné una cartera de más de 40 grandes cuentas del sector tecnológico, con un valor medio anual de 180\.000 €\.
- Superé la cuota anual en un 145%, 132% y 158% durante los últimos tres ejercicios fiscales\.
- Lideré la estrategia de ventas consultivas, coordinando equipos de preventa, producto y legal para cerrar acuerdos complejos\.
- Implementé un manual de ventas que redujo el ciclo de venta en un 22% y aumentó la tasa de cierre en un 18%\.
- Fui mentor de dos ejecutivos junior, ambos alcanzaron el 100% de su cuota en el primer año\.
#strong[Palabras clave]: Ventas B2B, SaaS, Gestión de cuentas, Negociación, CRM

#resume-subheading[Ejecutivo de Cuentas][#link("https://www.innovasoftware.es")[https\:\/\/www\.innovasoftware\.es]][Innova Software Ibérica][feb 2018–dic 2020]
- Responsable del ciclo completo de ventas para pymes y medianas empresas, desde la prospección hasta el cierre y la renovación\.
- Generé más de 2,5 M€ en ingresos recurrentes anuales (ARR) mediante la venta de licencias y servicios de implantación\.
- Aumenté la retención de clientes en un 30% gracias a un seguimiento proactivo y a la identificación de oportunidades de venta adicional\.
- Colaboré con el equipo de mercadotecnia en la creación de campañas de generación de oportunidades que duplicaron las oportunidades cualificadas\.
#strong[Palabras clave]: Prospección, Salesforce, Cierre de ventas, Métricas, Venta adicional

#resume-subheading[Representante de Ventas][#link("https://www.grupomediterraneo.es")[https\:\/\/www\.grupomediterraneo\.es]][Grupo Comercial Mediterráneo][jul 2016–ene 2018]
- Atendí una cartera de más de 200 clientes minoristas, realizando visitas comerciales y gestión telefónica\.
- Incrementé las ventas de la zona asignada en un 25% durante el primer año mediante técnicas de venta cruzada\.
- Negocié condiciones comerciales, descuentos y plazos de entrega, mejorando el margen bruto en un 12%\.
- Utilicé el CRM corporativo para registrar oportunidades, previsión de ventas y seguimiento postventa\.
#strong[Palabras clave]: Ventas directas, CRM, Atención al cliente, Ventas cruzadas
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: C1, Negociación, Presentaciones])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Francés]: Competencia limitada de trabajo], [#strong[Palabras clave]: A2, Conversación básica])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Ventas B2B]: Experto], [#strong[Palabras clave]: Negociación, Prospección, Cierre de ventas, Cuentas clave, Venta adicional])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CRM y Herramientas]: Avanzado], [#strong[Palabras clave]: Salesforce, HubSpot, LinkedIn Sales Navigator, Excel avanzado])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Habilidades Comerciales]: Experto], [#strong[Palabras clave]: Presentaciones, Comunicación, Gestión del tiempo, Trabajo en equipo, Liderazgo])
]

= Premios
#resume-pad[
#resume-subheading[Mejor Ejecutivo de Cuentas del Año][][Soluciones CloudSales][dic 2023]
Reconocimiento por superar el 150% de la cuota anual y por liderar la mayor operación de grandes cuentas del año, valorada en 450\.000 €\.

#resume-subheading[Premio a la Excelencia en Ventas][][Innova Software Ibérica][nov 2019]
Otorgado por alcanzar el primer puesto en el ranking de ventas durante tres trimestres consecutivos y por mejorar la satisfacción del cliente\.
]

= Certificados
#resume-pad[
#resume-subheading[Consultor Certificado en Salesforce Sales Cloud][#link("https://trailhead.salesforce.com/es/certification")[https\:\/\/trailhead\.salesforce\.com\/es\/certification]][Salesforce][mar 2021]

#resume-subheading[Certificación en Software de Ventas de HubSpot][#link("https://academy.hubspot.com/courses/sales-software")[https\:\/\/academy\.hubspot\.com\/courses\/sales\-software]][HubSpot Academy][jun 2020]

#resume-subheading[Certificación en Negociación Avanzada][#link("https://www.esade.edu")[https\:\/\/www\.esade\.edu]][ESADE][sept 2019]
]

= Publicaciones
#resume-pad[
#resume-subheading[Cómo construir relaciones comerciales duraderas en SaaS][#link("https://www.ventasymarketing.es/articulos/relaciones-comerciales-saas")[https\:\/\/www\.ventasymarketing\.es\/articulos\/relaciones\-comerciales\-saas]][Revista Ventas & Marketing][feb 2023]
- Artículo sobre estrategias de retención y expansión de cuentas en empresas de software\.
- Incluye tácticas de venta consultiva y ejemplos de éxito en el mercado ibérico\.
]

= Proyectos
#resume-pad[
#resume-subheading[Manual de Ventas Consultivas][][Diseño e implementación de un manual de ventas consultivas para el equipo comercial de Soluciones CloudSales\.][mar 2022–ago 2022]
- Documenté el proceso de venta, desde la prospección hasta el cierre, con metodologías MEDDIC y SPIN Selling\.
- Formé a 12 comerciales en la nueva metodología, logrando un aumento del 18% en la tasa de cierre\.
- Integré el manual en Salesforce, automatizando tareas de seguimiento y generación de informes\.
#strong[Palabras clave]: Ventas consultivas, Manual de ventas, Formación, MEDDIC

#resume-subheading[Campaña de Reactivación de Clientes Inactivos][][Campaña para recuperar clientes inactivos de Innova Software Ibérica mediante segmentación y ofertas personalizadas\.][ene 2020–jun 2020]
- Analicé la base de datos de clientes y segmenté por sector, tamaño y motivo de baja\.
- Diseñé una secuencia de contacto multicanal (correo electrónico, teléfono y LinkedIn) con mensajes personalizados\.
- Recuperé 38 cuentas, generando 320\.000 € en ingresos adicionales en seis meses\.
#strong[Palabras clave]: Reactivación, Segmentación, Multicanal, Marketing por correo
]

= Intereses
#resume-pad[
#strong[Deportes]: Carrera, Pádel, Senderismo

#strong[Música]: Guitarra, Conciertos

#strong[Viajes]: Europa, Latinoamérica, Gastronomía
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentor de Ventas][#link("https://www.emprendejoven.es")[https\:\/\/www\.emprendejoven\.es]][Fundación Emprende Joven][sept 2019 hasta la fecha]
- Ejercí como mentor de jóvenes emprendedores en la validación comercial de sus ideas de negocio\.
- Impartí talleres sobre prospección, propuesta de valor y técnicas de negociación\.
- Ayudé a más de 15 proyectos a conseguir sus primeros clientes y validar su modelo de negocio\.
]