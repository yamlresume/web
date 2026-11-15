#set document(
  title: "Rizky Pratama - Manajer Operasional Berpengalaman di Ritel dan Logistik",
  author: "Rizky Pratama",
  keywords: "Manajemen Operasional, Kepemimpinan, Analisis Data, Manajemen Rantai Pasok, Manajemen Proyek",
  description: "Résumé of Rizky Pratama",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Rizky Pratama]] #v(-0.2em)

#text(size: 1.44em)[Manajer Operasional Berpengalaman di Ritel dan Logistik]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812 3456 7890")[\+62 812 3456 7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:rizky.pratama@example.co.id")[rizky\.pratama\@example\.co\.id] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.rizkypratama.id")[https\:\/\/www\.rizkypratama\.id]

Jl\. Jenderal Sudirman No\. 45, Jakarta Selatan, DKI Jakarta, Indonesia, 12190

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/rizkypratama")[rizkypratama] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/rizkypratama")[rizkypratama]
]

= Informasi Dasar

#resume-pad[
Manajer operasional dengan pengalaman lebih dari 8 tahun dalam mengelola proses ritel, distribusi, dan logistik\. Terbukti mampu meningkatkan efisiensi operasional, menurunkan biaya, dan memimpin tim lintas fungsi untuk mencapai target KPI\.

- Ahli dalam perencanaan kapasitas, pengendalian persediaan, dan perbaikan proses berkelanjutan\.
- Berpengalaman memimpin tim hingga 60 orang di beberapa lokasi operasional\.
- Kuat dalam analisis data operasional, penyusunan anggaran, dan manajemen pemasok\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Universitas Indonesia][#link("https://www.ui.ac.id")[https\:\/\/www\.ui\.ac\.id]][Sarjana, Manajemen Operasional, Nilai: 3\.65][2011\-09\-01–2015\-07\-01]
- Menempuh studi dengan fokus pada efisiensi proses, pengendalian persediaan, dan manajemen rantai pasok\.
- Menyelesaikan proyek akhir tentang optimasi rute distribusi untuk menurunkan biaya logistik\.
- Aktif dalam organisasi kemahasiswaan sebagai koordinator acara operasional\.
#strong[Mata Kuliah]: Manajemen Rantai Pasok, Perencanaan dan Pengendalian Produksi, Analisis Proses Bisnis, Manajemen Kualitas, Manajemen Proyek, Riset Operasi
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Manajer Operasional Regional][#link("https://www.nusantararetail.co.id")[https\:\/\/www\.nusantararetail\.co\.id]][PT Nusantara Retail Mandiri][2021\-03\-01–Sekarang]
- Memimpin operasional 18 gerai dan 3 gudang regional dengan total 60 staf\.
- Menyusun rencana operasional bulanan dan tahunan, termasuk anggaran, target KPI, dan alokasi sumber daya\.
- Meningkatkan produktivitas tim sebesar 22% melalui standarisasi proses dan program pelatihan berkelanjutan\.
- Menurunkan biaya logistik regional sebesar 15% melalui negosiasi vendor dan optimasi rute pengiriman\.
- Berkolaborasi dengan tim penjualan, keuangan, dan rantai pasok untuk memastikan ketersediaan produk dan kepatuhan SOP\.
#strong[Kata Kunci]: Perencanaan Operasional, Efisiensi Proses, Manajemen Tim, KPI, Logistik

#resume-subheading[Asisten Manajer Operasional][#link("https://www.sentralogistik.co.id")[https\:\/\/www\.sentralogistik\.co\.id]][PT Sentra Logistik Cepat][2017\-06\-01–2021\-02\-28]
- Mengelola operasional harian pergudangan dan distribusi untuk wilayah Jabodetabek\.
- Mengawasi tim 25 orang dan memastikan pencapaian target pengiriman tepat waktu di atas 98%\.
- Mengembangkan dashboard KPI untuk memantau produktivitas, biaya per pengiriman, dan tingkat kerusakan barang\.
- Memimpin inisiatif perbaikan proses yang mengurangi waktu bongkar muat sebesar 30%\.
#strong[Kata Kunci]: Pergudangan, Distribusi, Dashboard KPI, Perbaikan Proses, Manajemen Tim

#resume-subheading[Supervisor Operasional][#link("https://www.karyadistribusi.co.id")[https\:\/\/www\.karyadistribusi\.co\.id]][PT Karya Distribusi Utama][2015\-08\-01–2017\-05\-31]
- Mengawasi kegiatan inventaris, penerimaan barang, dan pengiriman ke pelanggan ritel\.
- Menyusun jadwal kerja harian untuk 15 staf operasional dan memastikan kepatuhan terhadap prosedur keselamatan\.
- Melakukan analisis ABC untuk mengoptimalkan persediaan dan mengurangi stok mati sebesar 18%\.
#strong[Kata Kunci]: Pengendalian Persediaan, Jadwal Kerja, Keselamatan Kerja, Analisis ABC, Ritel
]

= Bahasa
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Indonesia]: Bahasa Ibu / Bilingual], [#strong[Kata Kunci]: Bahasa ibu])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: TOEFL 580, Presentasi Bisnis])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Manajemen Operasional]: Ahli], [#strong[Kata Kunci]: Perencanaan Kapasitas, Pengendalian Persediaan, Analisis Proses, Manajemen Kualitas])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Kepemimpinan]: Mahir], [#strong[Kata Kunci]: Manajemen Tim, Coaching, Delegasi, Komunikasi Lintas Fungsi])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analisis Data]: Mahir], [#strong[Kata Kunci]: Excel, Power BI, SQL, Dashboard KPI])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Manajemen Rantai Pasok]: Mahir], [#strong[Kata Kunci]: Logistik, Pengadaan, Distribusi, Pergudangan])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Manajemen Proyek]: Menengah], [#strong[Kata Kunci]: Agile, Scrum, Perencanaan Proyek, Manajemen Risiko])
]

