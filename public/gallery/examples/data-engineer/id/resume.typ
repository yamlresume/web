#set document(
  title: "Rizky Pratama Nugroho - Insinyur Data Senior yang membangun platform data modern dan andal",
  author: "Rizky Pratama Nugroho",
  keywords: "Rekayasa Data, Basis Data dan Pemodelan, Cloud dan Infrastruktur, Analitik dan Visualisasi",
  description: "Résumé of Rizky Pratama Nugroho",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Rizky Pratama Nugroho]] #v(-0.2em)

#text(size: 1.44em)[Insinyur Data Senior yang membangun platform data modern dan andal]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812-3456-7890")[\+62 812\-3456\-7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:rizky.pratama@example.com")[rizky\.pratama\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://rizkypratama.dev")[https\:\/\/rizkypratama\.dev]

Jl\. Gatot Subroto No\. 88, Kuningan Barat, Jakarta Selatan, DKI Jakarta, Indonesia, 12710

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/rizkypnugroho")[rizkypnugroho] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/rizkypnugroho")[rizkypnugroho] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/9876543/rizky-nugroho")[rizky\-nugroho]
]

= Informasi Dasar

#resume-pad[
- Insinyur Data dengan pengalaman lebih dari 7 tahun dalam merancang, membangun, dan mengoperasikan platform data modern\.
- Ahli dalam pipeline ETL\/ELT, pemodelan data dimensional, tata kelola data, dan optimasi performa kueri\.
- Terbiasa bekerja dengan Apache Airflow, dbt, Spark, Kafka, Snowflake, BigQuery, dan ekosistem cloud\.
- Pemimpin teknis yang kolaboratif, berorientasi dampak bisnis, dan berpengalaman membimbing engineer junior\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Institut Teknologi Bandung][#link("https://www.itb.ac.id")[https\:\/\/www\.itb\.ac\.id]][Sarjana, Teknik Informatika, Nilai: 3\.72][Agu 2014–Jul 2018]
- Fokus pada basis data, sistem terdistribusi, dan rekayasa perangkat lunak\.
- Menyelesaikan tugas akhir tentang optimasi kueri pada gudang data kolumnar\.
- Aktif dalam organisasi mahasiswa dan kompetisi analitik data\.
#strong[Mata Kuliah]: Struktur Data dan Algoritma, Basis Data, Sistem Terdistribusi, Rekayasa Perangkat Lunak, Statistika Terapan, Pembelajaran Mesin, Komputasi Awan, Pemrograman Fungsional
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Insinyur Data Senior][#link("https://cakrawaladata.co.id")[https\:\/\/cakrawaladata\.co\.id]][PT Cakrawala Data Nusantara][Feb 2022–Sekarang]
- Merancang dan memelihara arsitektur data lakehouse untuk mendukung analitik dan pelaporan lintas divisi\.
- Membangun pipeline ETL\/ELT dengan Apache Airflow, dbt, dan Spark untuk memproses lebih dari 2 TB data harian\.
- Mengoptimalkan model data di Snowflake dan BigQuery sehingga waktu kueri analitik turun 40 persen\.
- Menerapkan praktik tata kelola data, katalog data, dan kontrol kualitas data bersama tim platform\.
- Memimpin tiga insinyur data junior dan melakukan code review untuk menjaga standar rekayasa data\.
#strong[Kata Kunci]: Data Lakehouse, Apache Airflow, dbt, Apache Spark, Snowflake, BigQuery, Tata Kelola Data, Kualitas Data

#resume-subheading[Insinyur Data][#link("https://solusianalitik.co.id")[https\:\/\/solusianalitik\.co\.id]][PT Solusi Analitik Prima][Mar 2019–Jan 2022]
- Mengembangkan data warehouse dan pipeline batch untuk kebutuhan business intelligence klien ritel dan keuangan\.
- Membangun integrasi data dari PostgreSQL, MySQL, dan API pihak ketiga menggunakan Python dan Apache Airflow\.
- Membuat model dbt dan dokumentasi data untuk meningkatkan konsistensi metrik bisnis\.
- Berkolaborasi dengan analis data dan manajer produk dalam perancangan KPI serta dashboard operasional\.
- Menurunkan biaya pemrosesan data 25 persen melalui optimasi job dan partisi tabel\.
#strong[Kata Kunci]: Data Warehouse, Apache Airflow, Python, dbt, PostgreSQL, Business Intelligence, ETL, Optimasi Kueri

#resume-subheading[Analis Data][#link("https://insightdigital.co.id")[https\:\/\/insightdigital\.co\.id]][PT Insight Digital Indonesia][Agu 2018–Feb 2019]
- Mengumpulkan, membersihkan, dan menganalisis data penjualan untuk mendukung pengambilan keputusan manajemen\.
- Membuat dashboard Tableau dan laporan otomatis dengan SQL untuk tim pemasaran dan operasional\.
- Menyusun dokumentasi metrik dan membantu validasi data sebelum dipublikasikan ke pemangku kepentingan\.
#strong[Kata Kunci]: SQL, Tableau, Analisis Data, Dashboard, Pelaporan
]

