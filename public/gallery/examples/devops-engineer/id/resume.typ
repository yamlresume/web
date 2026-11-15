#set document(
  title: "Budi Santoso - Insinyur DevOps | Otomasi Infrastruktur & Cloud",
  author: "Budi Santoso",
  keywords: "Orkestrasi Kontainer, Infrastruktur sebagai Kode, CI/CD, Cloud, Observabilitas, Bahasa Pemrograman, Keamanan DevOps",
  description: "Résumé of Budi Santoso",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "id", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Budi Santoso]] #v(-0.2em)

#text(size: 1.44em)[Insinyur DevOps | Otomasi Infrastruktur & Cloud]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812-3456-7890")[\+62 812\-3456\-7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:budi.santoso.devops@example.com")[budi\.santoso\.devops\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://budisantoso.dev")[https\:\/\/budisantoso\.dev]

Jl\. Jenderal Sudirman No\. 52, Jakarta Pusat, Jakarta, DKI Jakarta, Indonesia, 10220

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/budisantoso-devops")[budisantoso\-devops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/budisantoso-devops")[budisantoso\-devops]
]

= Informasi Dasar

#resume-pad[
- Insinyur DevOps dengan lebih dari 6 tahun pengalaman dalam merancang, mengotomasi, dan mengoperasikan infrastruktur cloud yang andal\.
- Terampil dalam Kubernetes, Terraform, CI\/CD, dan praktik Site Reliability Engineering untuk meningkatkan kecepatan rilis serta ketersediaan layanan\.
- Berpengalaman membangun platform observabilitas, mengelola multi\-cloud, dan menerapkan keamanan pada pipeline DevOps\.
- Kolaboratif, berorientasi pada otomasi, dan terbiasa memimpin transformasi budaya DevOps di tim lintas fungsi\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Universitas Indonesia][#link("https://www.ui.ac.id")[https\:\/\/www\.ui\.ac\.id]][Sarjana, Teknik Informatika, Nilai: 3\.72][Agu 2015–Jul 2019]
- Lulus dengan predikat cum laude dan fokus pada rekayasa perangkat lunak serta infrastruktur\.
- Mengembangkan proyek akhir tentang orkestrasi kontainer untuk aplikasi berbasis mikroservis\.
- Aktif dalam organisasi kemahasiswaan yang bergerak di bidang teknologi dan open source\.
#strong[Mata Kuliah]: Algoritma dan Struktur Data, Sistem Operasi, Jaringan Komputer, Basis Data, Arsitektur Perangkat Lunak, Keamanan Informasi, Komputasi Awan, Otomasi Infrastruktur
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Insinyur DevOps Senior][#link("https://www.solusidigitalnusantara.co.id")[https\:\/\/www\.solusidigitalnusantara\.co\.id]][PT Solusi Digital Nusantara][Jan 2022–Sekarang]
- Memimpin adopsi GitOps dan pipeline CI\/CD untuk lebih dari 40 layanan mikro, menurunkan waktu deployment dari 2 jam menjadi 15 menit\.
- Mengelola cluster Kubernetes multi\-tenant di AWS dengan Terraform, Helm, dan Argo CD untuk menjaga konsistensi lingkungan\.
- Membangun platform observabilitas terpusat menggunakan Prometheus, Grafana, Loki, dan OpenTelemetry\.
- Menerapkan kebijakan keamanan supply chain, pemindaian kerentanan, dan manajemen rahasia dengan Vault\.
- Menjadi mentor bagi 4 insinyur junior dan memimpin forum praktik terbaik DevOps internal\.
#strong[Kata Kunci]: Kubernetes, Terraform, AWS, GitLab CI, Observabilitas

#resume-subheading[Insinyur DevOps][#link("https://www.teknologicakra.co.id")[https\:\/\/www\.teknologicakra\.co\.id]][PT Teknologi Cakra][Mar 2020–Des 2021]
- Mengotomasi provisioning infrastruktur dengan Ansible dan Terraform, mengurangi kesalahan konfigurasi manual hingga 70%\.
- Membangun pipeline Jenkins untuk build, test, dan deployment aplikasi Java dan Node\.js\.
- Mengimplementasikan monitoring dan alerting dengan Prometheus, Alertmanager, dan Grafana\.
- Melakukan tuning Linux, Docker, dan Nginx untuk meningkatkan performa serta stabilitas layanan\.
#strong[Kata Kunci]: Docker, Jenkins, Ansible, Prometheus, Linux

#resume-subheading[Site Reliability Engineer][#link("https://www.dataprima.co.id")[https\:\/\/www\.dataprima\.co\.id]][PT Data Prima][Jun 2019–Feb 2020]
- Menjaga ketersediaan layanan data dengan pemantauan proaktif dan respons insiden\.
- Menulis skrip otomasi Python dan Bash untuk tugas operasional berulang\.
- Mendokumentasikan runbook, prosedur pemulihan bencana, dan praktik on\-call\.
#strong[Kata Kunci]: Python, Bash, Nagios, MySQL, Jaringan
]

