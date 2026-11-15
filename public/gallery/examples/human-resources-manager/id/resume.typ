#set document(
  title: "Budi Santoso - Manajer SDM Senior | Spesialis Hubungan Karyawan & Rekrutmen",
  author: "Budi Santoso",
  keywords: "Manajemen Sumber Daya Manusia, HRIS & Analitik, Kepatuhan & Hukum Ketenagakerjaan, Kepemimpinan & Komunikasi",
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

#text(size: 1.44em)[Manajer SDM Senior | Spesialis Hubungan Karyawan & Rekrutmen]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812-3456-7890")[\+62 812\-3456\-7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:budi.santoso@email.com")[budi\.santoso\@email\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.budisantoso-hr.id")[https\:\/\/www\.budisantoso\-hr\.id]

Jl\. Jenderal Sudirman Kav\. 52\-53, Jakarta Selatan, DKI Jakarta, Indonesia, 12190

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/budisantoso-hr")[budisantoso\-hr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/budisantoso_hr")[budisantoso\_hr]
]

= Informasi Dasar

#resume-pad[
- Manajer Sumber Daya Manusia dengan pengalaman lebih dari 10 tahun di perusahaan multinasional dan startup teknologi\.
- Ahli dalam merancang strategi rekrutmen, mengelola hubungan industrial, dan meningkatkan keterlibatan karyawan\.
- Berpengalaman memimpin tim HR lintas fungsi dan mengimplementasikan sistem HRIS untuk efisiensi operasional\.
- Komitmen tinggi terhadap pengembangan budaya kerja inklusif, berintegritas, dan berorientasi pada hasil\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Universitas Indonesia][#link("https://www.ui.ac.id")[https\:\/\/www\.ui\.ac\.id]][Sarjana, Psikologi, Nilai: 3\.75][Sep 2008–Jul 2012]
- Lulus dengan predikat cum laude dan meraih penghargaan mahasiswa berprestasi\.
- Aktif dalam organisasi kemahasiswaan sebagai ketua divisi pengembangan sumber daya anggota\.
#strong[Mata Kuliah]: Psikologi Industri dan Organisasi, Manajemen Sumber Daya Manusia, Perilaku Organisasi, Metodologi Penelitian, Psikometri, Konseling Karir

#resume-subheading[Universitas Gadjah Mada][#link("https://www.ugm.ac.id")[https\:\/\/www\.ugm\.ac\.id]][Magister, Manajemen Sumber Daya Manusia, Nilai: 3\.90][Agu 2013–Jun 2015]
- Tesis tentang pengaruh budaya organisasi terhadap keterlibatan karyawan di sektor teknologi\.
- Menerima beasiswa penuh dari program pascasarjana\.
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Manajer Sumber Daya Manusia][#link("https://www.majubersama.co.id")[https\:\/\/www\.majubersama\.co\.id]][PT Maju Bersama Sejahtera][Mar 2019–Sekarang]
- Memimpin tim HR dengan 8 anggota untuk mendukung 500\+ karyawan di seluruh Indonesia\.
- Mengembangkan dan menerapkan strategi rekrutmen yang menurunkan time\-to\-hire sebesar 30%\.
- Merancang program retensi karyawan yang meningkatkan engagement score dari 72% menjadi 85%\.
- Mengelola hubungan industrial, termasuk negosiasi perjanjian kerja bersama dan penanganan perselisihan\.
- Mengimplementasikan sistem HRIS berbasis cloud untuk otomatisasi payroll, absensi, dan manajemen kinerja\.
#strong[Kata Kunci]: Manajemen Talenta, Hubungan Industrial, HRIS, Engagement, Kepatuhan

#resume-subheading[Supervisor Sumber Daya Manusia][#link("https://www.karyadigital.id")[https\:\/\/www\.karyadigital\.id]][PT Karya Digital Nusantara][Jun 2015–Feb 2019]
- Mengawasi proses rekrutmen end\-to\-end untuk posisi teknologi dan non\-teknologi\.
- Mengembangkan program onboarding yang meningkatkan retensi karyawan baru sebesar 20%\.
- Mengelola administrasi kompensasi dan benefit, termasuk BPJS Kesehatan dan Ketenagakerjaan\.
- Menjadi penghubung antara manajemen dan karyawan dalam menangani keluhan dan mediasi\.
#strong[Kata Kunci]: Rekrutmen, Onboarding, Kompensasi, Mediasi, BPJS

#resume-subheading[Staf Rekrutmen][#link("https://www.sumberrejekiabadi.com")[https\:\/\/www\.sumberrejekiabadi\.com]][PT Sumber Rejeki Abadi][Agu 2012–Mei 2015]
- Melakukan screening CV, wawancara awal, dan koordinasi dengan manajer departemen\.
- Mengelola database kandidat dan membuat laporan rekrutmen bulanan\.
- Mendukung program employer branding melalui job fair dan media sosial\.
#strong[Kata Kunci]: Screening, Wawancara, Employer Branding, Database
]

