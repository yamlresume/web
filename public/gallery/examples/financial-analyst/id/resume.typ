#set document(
  title: "Rizky Pratama Nugraha - Analis Keuangan Senior | Pemodelan Finansial & Valuasi",
  author: "Rizky Pratama Nugraha",
  keywords: "Analisis Keuangan, Pemodelan Finansial, Analitik Data, Manajemen Risiko, Komunikasi Bisnis",
  description: "Résumé of Rizky Pratama Nugraha",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Rizky Pratama Nugraha]] #v(-0.2em)

#text(size: 1.44em)[Analis Keuangan Senior | Pemodelan Finansial & Valuasi]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812 3456 7890")[\+62 812 3456 7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:rizky.pratama@keuangannusantara.co.id")[rizky\.pratama\@keuangannusantara\.co\.id] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.rizkypratama.id")[https\:\/\/www\.rizkypratama\.id]

Jl\. Jenderal Sudirman Kav\. 52\-53, Jakarta Selatan, DKI Jakarta, Indonesia, 12190

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/rizky-pratama-keuangan")[rizky\-pratama\-keuangan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@rizkypratama.finance")[rizkypratama\.finance]
]

= Informasi Dasar

#resume-pad[
Analis keuangan dengan pengalaman lebih dari 8 tahun dalam analisis investasi, pemodelan finansial, dan manajemen risiko di sektor perbankan dan pasar modal\.

- Terampil membangun model valuasi DCF, komparasi perusahaan, dan analisis sensitivitas untuk mendukung keputusan investasi\.
- Berpengalaman menyusun laporan keuangan manajemen, proyeksi kas, dan rekomendasi portofolio bagi manajemen senior\.
- Kuat dalam analisis data menggunakan Excel lanjutan, SQL, Python, dan Tableau; memahami regulasi OJK dan standar PSAK\.
- Terbiasa bekerja lintas fungsi, memimpin riset industri, serta menyampaikan insight kepada pemangku kepentingan\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Universitas Cakrawala Bisnis][#link("https://www.ucb.ac.id")[https\:\/\/www\.ucb\.ac\.id]][Magister, Manajemen Keuangan, Nilai: 3\.85][Sep 2014–Jul 2016]
- Memperdalam teknik valuasi perusahaan, analisis risiko, dan strategi portofolio\.
- Menyelesaikan tesis tentang dampak suku bunga terhadap kinerja sektor perbankan\.
#strong[Mata Kuliah]: Analisis Investasi, Manajemen Risiko Keuangan, Pasar Modal dan Portofolio, Akuntansi Manajemen Lanjutan, Ekonomi Moneter

#resume-subheading[Universitas Nusantara Ekonomi][#link("https://www.une.ac.id")[https\:\/\/www\.une\.ac\.id]][Sarjana, Akuntansi, Nilai: 3\.72][Sep 2010–Jul 2014]
- Membangun dasar kuat dalam laporan keuangan, penganggaran, dan analisis rasio\.
- Aktif dalam organisasi kemahasiswaan bidang pasar modal\.
#strong[Mata Kuliah]: Akuntansi Keuangan, Manajemen Keuangan, Statistik Bisnis, Ekonomi Mikro dan Makro, Audit Internal
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Analis Keuangan Senior][#link("https://www.sentosa-kapital.co.id")[https\:\/\/www\.sentosa\-kapital\.co\.id]][PT Sentosa Kapital Investama][Mar 2021–Sekarang]
- Memimpin analisis investasi untuk portofolio ekuitas dan obligasi senilai Rp2,4 triliun\.
- Membangun model DCF, LBO, dan komparasi perusahaan untuk mendukung uji tuntas\.
- Menyusun laporan kinerja bulanan dan rekomendasi alokasi aset kepada direksi\.
- Mengawasi dua analis junior dan mengembangkan template pemodelan standar\.
#strong[Kata Kunci]: Analisis Investasi, Pemodelan DCF, Uji Tuntas, Valuasi Perusahaan, Riset Industri

#resume-subheading[Analis Keuangan][#link("https://www.banknusantaramandiri.co.id")[https\:\/\/www\.banknusantaramandiri\.co\.id]][Bank Nusantara Mandiri][Jun 2017–Feb 2021]
- Menganalisis kinerja kredit korporasi dan menyusun proyeksi arus kas debitur\.
- Menilai kelayakan pembiayaan dengan analisis rasio, sensitivitas, dan uji stres\.
- Menyiapkan paket laporan manajemen untuk komite kredit dan regulator\.
- Berkolaborasi dengan tim risiko dan kepatuhan untuk memastikan kesesuaian regulasi OJK\.
#strong[Kata Kunci]: Analisis Kredit, Proyeksi Kas, Manajemen Risiko, Regulasi OJK, Pelaporan Manajemen

#resume-subheading[Analis Keuangan Junior][#link("https://www.analitikapasarmodal.co.id")[https\:\/\/www\.analitikapasarmodal\.co\.id]][PT Analitika Pasar Modal][Agu 2016–Mei 2017]
- Mengumpulkan dan membersihkan data pasar untuk riset sektor konsumen dan perbankan\.
- Menyusun ringkasan harian pasar modal dan catatan analis untuk tim investasi\.
- Membantu pembuatan model keuangan dasar serta presentasi internal\.
#strong[Kata Kunci]: Riset Pasar, Data Pasar, Model Keuangan, Pasar Modal, Analisis Sektor
]

