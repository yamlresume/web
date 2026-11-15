#set document(
  title: "Rizky Aditya Pratama - Software Engineer Berfokus pada Backend, Cloud, dan Arsitektur Skalabel",
  author: "Rizky Aditya Pratama",
  keywords: "Pengembangan Backend, Arsitektur & Infrastruktur, Database, Frontend Web",
  description: "Résumé of Rizky Aditya Pratama",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Rizky Aditya Pratama]] #v(-0.2em)

#text(size: 1.44em)[Software Engineer Berfokus pada Backend, Cloud, dan Arsitektur Skalabel]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812-3456-7890")[\+62 812\-3456\-7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:rizky.aditya@example.com")[rizky\.aditya\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://rizkyaditya.dev")[https\:\/\/rizkyaditya\.dev]

Jl\. Senopati No\. 45, Kebayoran Baru, Jakarta Selatan, DKI Jakarta, Indonesia, 12190

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/rizkyadityap")[rizkyadityap] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/rizkyadityapratama")[rizkyadityapratama]
]

= Informasi Dasar

#resume-pad[
- Software engineer dengan 5\+ tahun pengalaman membangun layanan backend yang skalabel dan andal di lingkungan startup serta perusahaan teknologi\.
- Mahir menggunakan Go, Java, dan Node\.js, serta berpengalaman menerapkan arsitektur mikroservis, event\-driven, dan RESTful API\.
- Berpengalaman mengelola infrastruktur di AWS, Docker, dan Kubernetes, termasuk penerapan CI\/CD dan observability\.
- Terbiasa berkolaborasi dalam tim agile, melakukan code review, menulis dokumentasi teknis, dan menjadi mentor bagi engineer junior\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Universitas Indonesia][#link("https://www.ui.ac.id/")[https\:\/\/www\.ui\.ac\.id\/]][Sarjana, Ilmu Komputer, Nilai: 3\.76][Agu 2016–Jul 2021]
- Lulus dengan predikat cum laude dan fokus pada mata kuliah rekayasa perangkat lunak, basis data, dan sistem terdistribusi\.
- Menjadi asisten dosen untuk praktikum Pemrograman Dasar dan Struktur Data selama dua semester\.
- Menyelesaikan skripsi berjudul \'Perancangan API Gateway untuk Layanan Mikroservis pada Aplikasi E\-Commerce\'\.
#strong[Mata Kuliah]: Struktur Data dan Algoritma, Basis Data, Sistem Operasi, Jaringan Komputer, Rekayasa Perangkat Lunak, Kecerdasan Buatan, Pemrograman Berorientasi Objek, Matematika Diskret
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Software Engineer][#link("https://www.nusantaradigital.co.id")[https\:\/\/www\.nusantaradigital\.co\.id]][PT Nusantara Digital Solusi][Jan 2022–Sekarang]
- Merancang dan mengembangkan RESTful API untuk platform logistik menggunakan Go dan PostgreSQL, melayani 2 juta permintaan per hari\.
- Memigrasikan sistem monolitik menjadi arsitektur mikroservis dengan Kafka dan gRPC, mengurangi waktu deployment hingga 40%\.
- Menerapkan Circuit Breaker dan Retry Mechanism untuk meningkatkan ketahanan sistem terhadap kegagalan upstream\.
- Berkolaborasi dengan tim DevOps membuat pipeline CI\/CD menggunakan GitHub Actions dan Argo CD\.
- Memimpin technical sharing dan menjadi mentor bagi onboarding engineer baru\.
#strong[Kata Kunci]: Go, Kubernetes, Kafka, gRPC, PostgreSQL, Microservices, CI\/CD, REST API

#resume-subheading[Backend Developer][#link("https://kreatifmedia.co.id")[https\:\/\/kreatifmedia\.co\.id]][PT Kreatif Media Nusantara][Agu 2020–Des 2021]
- Mengembangkan layanan backend untuk aplikasi media streaming menggunakan Node\.js, Express, dan MongoDB\.
- Merancang skema database dan mengoptimalkan query sehingga response time turun dari 800 ms menjadi 200 ms\.
- Mengintegrasikan penyedia pembayaran digital seperti Midtrans dan Xendit untuk fitur langganan premium\.
- Menulis unit test dan integration test menggunakan Jest, meningkatkan code coverage dari 45% menjadi 85%\.
- Berpartisipasi aktif dalam sprint planning, daily standup, dan retrospektif bersama tim produk\.
#strong[Kata Kunci]: Node\.js, Express, MongoDB, Redis, Jest, Payment Gateway, REST API

#resume-subheading[Junior Web Developer][#link("https://aplikasianaknegeri.co.id")[https\:\/\/aplikasianaknegeri\.co\.id]][PT Aplikasi Anak Negeri][Jul 2019–Jul 2020]
- Membangun fitur frontend dan backend pada sistem informasi desa menggunakan PHP Laravel dan MySQL\.
- Membuat modul manajemen pengguna, inventaris aset, dan pelaporan pendapatan desa\.
- Melakukan debugging serta pemeliharaan aplikasi produksi dan menyusun dokumentasi penggunaan untuk admin desa\.
#strong[Kata Kunci]: Laravel, PHP, MySQL, JavaScript, Bootstrap
]

