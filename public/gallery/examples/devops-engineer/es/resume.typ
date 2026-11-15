#set document(
  title: "Lucía Fernández Gómez - Ingeniera DevOps Senior | Cloud, Kubernetes y Automatización",
  author: "Lucía Fernández Gómez",
  keywords: "Computación en la nube, Contenedores y orquestación, Automatización y CI/CD, Observabilidad, Seguridad y cumplimiento, Programación y scripting",
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

#text(size: 1.44em)[Ingeniera DevOps Senior | Cloud, Kubernetes y Automatización]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+34 612 345 678")[\+34 612 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lucia.fernandez.devops@example.com")[lucia\.fernandez\.devops\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.luciafernandez.dev")[https\:\/\/www\.luciafernandez\.dev]

Calle de Serrano 45, Madrid, Comunidad de Madrid, España, 28001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/luciaferdevops")[luciaferdevops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lucia-fernandez-devops")[lucia\-fernandez\-devops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M504 204.6l-.7-1.8-69.7-181.8c-1.4-3.6-3.9-6.6-7.2-8.6-2.4-1.6-5.1-2.5-8-2.8s-5.7 .1-8.4 1.1-5.1 2.7-7.1 4.8c-1.9 2.1-3.3 4.7-4.1 7.4l-47 144-190.5 0-47.1-144c-.8-2.8-2.2-5.3-4.1-7.4-2-2.1-4.4-3.7-7.1-4.8-2.6-1-5.5-1.4-8.4-1.1s-5.6 1.2-8 2.8c-3.2 2-5.8 5.1-7.2 8.6L9.8 202.8 9 204.6c-10 26.2-11.3 55-3.5 82 7.7 26.9 24 50.7 46.4 67.6l.3 .2 .6 .4 106 79.5c38.5 29.1 66.7 50.3 84.6 63.9 3.7 1.9 8.3 4.3 13 4.3s9.3-2.4 13-4.3c17.9-13.5 46.1-34.9 84.6-63.9l106.7-79.9 .3-.3c22.4-16.9 38.7-40.6 45.6-67.5 8.6-27 7.4-55.8-2.6-82z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://gitlab.com/luciaferdevops")[luciaferdevops]
]

= Información básica

#resume-pad[
Ingeniera DevOps con más de 8 años de experiencia diseñando, automatizando y operando plataformas cloud críticas\. Especialista en infraestructura como código, contenedores y pipelines CI\/CD para equipos de alto rendimiento\.

- Reduje el tiempo de despliegue en un 70 % mediante pipelines automatizados y estrategias GitOps\.
- Diseñé arquitecturas multinube (AWS, Azure y GCP) altamente disponibles, seguras y orientadas al coste\.
- Lideré la migración de cargas de trabajo monolíticas a Kubernetes, mejorando la escalabilidad y la resiliencia\.
- Promoví cultura DevOps, observabilidad y respuesta ante incidentes con equipos de desarrollo y SRE\.
]

= Educación
#resume-pad[
#resume-subheading[Universidad Politécnica de Madrid][#link("https://www.upm.es")[https\:\/\/www\.upm\.es]][Licenciatura, Ingeniería Informática, Puntuación: 8,7\/10][sept 2012–jul 2016]
- Formación sólida en fundamentos de computación, redes y sistemas distribuidos\.
- Proyecto fin de grado sobre automatización de despliegues en entornos virtualizados\.
- Participación activa en asociaciones tecnológicas y talleres de software libre\.
#strong[Cursos]: Sistemas Operativos, Redes de Computadores, Arquitectura de Software, Bases de Datos, Seguridad Informática, Computación en la Nube