= Bahasa
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Indonesia]: Bahasa Ibu / Bilingual], [#strong[Kata Kunci]: Bahasa ibu, Komunikasi profesional])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: IELTS 7\.5, Presentasi teknis])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Rekayasa Data]: Ahli], [#strong[Kata Kunci]: Apache Airflow, Apache Spark, dbt, Apache Kafka, Python, SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Basis Data dan Pemodelan]: Mahir], [#strong[Kata Kunci]: Snowflake, Google BigQuery, PostgreSQL, Data Warehouse, Data Modeling, Kualitas Data])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud dan Infrastruktur]: Mahir], [#strong[Kata Kunci]: Google Cloud Platform, AWS, Terraform, Docker, Kubernetes, CI\/CD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analitik dan Visualisasi]: Menengah], [#strong[Kata Kunci]: Power BI, Tableau, Metabase, Pandas, PySpark, Looker])
]

= Penghargaan
#resume-pad[
#resume-subheading[Karyawan Terbaik Tahun 2023][][PT Cakrawala Data Nusantara][Des 2023]
Diberikan atas kontribusi dalam modernisasi platform data perusahaan dan kepemimpinan teknis tim rekayasa data\.

#resume-subheading[Juara 2 Hackathon Data Nasional][][Asosiasi Data Indonesia][Okt 2019]
Diberikan atas pencapaian tim dalam membangun solusi analitik prediktif untuk optimasi rantai pasok\.
]

= Sertifikat
#resume-pad[
#resume-subheading[Google Cloud Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google Cloud][Mei 2023]

#resume-subheading[AWS Certified Data Analytics \- Specialty][#link("https://aws.amazon.com/certification/certified-data-analytics-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-data\-analytics\-specialty\/]][Amazon Web Services][Sep 2022]

#resume-subheading[dbt Analytics Engineering Certification][#link("https://www.getdbt.com/certifications/analytics-engineering-certification")[https\:\/\/www\.getdbt\.com\/certifications\/analytics\-engineering\-certification]][dbt Labs][Jan 2024]
]

= Publikasi
#resume-pad[
#resume-subheading[Arsitektur Data Lakehouse untuk Analitik Real\-Time di Perusahaan Digital][#link("https://doi.org/10.1234/jsii.2021.0123")[https\:\/\/doi\.org\/10\.1234\/jsii\.2021\.0123]][Jurnal Sistem Informasi Indonesia][Nov 2021]
- Membahas rancangan data lakehouse untuk kebutuhan analitik real\-time\.
- Menguraikan strategi ingestion, pemodelan, tata kelola, dan kualitas data\.
- Memberikan studi kasus penerapan pada perusahaan digital di Indonesia\.
]

= Referensi
#resume-pad[
#resume-subheading[Dewi Anggraini][Head of Data Engineering, PT Cakrawala Data Nusantara][dewi\.anggraini\@cakrawaladata\.co\.id][\+62 811\-9876\-5432]
Dewi Anggraini memimpin tim Data Engineering di PT Cakrawala Data Nusantara dan dapat memberikan keterangan mengenai kinerja teknis, kepemimpinan, serta kontribusi Rizky selama bekerja\.
]

= Proyek
#resume-pad[
#resume-subheading[Pipeline Data Real\-Time untuk Dashboard Operasional][#link("https://github.com/rizkypnugroho/realtime-ops-pipeline")[https\:\/\/github\.com\/rizkypnugroho\/realtime\-ops\-pipeline]][Membangun pipeline streaming untuk menyediakan metrik operasional near real\-time bagi tim gudang dan logistik\.][Mar 2023–Sep 2023]
- Mengintegrasikan Apache Kafka, Spark Structured Streaming, dan BigQuery untuk aliran data berlatensi rendah\.
- Menerapkan monitoring, alerting, dan idempotensi pipeline agar kualitas data tetap terjaga\.
- Menyusun runbook dan dokumentasi arsitektur untuk tim operasi data\.
#strong[Kata Kunci]: Apache Kafka, Spark Streaming, BigQuery, Observability, Kualitas Data

#resume-subheading[Modernisasi Data Warehouse Perusahaan Ritel][#link("https://github.com/rizkypnugroho/retail-dw-modernization")[https\:\/\/github\.com\/rizkypnugroho\/retail\-dw\-modernization]][Memodernisasi gudang data legacy menjadi model dimensional yang lebih skalabel dan mudah dipelihara\.][Jun 2021–Des 2021]
- Memigrasikan tabel legacy ke Snowflake dengan strategi cutover bertahap\.
- Membangun model dbt dan test kualitas data untuk dimensi pelanggan, produk, dan penjualan\.
- Mendokumentasikan lineage data dan metrik bisnis bersama tim analitik\.
#strong[Kata Kunci]: Snowflake, dbt, Data Warehouse, Data Modeling, Migrasi Data
]

= Minat
#resume-pad[
#strong[Open Source]: Apache Airflow, dbt, Apache Kafka

#strong[Olahraga]: Lari, Bersepeda, Bulu Tangkis

#strong[Musik]: Gitar, Piano
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Mentor Data Engineering][#link("https://datakomunitas.id")[https\:\/\/datakomunitas\.id]][Komunitas Data Jakarta][Jan 2021–Sekarang]
- Menjadi mentor dalam program belajar data engineering untuk pemula dan profesional yang beralih karier\.
- Membantu peserta membangun proyek portofolio pipeline data dan memberikan umpan balik teknis\.
- Turut menyelenggarakan lokakarya tentang Airflow, dbt, dan praktik terbaik kualitas data\.
]