= Bahasa
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Melayu]: Bahasa Ibu / Bilingual], [#strong[Kata Kunci]: Bahasa Indonesia])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: IELTS 7\.0, TOEFL 600])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Orkestrasi Kontainer]: Ahli], [#strong[Kata Kunci]: Docker, Kubernetes, Helm, OpenShift])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Infrastruktur sebagai Kode]: Mahir], [#strong[Kata Kunci]: Terraform, Ansible, Pulumi, CloudFormation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CI\/CD]: Ahli], [#strong[Kata Kunci]: GitLab CI, Jenkins, GitHub Actions, Argo CD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud]: Mahir], [#strong[Kata Kunci]: AWS, Google Cloud, Azure, Alibaba Cloud])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Observabilitas]: Mahir], [#strong[Kata Kunci]: Prometheus, Grafana, ELK Stack, Datadog])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Bahasa Pemrograman]: Mahir], [#strong[Kata Kunci]: Python, Go, Bash, SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Keamanan DevOps]: Menengah], [#strong[Kata Kunci]: Vault, Trivy, SonarQube, IAM])
]

= Penghargaan
#resume-pad[
#resume-subheading[Penghargaan Inovasi Otomasi Infrastruktur][][PT Solusi Digital Nusantara][Des 2023]
Diberikan atas kontribusi dalam membangun pipeline CI\/CD terpusat yang meningkatkan kecepatan rilis dan keandalan layanan\.

#resume-subheading[Juara 2 Kompetisi Cloud Native][][Cloud Native Indonesia][Agu 2021]
Meraih juara kedua dalam kompetisi desain arsitektur cloud native untuk studi kasus layanan logistik\.
]

= Sertifikat
#resume-pad[
#resume-subheading[AWS Certified DevOps Engineer \- Professional][#link("https://aws.amazon.com/certification/certified-devops-engineer-professional/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-devops\-engineer\-professional\/]][Amazon Web Services][Mar 2022]

#resume-subheading[Certified Kubernetes Administrator][#link("https://training.linuxfoundation.org/certification/certified-kubernetes-administrator-cka/")[https\:\/\/training\.linuxfoundation\.org\/certification\/certified\-kubernetes\-administrator\-cka\/]][Cloud Native Computing Foundation][Nov 2021]

#resume-subheading[HashiCorp Certified\: Terraform Associate][#link("https://www.hashicorp.com/certification/terraform-associate")[https\:\/\/www\.hashicorp\.com\/certification\/terraform\-associate]][HashiCorp][Jun 2023]
]

= Publikasi
#resume-pad[
#resume-subheading[Otomasi Infrastruktur Multi\-Cloud dengan Terraform dan GitLab CI][#link("https://jurnalcloud.id/artikel/otomasi-infrastruktur-multi-cloud")[https\:\/\/jurnalcloud\.id\/artikel\/otomasi\-infrastruktur\-multi\-cloud]][Jurnal Teknologi Cloud Indonesia][Agu 2023]
- Membahas pola modular Terraform untuk mengelola sumber daya di AWS, GCP, dan Azure\.
- Menjelaskan integrasi pipeline GitLab CI untuk deployment yang aman dan dapat diaudit\.

#resume-subheading[Observabilitas Modern untuk Arsitektur Microservices][#link("https://devops.id/prosiding/observabilitas-microservices")[https\:\/\/devops\.id\/prosiding\/observabilitas\-microservices]][Konferensi DevOps Indonesia][Okt 2022]
- Mengulas penerapan metrik, log, dan trace terdistribusi pada layanan mikro\.
- Memberikan rekomendasi praktis untuk alerting dan penanganan insiden\.
]

= Proyek
#resume-pad[
#resume-subheading[Platform Observabilitas Terpusat][#link("https://github.com/budisantoso-devops/observability-platform")[https\:\/\/github\.com\/budisantoso\-devops\/observability\-platform]][Implementasi observabilitas terpusat untuk 50\+ layanan mikro\.][Jan 2023–Jun 2023]
- Menggabungkan metrik, log, dan trace menggunakan Prometheus, Loki, dan OpenTelemetry\.
- Membuat dasbor Grafana dan alerting yang mengurangi mean time to recovery sebesar 40%\.
#strong[Kata Kunci]: Prometheus, Grafana, Loki, OpenTelemetry

#resume-subheading[Pipeline CI\/CD Multi\-Cloud][#link("https://github.com/budisantoso-devops/multi-cloud-cicd")[https\:\/\/github\.com\/budisantoso\-devops\/multi\-cloud\-cicd]][Pipeline otomatis untuk deployment ke AWS, GCP, dan Azure\.][Mar 2022–Nov 2022]
- Membangun pipeline reusable dengan GitLab CI, Terraform, dan Argo CD\.
- Menerapkan quality gate, pemindaian keamanan, dan strategi canary release\.
#strong[Kata Kunci]: GitLab CI, Terraform, Argo CD, Kubernetes
]

= Minat
#resume-pad[
#strong[Olahraga]: Lari, Bersepeda, Renang

#strong[Musik]: Gitar, Piano

#strong[Open Source]: Kubernetes, Terraform, Prometheus
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Mentor][#link("https://devops.id")[https\:\/\/devops\.id]][Komunitas DevOps Indonesia][Jan 2022–Sekarang]
- Menjadi mentor bagi anggota komunitas dalam mempelajari Kubernetes, Terraform, dan praktik CI\/CD\.
- Membantu menyelenggarakan workshop dan sesi diskusi teknis rutin\.

#resume-subheading[Pengajar][#link("https://ui.ac.id/programming-club")[https\:\/\/ui\.ac\.id\/programming\-club]][Universitas Indonesia Programming Club][Sep 2017–Jul 2019]
- Mengajarkan dasar pemrograman dan penggunaan Git kepada mahasiswa baru\.
- Mendampingi peserta dalam kompetisi pemrograman tingkat universitas\.
]