= Bahasa
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Melayu]: Bahasa Ibu / Bilingual], [#strong[Kata Kunci]: Bahasa Indonesia])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: TOEFL ITP 600, IELTS 7\.0])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Pengembangan Backend]: Ahli], [#strong[Kata Kunci]: Go, Java, Node\.js, REST API, gRPC, GraphQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Arsitektur & Infrastruktur]: Mahir], [#strong[Kata Kunci]: Docker, Kubernetes, AWS, Terraform, Kafka, Redis])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Database]: Mahir], [#strong[Kata Kunci]: PostgreSQL, MySQL, MongoDB, Elasticsearch, Redis])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Frontend Web]: Menengah], [#strong[Kata Kunci]: React, TypeScript, Tailwind CSS, Vite])
]

= Penghargaan
#resume-pad[
#resume-subheading[Juara 2 Hackathon API Nasional 2020][][Kementerian Komunikasi dan Informatika RI][Nov 2020]
Membangun API inovasi untuk layanan kesehatan berbasis komunitas bersama tim dan menang dari 150\+ peserta\.
]

= Sertifikat
#resume-pad[
#resume-subheading[AWS Certified Solutions Architect \- Associate][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][Mar 2023]

#resume-subheading[Professional Cloud Developer \- Google Cloud][#link("https://cloud.google.com/certification")[https\:\/\/cloud\.google\.com\/certification]][Google Cloud][Agu 2022]
]

= Publikasi
#resume-pad[
#resume-subheading[Implementasi Service Mesh menggunakan Istio pada Layanan Mikroservis][#link("https://jtiik.ub.ac.id/index.php/jtiik")[https\:\/\/jtiik\.ub\.ac\.id\/index\.php\/jtiik]][Jurnal Teknologi Informasi dan Ilmu Komputer][Jun 2023]
Membahas pola penerapan service mesh Istio untuk observability, keamanan, dan traffic management pada layanan mikroservis di lingkungan Kubernetes\.
]

= Referensi
#resume-pad[
#resume-subheading[Budi Santoso][Engineering Manager di PT Nusantara Digital Solusi][budi\.santoso\@nusantaradigital\.co\.id][\+62 811\-9876\-5432]
Rizky adalah salah satu engineer paling andal di tim\. Ia memiliki kemampuan analitis yang kuat dan selalu mengutamakan kualitas kode serta kolaborasi tim\.
]

= Proyek
#resume-pad[
#resume-subheading[Sirekap Desa][#link("https://github.com/rizkyadityap/sirekap-desa")[https\:\/\/github\.com\/rizkyadityap\/sirekap\-desa]][Platform pelaporan keuangan dan aset desa berbasis web][Mar 2021–Agu 2021]
- Mengembangkan aplikasi berbasis Laravel dan MySQL untuk digitalisasi administrasi desa\.
- Merancang sistem autentikasi multi\-level untuk admin desa, camat, dan dinas pemberdayaan masyarakat\.
- Menghasilkan dashboard visualisasi pendapatan dan belanja desa menggunakan Chart\.js\.
#strong[Kata Kunci]: Laravel, MySQL, Chart\.js, Bootstrap

#resume-subheading[GoShop API][#link("https://github.com/rizkyadityap/goshop-api")[https\:\/\/github\.com\/rizkyadityap\/goshop\-api]][Backend microservices untuk aplikasi e\-commerce sederhana][Jan 2022–Jun 2022]
- Merancang service catalog, cart, order, dan payment menggunakan arsitektur microservices\.
- Menggunakan komunikasi gRPC antar service dan REST API untuk klien\.
- Menerapkan Saga Pattern untuk distributed transaction dan Kafka sebagai event bus\.
#strong[Kata Kunci]: Go, gRPC, Kafka, Docker, PostgreSQL
]

= Minat
#resume-pad[
#strong[Sepak Bola]: Futsal, Premier League

#strong[Teknologi Open Source]: Kubernetes, Golang, Linux

#strong[Literasi]: Buku Teknologi, Jurnal Ilmiah
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Relawan Acara][#link("https://gdg.community.dev/gdg-jakarta/")[https\:\/\/gdg\.community\.dev\/gdg\-jakarta\/]][Google Developer Groups Jakarta][Feb 2022–Des 2023]
- Menjadi relawan untuk Google I\/O Extended Jakarta dan Cloud Study Jam\.
- Membantu koordinasi peserta, dokumentasi, serta moderasi sesi diskusi\.

#resume-subheading[Mentor Belajar Backend][#link("https://komunitasprogrammer.id")[https\:\/\/komunitasprogrammer\.id]][Komunitas Programmer Indonesia][Jan 2021–Des 2021]
- Memberikan mentorship gratis bagi anggota komunitas yang ingin mendalami backend development\.
- Membimbing lima mentee dalam menyelesaikan proyek capstone API sederhana\.
]