= Penghargaan
#resume-pad[
#resume-subheading[Penghargaan Kinerja Terbaik][][PT Nusantara Retail Mandiri][2022\-12\-01]
Diberikan kepada manajer operasional dengan pencapaian KPI tertinggi dan kontribusi signifikan terhadap efisiensi biaya regional\.

#resume-subheading[Inisiatif Efisiensi Biaya][][PT Sentra Logistik Cepat][2019\-08\-01]
Mengakui keberhasilan program pengurangan biaya distribusi melalui optimasi rute dan negosiasi vendor\.
]

= Sertifikat
#resume-pad[
#resume-subheading[Sertifikasi Manajemen Rantai Pasok Profesional][#link("https://www.asosiasilogistik.id/sertifikasi")[https\:\/\/www\.asosiasilogistik\.id\/sertifikasi]][Asosiasi Logistik Indonesia][2020\-03\-01]

#resume-subheading[Lean Six Sigma Green Belt][#link("https://www.lpn.go.id/lean-six-sigma")[https\:\/\/www\.lpn\.go\.id\/lean\-six\-sigma]][Lembaga Produktivitas Nasional][2021\-11\-01]

#resume-subheading[Ahli K3 Umum][#link("https://www.kemnaker.go.id")[https\:\/\/www\.kemnaker\.go\.id]][Kementerian Ketenagakerjaan RI][2018\-02\-01]
]

= Publikasi
#resume-pad[
#resume-subheading[Optimalisasi Persediaan dengan Analisis ABC dan Forecast Permintaan][#link("https://www.majalahlogistik.id/artikel/optimalisasi-persediaan")[https\:\/\/www\.majalahlogistik\.id\/artikel\/optimalisasi\-persediaan]][Majalah Logistik Indonesia][2023\-04\-01]
- Membahas pendekatan praktis untuk mengklasifikasikan persediaan berdasarkan nilai dan tingkat perputaran\.
- Menjelaskan integrasi forecast permintaan dengan analisis ABC untuk mengurangi biaya penyimpanan\.
- Studi kasus pada jaringan ritel regional dengan lebih dari 500 SKU\.
]

= Referensi
#resume-pad[
#resume-subheading[Dewi Lestari][Atasan Langsung di PT Nusantara Retail Mandiri][dewi\.lestari\@nusantararetail\.co\.id][\+62 811 2233 4455]
Rizky adalah manajer operasional yang berorientasi pada hasil dan mampu memimpin tim besar dengan jelas\. Ia konsisten dalam mencapai target dan membangun proses yang lebih efisien\.

#resume-subheading[Budi Santoso][Mantan Atasan di PT Sentra Logistik Cepat][budi\.santoso\@sentralogistik\.co\.id][\+62 813 9988 7766]
Selama bekerja bersama, Rizky menunjukkan kemampuan analitis yang kuat dan komitmen tinggi terhadap perbaikan berkelanjutan\. Ia layak dipercaya untuk peran kepemimpinan operasional\.
]

= Proyek
#resume-pad[
#resume-subheading[Transformasi Digital Operasional Gudang][#link("https://www.nusantararetail.co.id/proyek/digital-gudang")[https\:\/\/www\.nusantararetail\.co\.id\/proyek\/digital\-gudang]][Implementasi sistem WMS dan otomasi pelaporan KPI di 12 gudang regional\.][2022\-01\-01–2023\-11\-01]
- Memimpin implementasi WMS untuk meningkatkan akurasi stok dan visibilitas persediaan\.
- Mengotomasi pelaporan KPI harian sehingga waktu pelaporan berkurang dari 4 jam menjadi 30 menit\.
- Melatih 80 staf gudang dan supervisor dalam penggunaan sistem baru\.
#strong[Kata Kunci]: WMS, Otomasi, KPI, Manajemen Perubahan

#resume-subheading[Program Pengurangan Biaya Logistik][#link("https://www.sentralogistik.co.id/program/efisiensi-biaya")[https\:\/\/www\.sentralogistik\.co\.id\/program\/efisiensi\-biaya]][Inisiatif lintas fungsi untuk menurunkan biaya distribusi tanpa mengurangi kualitas layanan\.][2019\-03\-01–2020\-12\-01]
- Menganalisis data pengiriman dan mengidentifikasi peluang konsolidasi rute\.
- Bernegosiasi dengan vendor transportasi untuk mendapatkan tarif yang lebih kompetitif\.
- Mencapai penghematan biaya logistik sebesar 12% dalam 18 bulan\.
#strong[Kata Kunci]: Efisiensi Biaya, Rute Distribusi, Negosiasi, Analisis Data
]

= Minat
#resume-pad[
#strong[Olahraga]: Lari, Bersepeda, Bulu Tangkis

#strong[Pengembangan Diri]: Membaca, Public Speaking, Mentoring
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Koordinator Relawan Distribusi Bantuan][#link("https://www.pedulilogistik.org")[https\:\/\/www\.pedulilogistik\.org]][Yayasan Peduli Logistik Indonesia][2020\-01\-01–2023\-12\-01]
- Mengoordinasikan distribusi bantuan logistik ke daerah terdampak bencana di Jawa Barat\.
- Mengelola 30 relawan dan berkoordinasi dengan pemerintah daerah serta mitra donor\.
- Menyusun prosedur penerimaan, penyimpanan, dan penyaluran barang agar transparan dan akuntabel\.
]