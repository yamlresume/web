#set document(
  title: "Dewi Anggraini - Manajer Pemasaran dengan pengalaman 8+ tahun dalam strategi digital dan manajemen merek.",
  author: "Dewi Anggraini",
  keywords: "Pemasaran Digital, Manajemen Merek, Analitik & Riset, Kepemimpinan",
  description: "Résumé of Dewi Anggraini",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Dewi Anggraini]] #v(-0.2em)

#text(size: 1.44em)[Manajer Pemasaran dengan pengalaman 8\+ tahun dalam strategi digital dan manajemen merek\.]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812-3456-7890")[\+62 812\-3456\-7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:dewi.anggraini@email.com")[dewi\.anggraini\@email\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.dewianggraini.com")[https\:\/\/www\.dewianggraini\.com]

Jl\. Jenderal Sudirman No\. 45, SCBD, Jakarta, DKI Jakarta, Indonesia, 12190

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/dewianggraini")[dewianggraini] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/dewianggraini")[dewianggraini] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M224.3 141a115 115 0 1 0 -.6 230 115 115 0 1 0 .6-230zm-.6 40.4a74.6 74.6 0 1 1 .6 149.2 74.6 74.6 0 1 1 -.6-149.2zm93.4-45.1a26.8 26.8 0 1 1 53.6 0 26.8 26.8 0 1 1 -53.6 0zm129.7 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM399 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.instagram.com/dewianggraini")[dewianggraini]
]

= Informasi Dasar

#resume-pad[
- Manajer Pemasaran dengan pengalaman lebih dari 8 tahun di industri ritel dan teknologi, terbukti meningkatkan pendapatan melalui strategi omni\-channel\.
- Ahli dalam pemasaran digital, riset pasar, dan manajemen merek; memimpin tim lintas fungsi untuk kampanye yang berdampak\.
- Terbiasa bekerja dengan data untuk mengoptimalkan ROI, serta membangun hubungan kuat dengan mitra dan pelanggan\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Universitas Indonesia][#link("https://www.ui.ac.id")[https\:\/\/www\.ui\.ac\.id]][Sarjana, Ilmu Komunikasi, Nilai: 3\.75][Sep 2010–Jul 2014]
- Lulus dengan predikat cum laude, aktif dalam organisasi kemahasiswaan dan kompetisi pemasaran\.
- Mengembangkan keterampilan analitis dan kreatif melalui proyek kampanye sosial dan bisnis\.
- Menjadi asisten dosen untuk mata kuliah Riset Pemasaran selama satu semester\.
#strong[Mata Kuliah]: Manajemen Pemasaran, Perilaku Konsumen, Riset Pemasaran, Komunikasi Massa, Public Relations, Strategi Branding, Periklanan, Statistik Sosial
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Manajer Pemasaran][#link("https://www.majubersama.co.id")[https\:\/\/www\.majubersama\.co\.id]][PT Maju Bersama][Jan 2020–Sekarang]
- Memimpin tim pemasaran 12 orang, mengelola anggaran tahunan Rp15 miliar, dan meningkatkan pendapatan 35% YoY\.
- Merancang dan mengeksekusi strategi omni\-channel (digital, offline, CRM) yang meningkatkan akuisisi pelanggan 40%\.
- Mengembangkan kampanye brand awareness yang meraih 3 penghargaan industri dan meningkatkan brand recall 25%\.
- Menganalisis data pasar dan kompetitor untuk mengidentifikasi peluang baru serta mengoptimalkan bauran pemasaran\.
- Membangun kemitraan strategis dengan influencer dan media, menghasilkan liputan senilai Rp2 miliar\.
#strong[Kata Kunci]: Strategi Pemasaran, Omni\-channel, Manajemen Anggaran, Brand Awareness, CRM, Analitik Pemasaran, Kepemimpinan Tim

#resume-subheading[Asisten Manajer Pemasaran][#link("https://www.kreatifdigital.com")[https\:\/\/www\.kreatifdigital\.com]][PT Kreatif Digital][Mar 2016–Des 2019]
- Mengelola kampanye digital untuk 20\+ klien, dengan rata\-rata peningkatan ROI 150%\.
- Mengoptimalkan SEO\/SEM dan media sosial, meningkatkan traffic organik 200% dalam 18 bulan\.
- Menyusun laporan kinerja bulanan dan memberikan rekomendasi berbasis data kepada manajemen\.
- Berkolaborasi dengan tim kreatif dan teknologi untuk meluncurkan situs web dan aplikasi mobile\.
#strong[Kata Kunci]: Digital Marketing, SEO, SEM, Media Sosial, Google Analytics, Content Marketing, ROI
]

= Bahasa
#resume-pad[
#strong[Indonesia]: Bahasa Ibu / Bilingual

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: TOEFL 110, IELTS 8\.0])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Pemasaran Digital]: Ahli], [#strong[Kata Kunci]: SEO\/SEM, Media Sosial, Email Marketing, Content Strategy, Google Ads, Meta Ads, Analytics])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Manajemen Merek]: Mahir], [#strong[Kata Kunci]: Brand Strategy, Positioning, Consumer Insight, Kampanye Integratif, Public Relations])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analitik & Riset]: Mahir], [#strong[Kata Kunci]: Google Analytics, Tableau, SPSS, A\/B Testing, Riset Pasar, Segmentasi])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Kepemimpinan]: Ahli], [#strong[Kata Kunci]: Manajemen Tim, Mentoring, Presentasi, Negosiasi, Manajemen Proyek])
]