= Bahasa
#resume-pad[
#strong[Indonesia]: Bahasa Ibu / Bilingual

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: TOEFL 110, IELTS 8\.0])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Mandarin]: Tingkat Kerja Terbatas], [#strong[Kata Kunci]: HSK 3])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Manajemen Sumber Daya Manusia]: Ahli], [#strong[Kata Kunci]: Rekrutmen, Manajemen Kinerja, Hubungan Karyawan, Kompensasi & Benefit, Pelatihan & Pengembangan])

#grid(columns: (1fr, auto), align: (left, right), [#strong[HRIS & Analitik]: Mahir], [#strong[Kata Kunci]: SAP SuccessFactors, Workday, Excel Lanjutan, Power BI, Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Kepatuhan & Hukum Ketenagakerjaan]: Mahir], [#strong[Kata Kunci]: UU Ketenagakerjaan, BPJS, Perjanjian Kerja, Audit HR, Hubungan Industrial])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Kepemimpinan & Komunikasi]: Ahli], [#strong[Kata Kunci]: Negosiasi, Mediasi, Public Speaking, Coaching, Manajemen Perubahan])
]

= Penghargaan
#resume-pad[
#resume-subheading[HR Leader of the Year][][Asosiasi Manajemen Sumber Daya Manusia Indonesia][Nov 2022]
Diberikan kepada profesional HR yang menunjukkan kepemimpinan luar biasa dalam mengembangkan strategi SDM dan menciptakan budaya kerja positif\.

#resume-subheading[Employer Branding Terbaik][][HR Asia][Agu 2021]
Penghargaan atas keberhasilan program employer branding yang meningkatkan jumlah pelamar berkualitas dan reputasi perusahaan sebagai tempat kerja pilihan\.
]

= Sertifikat
#resume-pad[
#resume-subheading[Certified Human Resources Professional (CHRP)][#link("https://www.chrp-indonesia.org")[https\:\/\/www\.chrp\-indonesia\.org]][Lembaga Sertifikasi Profesi HR Indonesia][Feb 2020]

#resume-subheading[SHRM\-CP][#link("https://www.shrm.org/certification")[https\:\/\/www\.shrm\.org\/certification]][Society for Human Resource Management][Jun 2018]

#resume-subheading[Ahli K3 Umum][#link("https://kemnaker.go.id")[https\:\/\/kemnaker\.go\.id]][Kementerian Ketenagakerjaan RI][Mar 2017]
]

= Publikasi
#resume-pad[
#resume-subheading[Membangun Budaya Kerja Inklusif di Era Hybrid][#link("https://jurnalmanajemen.id/artikel/budaya-kerja-inklusif")[https\:\/\/jurnalmanajemen\.id\/artikel\/budaya\-kerja\-inklusif]][Jurnal Manajemen Indonesia][Mei 2022]
- Artikel ini membahas strategi menciptakan budaya kerja inklusif bagi karyawan remote dan on\-site\.
- Studi kasus pada tiga perusahaan teknologi di Jakarta menunjukkan peningkatan kolaborasi dan kepuasan kerja\.
]

= Referensi
#resume-pad[
#resume-subheading[Dr\. Siti Rahmawati][Dosen Psikologi Industri dan Organisasi][siti\.rahmawati\@ui\.ac\.id][\+62 811\-9876\-5432]
Budi Santoso adalah profesional HR yang berintegritas dan memiliki kemampuan analitis yang kuat\. Ia mampu memimpin tim dan berkomunikasi efektif dengan berbagai pemangku kepentingan\.
]

= Proyek
#resume-pad[
#resume-subheading[Implementasi HRIS Terintegrasi][][Proyek transformasi digital untuk mengotomatisasi proses HR di perusahaan\.][Jan 2020–Des 2020]
- Memimpin migrasi data karyawan dari sistem manual ke platform HRIS berbasis cloud\.
- Melatih 50\+ pengguna dan menyusun SOP baru untuk payroll, absensi, dan cuti\.
- Mencapai pengurangan waktu proses payroll dari 5 hari menjadi 2 hari\.
#strong[Kata Kunci]: HRIS, Digital Transformation, Change Management

#resume-subheading[Program Kesejahteraan Karyawan][][Inisiatif untuk meningkatkan kesejahteraan fisik dan mental karyawan\.][Mar 2021–Agu 2021]
- Meluncurkan program konseling online, kelas kebugaran, dan tunjangan kesehatan tambahan\.
- Mengukur dampak melalui survei kesejahteraan dan tingkat absensi\.
- Meningkatkan skor kesejahteraan karyawan sebesar 25% dalam enam bulan\.
#strong[Kata Kunci]: Employee Wellbeing, Mental Health, Benefits
]

= Minat
#resume-pad[
#strong[Pengembangan Diri]: Membaca, Public Speaking, Coaching

#strong[Olahraga]: Lari, Bersepeda, Bulu Tangkis
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Mentor Karir][#link("https://www.ypab.org")[https\:\/\/www\.ypab\.org]][Yayasan Pendidikan Anak Bangsa][Jan 2019–Des 2022]
- Membimbing siswa SMK dalam mempersiapkan diri memasuki dunia kerja\.
- Memberikan pelatihan CV, wawancara, dan keterampilan lunak\.
- Membantu menyelenggarakan job fair tahunan untuk 200\+ siswa\.
]