#resume-subheading[Universidad Nacional de Educación a Distancia][#link("https://www.uned.es")[https\:\/\/www\.uned\.es]][Maestría, Ingeniería de Sistemas y Computación, Puntuación: 9,1\/10][sept 2016–jun 2018]
- Especialización en plataformas cloud, orquestación de contenedores y automatización operativa\.
- Trabajo fin de máster sobre optimización de costes en clústeres Kubernetes\.
#strong[Cursos]: Virtualización y Contenedores, Computación Distribuida, Gestión de Infraestructuras Cloud, Metodologías Ágiles y DevOps
]

= Experiencia laboral
#resume-pad[
#resume-subheading[Ingeniera DevOps Senior][#link("https://www.telefonicatech.com")[https\:\/\/www\.telefonicatech\.com]][Telefónica Tech][mar 2021 hasta la fecha]
- Diseñé y mantuve plataformas Kubernetes multirregión para más de 200 microservicios en producción\.
- Implementé infraestructura como código con Terraform y Ansible, reduciendo la deriva de configuración en un 85 %\.
- Construí pipelines CI\/CD con GitLab CI y Argo CD, logrando despliegues progresivos con canary releases\.
- Definí SLOs, alertas y cuadros de mando con Prometheus, Grafana y OpenTelemetry\.
- Automaticé la gestión de secretos con HashiCorp Vault y políticas de mínimo privilegio\.
#strong[Palabras clave]: Kubernetes, Terraform, GitOps, Prometheus, AWS

#resume-subheading[Ingeniera de Plataforma Cloud][#link("https://www.bbva.com")[https\:\/\/www\.bbva\.com]][BBVA][jul 2018–feb 2021]
- Migré servicios críticos a AWS con arquitecturas sin servidor y basadas en contenedores\.
- Desarrollé módulos reutilizables de Terraform para equipos de desarrollo, acelerando el aprovisionamiento\.
- Implanté monitorización centralizada con ELK Stack y alertas proactivas para reducir el MTTR\.
- Participé en guardias 24x7 y en análisis post\-mortem de incidentes en producción\.
#strong[Palabras clave]: AWS, Docker, Jenkins, ELK, Python

#resume-subheading[Administradora de Sistemas][#link("https://www.indracompany.com")[https\:\/\/www\.indracompany\.com]][Indra Sistemas][sept 2016–jun 2018]
- Administré entornos Linux y Windows Server en infraestructuras de alta disponibilidad\.
- Automaticé tareas de despliegue y mantenimiento con scripts Bash y Python\.
- Configuré balanceadores, firewalls y monitorización con Nagios y Zabbix\.
#strong[Palabras clave]: Linux, Bash, Nagios, Zabbix, Redes
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Español]: Competencia nativa o bilingüe], [#strong[Palabras clave]: Español nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglés]: Competencia profesional plena], [#strong[Palabras clave]: C1, TOEFL 110])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Catalán]: Competencia limitada de trabajo], [#strong[Palabras clave]: Conversación básica])
]

= Competencias
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Computación en la nube]: Experto], [#strong[Palabras clave]: AWS, Azure, GCP, Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Contenedores y orquestación]: Experto], [#strong[Palabras clave]: Kubernetes, Docker, Helm, Istio])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Automatización y CI\/CD]: Avanzado], [#strong[Palabras clave]: GitLab CI, Jenkins, Argo CD, Ansible])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Observabilidad]: Avanzado], [#strong[Palabras clave]: Prometheus, Grafana, OpenTelemetry, ELK])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Seguridad y cumplimiento]: Avanzado], [#strong[Palabras clave]: Vault, Trivy, OPA, IAM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programación y scripting]: Avanzado], [#strong[Palabras clave]: Python, Bash, Go, YAML])
]

= Premios
#resume-pad[
#resume-subheading[Premio a la Excelencia Técnica][][Telefónica Tech][dic 2022]
Reconocimiento por liderar la plataforma Kubernetes multirregión y reducir los incidentes críticos en un 40 % durante 2022\.