= Bahasa
#resume-pad[
#strong[Indonesia]: Bahasa Ibu / Bilingual

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: IELTS 7\.5, Presentasi Bisnis])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Analisis Keuangan]: Ahli], [#strong[Kata Kunci]: Laporan Keuangan, Analisis Rasio, Proyeksi Kas, Anggaran, Valuasi])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Pemodelan Finansial]: Mahir], [#strong[Kata Kunci]: DCF, LBO, Excel Lanjutan, Analisis Sensitivitas, Komparasi Perusahaan])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analitik Data]: Mahir], [#strong[Kata Kunci]: SQL, Python, Tableau, Power BI, Bloomberg Terminal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Manajemen Risiko]: Menengah], [#strong[Kata Kunci]: Uji Stres, Analisis Kredit, Regulasi OJK, PSAK, Kepatuhan])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Komunikasi Bisnis]: Mahir], [#strong[Kata Kunci]: Presentasi Manajemen, Penulisan Laporan, Kolaborasi Lintas Fungsi])
]

= Penghargaan
#resume-pad[
#resume-subheading[Analis Keuangan Terbaik][][PT Sentosa Kapital Investama][Des 2023]
Diberikan atas kontribusi dalam penyusunan model valuasi portofolio dan rekomendasi investasi yang meningkatkan imbal hasil portofolio inti sebesar 12% secara tahunan\.
]

= Sertifikat
#resume-pad[
#resume-subheading[Financial Modeling & Valuation Analyst (FMVA)][#link("https://corporatefinanceinstitute.com/certifications/fmva/")[https\:\/\/corporatefinanceinstitute\.com\/certifications\/fmva\/]][Corporate Finance Institute][Nov 2022]

#resume-subheading[Certified Financial Analyst (CFA) Level I][#link("https://www.cfainstitute.org/programs/cfa-program")[https\:\/\/www\.cfainstitute\.org\/programs\/cfa\-program]][CFA Institute][Agu 2020]
]

= Publikasi
#resume-pad[
#resume-subheading[Dampak Suku Bunga terhadap Kinerja Sektor Perbankan Indonesia][#link("https://www.jrkn.ac.id/artikel/dampak-suku-bunga-perbankan")[https\:\/\/www\.jrkn\.ac\.id\/artikel\/dampak\-suku\-bunga\-perbankan]][Jurnal Riset Keuangan Nusantara][Jun 2022]
- Menganalisis hubungan antara perubahan suku bunga acuan dan profitabilitas bank umum\.
- Menemukan bahwa kualitas kredit dan likuiditas memoderasi dampak suku bunga terhadap margin bunga bersih\.
- Memberikan rekomendasi kebijakan bagi manajemen risiko perbankan\.
]

= Proyek
#resume-pad[
#resume-subheading[Dasbor Pemantauan Kinerja Keuangan][#link("https://www.sentosa-kapital.co.id/proyek/dashboard-keuangan")[https\:\/\/www\.sentosa\-kapital\.co\.id\/proyek\/dashboard\-keuangan]][Dasbor internal untuk memantau KPI keuangan, arus kas, dan eksposur risiko portofolio\.][Jan 2023–Agu 2023]
- Merancang metrik utama dan tata kelola data untuk dasbor manajemen\.
- Mengotomatiskan laporan bulanan menggunakan SQL, Python, dan Power BI\.
- Memangkas waktu penyusunan laporan dari 5 hari menjadi 1 hari\.
#strong[Kata Kunci]: Dasbor, Power BI, Otomasi Laporan, KPI Keuangan, Tata Kelola Data

#resume-subheading[Model Valuasi Sektor Energi Terbarukan][#link("https://www.sentosa-kapital.co.id/proyek/valuasi-energi")[https\:\/\/www\.sentosa\-kapital\.co\.id\/proyek\/valuasi\-energi]][Model valuasi untuk menilai peluang investasi di sektor energi terbarukan\.][Mar 2022–Des 2022]
- Membangun model DCF dan skenario sensitivitas harga listrik serta biaya modal\.
- Menyusun komparasi perusahaan dan analisis risiko regulasi\.
- Menyajikan rekomendasi investasi kepada komite investasi\.
#strong[Kata Kunci]: DCF, Energi Terbarukan, Analisis Skenario, Risiko Regulasi, Komite Investasi
]

= Minat
#resume-pad[
#strong[Pasar Modal]: Analisis Saham, Obligasi, Reksa Dana, Makroekonomi

#strong[Pengembangan Diri]: Berbicara Publik, Menulis, Visualisasi Data
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Relawan Edukasi Keuangan][#link("https://www.ylki.or.id")[https\:\/\/www\.ylki\.or\.id]][Yayasan Literasi Keuangan Indonesia][Jan 2018–Des 2024]
- Memberikan pelatihan literasi keuangan kepada pelajar dan pelaku UMKM\.
- Menyusun modul sederhana tentang anggaran, tabungan, dan investasi aman\.
- Membantu kampanye pencegahan investasi ilegal bersama komunitas lokal\.
]