= Penghargaan
#resume-pad[
#resume-subheading[Marketer of the Year 2022][][Asosiasi Pemasaran Indonesia][Des 2022]
Diberikan kepada manajer pemasaran yang menunjukkan inovasi luar biasa dalam kampanye digital dan kontribusi signifikan terhadap pertumbuhan industri\.

#resume-subheading[Best Digital Campaign][][Digital Marketing Awards][Nov 2021]
Menghargai kampanye \#BanggaLokal yang berhasil meningkatkan keterlibatan pelanggan sebesar 300% dan penjualan 50% dalam 6 bulan\.
]

= Sertifikat
#resume-pad[
#resume-subheading[Google Digital Marketing & E\-commerce Professional Certificate][#link("https://www.coursera.org/professional-certificates/google-digital-marketing-ecommerce")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-digital\-marketing\-ecommerce]][Google][Mei 2022]

#resume-subheading[HubSpot Content Marketing Certification][#link("https://academy.hubspot.com/courses/content-marketing")[https\:\/\/academy\.hubspot\.com\/courses\/content\-marketing]][HubSpot Academy][Agu 2021]

#resume-subheading[Meta Certified Digital Marketing Associate][#link("https://www.facebook.com/business/learn/certification")[https\:\/\/www\.facebook\.com\/business\/learn\/certification]][Meta][Feb 2023]
]

= Publikasi
#resume-pad[
#resume-subheading[Tren Pemasaran Digital di Indonesia 2023\: Strategi Omni\-channel untuk UMKM][#link("https://www.jurnalpemasaran.id/artikel/tren-2023")[https\:\/\/www\.jurnalpemasaran\.id\/artikel\/tren\-2023]][Jurnal Pemasaran Indonesia][Jun 2023]
- Menganalisis adopsi strategi omni\-channel oleh UMKM di Indonesia\.
- Menyajikan studi kasus dari 50 bisnis yang berhasil meningkatkan pendapatan melalui integrasi digital dan offline\.
- Merekomendasikan kerangka kerja untuk pemasaran yang berkelanjutan dan berbasis data\.
]

= Proyek
#resume-pad[
#resume-subheading[Kampanye \#BanggaLokal][#link("https://www.banggalokal.id")[https\:\/\/www\.banggalokal\.id]][Kampanye pemasaran terintegrasi untuk mendorong konsumsi produk lokal\.][Jan 2022–Des 2022]
- Merancang dan memimpin kampanye multi\-channel yang melibatkan 100\+ influencer dan 50 media nasional\.
- Meningkatkan penjualan produk lokal sebesar 50% dan engagement media sosial 300%\.
- Meraih penghargaan Best Digital Campaign 2021 dan menjadi studi kasus di universitas\.
#strong[Kata Kunci]: Kampanye Integratif, Influencer Marketing, Media Sosial, Brand Lokal

#resume-subheading[Peluncuran Aplikasi Mobile BelanjaMudah][#link("https://www.belanjamudah.id")[https\:\/\/www\.belanjamudah\.id]][Peluncuran aplikasi belanja online untuk pasar Indonesia\.][Mar 2021–Sep 2021]
- Mengoordinasikan tim pemasaran, produk, dan teknologi untuk peluncuran aplikasi\.
- Mencapai 100\.000 unduhan dalam 3 bulan pertama melalui strategi user acquisition\.
- Mengelola anggaran peluncuran Rp5 miliar dengan ROI 200%\.
#strong[Kata Kunci]: Product Launch, User Acquisition, Mobile Marketing, ROI
]

= Minat
#resume-pad[
#strong[Fotografi]: Street Photography, Portrait, Landscape

#strong[Membaca]: Buku Bisnis, Fiksi, Sejarah

#strong[Olahraga]: Yoga, Berlari, Bersepeda
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Relawan Pemasaran][#link("https://www.ypai.org")[https\:\/\/www\.ypai\.org]][Yayasan Pendidikan Anak Indonesia][Feb 2019–Des 2021]
- Membantu mengembangkan strategi pemasaran digital untuk meningkatkan donasi dan kesadaran publik\.
- Mengelola kampanye media sosial yang berhasil mengumpulkan dana Rp500 juta untuk beasiswa anak kurang mampu\.
- Melatih staf yayasan dalam penggunaan alat digital untuk komunikasi dan penggalangan dana\.

#resume-subheading[Koordinator Acara][#link("https://www.marketingjakarta.org")[https\:\/\/www\.marketingjakarta\.org]][Komunitas Pemasaran Jakarta][Jan 2018–Jan 2020]
- Mengorganisir seminar dan workshop bulanan untuk 200\+ profesional pemasaran\.
- Menghubungkan pembicara ahli dan sponsor untuk mendukung pengembangan karier anggota\.
]