#resume-subheading[Mención de Honor en Innovación Cloud][][BBVA][jun 2019]
Distinción por el diseño de módulos Terraform reutilizables que aceleraron la migración de servicios críticos a AWS\.
]

= Certificados
#resume-pad[
#resume-subheading[AWS Certified DevOps Engineer – Professional][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][may 2022]

#resume-subheading[Certified Kubernetes Administrator (CKA)][#link("https://www.cncf.io/certification/cka/")[https\:\/\/www\.cncf\.io\/certification\/cka\/]][Cloud Native Computing Foundation][nov 2021]

#resume-subheading[HashiCorp Certified Terraform Associate][#link("https://www.hashicorp.com/certification/terraform-associate")[https\:\/\/www\.hashicorp\.com\/certification\/terraform\-associate]][HashiCorp][mar 2023]
]

= Publicaciones
#resume-pad[
#resume-subheading[Automatización GitOps para plataformas multinube][#link("https://www.clouddevops.example.com/articulos/gitops-multinube")[https\:\/\/www\.clouddevops\.example\.com\/articulos\/gitops\-multinube]][Revista Cloud & DevOps][oct 2023]
- Artículo técnico sobre patrones GitOps para desplegar aplicaciones en AWS, Azure y GCP\.
- Incluye ejemplos con Argo CD, Terraform y políticas de promoción entre entornos\.
- Analiza métricas de adopción, seguridad y reducción del tiempo de despliegue\.
]

= Proyectos
#resume-pad[
#resume-subheading[Plataforma GitOps Multinube][#link("https://github.com/luciaferdevops/gitops-multinube")[https\:\/\/github\.com\/luciaferdevops\/gitops\-multinube]][Plataforma interna para desplegar microservicios en varios proveedores cloud mediante GitOps\.][ene 2022–dic 2023]
- Implementé flujos de promoción automática entre desarrollo, preproducción y producción\.
- Integré validaciones de seguridad y coste en los pipelines antes del despliegue\.
- Reduje el tiempo medio de despliegue de 45 a 12 minutos por servicio\.
#strong[Palabras clave]: GitOps, Argo CD, Terraform, Kubernetes

#resume-subheading[Observabilidad Unificada][#link("https://github.com/luciaferdevops/observabilidad-unificada")[https\:\/\/github\.com\/luciaferdevops\/observabilidad\-unificada]][Solución de observabilidad centralizada para equipos de desarrollo y SRE\.][mar 2020–nov 2021]
- Desplegué Prometheus, Grafana y OpenTelemetry en clústeres Kubernetes de alta disponibilidad\.
- Definí SLOs y alertas accionables, reduciendo el ruido de alertas en un 60 %\.
- Documenté runbooks y formé a equipos en investigación de incidentes\.
#strong[Palabras clave]: Prometheus, Grafana, OpenTelemetry, SRE
]

= Intereses
#resume-pad[
#strong[Deportes]: Senderismo, Ciclismo, Natación

#strong[Música]: Guitarra, Piano

#strong[Comunidad tech]: Meetups, Mentoría, Open Source
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora Técnica][#link("https://www.mujeresendevops.example.com")[https\:\/\/www\.mujeresendevops\.example\.com]][Mujeres en DevOps Madrid][sept 2019 hasta la fecha]
- Mentoricé a profesionales que inician carrera en DevOps y cloud\.
- Impartí talleres prácticos de Docker, Kubernetes y CI\/CD\.
- Ayudé a organizar encuentros mensuales con charlas técnicas\.

#resume-subheading[Voluntaria en Digitalización][#link("https://www.caritasmadrid.org")[https\:\/\/www\.caritasmadrid\.org]][Cáritas Madrid][ene 2018–dic 2019]
- Automaticé la gestión de inventario y donaciones con hojas de cálculo y scripts\.
- Formé al personal en herramientas digitales básicas y buenas prácticas de seguridad\.
- Colaboré en la migración de datos a una plataforma en la nube\.
]