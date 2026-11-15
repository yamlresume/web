#set document(
  title: "Aditya Pratama - Account Executive Senior | Spesialis Solusi SaaS B2B",
  author: "Aditya Pratama",
  keywords: "Penjualan Enterprise, CRM & Tools, Presentasi & Komunikasi, Bahasa",
  description: "Résumé of Aditya Pratama",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Aditya Pratama]] #v(-0.2em)

#text(size: 1.44em)[Account Executive Senior | Spesialis Solusi SaaS B2B]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812-3456-7890")[\+62 812\-3456\-7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:aditya.pratama@email.com")[aditya\.pratama\@email\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.adityapratama.id")[https\:\/\/www\.adityapratama\.id]

Jl\. Jenderal Sudirman No\. 52, Jakarta, DKI Jakarta, Indonesia, 12190

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/adityapratama")[adityapratama] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M380.9 97.1c-41.9-42-97.7-65.1-157-65.1-122.4 0-222 99.6-222 222 0 39.1 10.2 77.3 29.6 111L0 480 117.7 449.1c32.4 17.7 68.9 27 106.1 27l.1 0c122.3 0 224.1-99.6 224.1-222 0-59.3-25.2-115-67.1-157zm-157 341.6c-33.2 0-65.7-8.9-94-25.7l-6.7-4-69.8 18.3 18.6-68.1-4.4-7c-18.5-29.4-28.2-63.3-28.2-98.2 0-101.7 82.8-184.5 184.6-184.5 49.3 0 95.6 19.2 130.4 54.1s56.2 81.2 56.1 130.5c0 101.8-84.9 184.6-186.6 184.6zM325.1 300.5c-5.5-2.8-32.8-16.2-37.9-18-5.1-1.9-8.8-2.8-12.5 2.8s-14.3 18-17.6 21.8c-3.2 3.7-6.5 4.2-12 1.4-32.6-16.3-54-29.1-75.5-66-5.7-9.8 5.7-9.1 16.3-30.3 1.8-3.7 .9-6.9-.5-9.7s-12.5-30.1-17.1-41.2c-4.5-10.8-9.1-9.3-12.5-9.5-3.2-.2-6.9-.2-10.6-.2s-9.7 1.4-14.8 6.9c-5.1 5.6-19.4 19-19.4 46.3s19.9 53.7 22.6 57.4c2.8 3.7 39.1 59.7 94.8 83.8 35.2 15.2 49 16.5 66.6 13.9 10.7-1.6 32.8-13.4 37.4-26.4s4.6-24.1 3.2-26.4c-1.3-2.5-5-3.9-10.5-6.6z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://wa.me/6281234567890")[adityapratama]
]

= Informasi Dasar

#resume-pad[
Account Executive dengan pengalaman 7\+ tahun di industri SaaS B2B dan teknologi enterprise\. Terbukti secara konsisten mencapai 120% kuota tahunan melalui konsultatif selling, manajemen pipeline, dan negosiasi kontrak bernilai tinggi\.

- Mengelola siklus penjualan end\-to\-end dari prospek hingga closing untuk klien enterprise di Indonesia dan Asia Tenggara\.
- Kuat dalam membangun hubungan C\-level, memahami kebutuhan bisnis, dan menerjemahkan solusi teknis menjadi nilai bisnis\.
- Berpengalaman dengan Salesforce, HubSpot, MEDDIC, dan metodologi Challenger Sale\.
- Memimpin tim lintas fungsi untuk memastikan onboarding dan retensi klien berjalan lancar\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Universitas Indonesia][#link("https://www.ui.ac.id")[https\:\/\/www\.ui\.ac\.id]][Sarjana, Ilmu Administrasi Niaga, Nilai: 3\.65][Sep 2012–Jul 2016]
- Lulus dengan predikat cum laude dan fokus pada strategi penjualan enterprise\.
- Aktif di organisasi kemahasiswaan sebagai ketua divisi hubungan perusahaan\.
- Meraih juara 2 kompetisi business case tingkat nasional\.
#strong[Mata Kuliah]: Manajemen Pemasaran, Perilaku Konsumen, Negosiasi Bisnis, Manajemen Penjualan, Analisis Laporan Keuangan, Strategi Bisnis
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Senior Account Executive][#link("https://www.solusinusa.co.id")[https\:\/\/www\.solusinusa\.co\.id]][SolusiNusa Teknologi][Jan 2021–Sekarang]
- Memimpin penjualan solusi cloud ERP untuk klien enterprise, dengan nilai kontrak tahunan rata\-rata Rp2 miliar\.
- Mencapai 128% kuota pada 2023 dan 115% pada 2022 melalui pipeline yang sehat dan disiplin CRM\.
- Membangun hubungan strategis dengan CIO, CFO, dan COO untuk memahami prioritas transformasi digital\.
- Berkolaborasi dengan tim product, legal, dan customer success untuk mempercepat siklus closing dan retensi\.
- Melatih 4 Account Executive junior dalam prospecting, discovery, dan presentasi solusi\.
#strong[Kata Kunci]: Cloud ERP, Enterprise Sales, Negosiasi, Pipeline, MEDDIC

#resume-subheading[Account Executive][#link("https://www.teknologicerdas.co.id")[https\:\/\/www\.teknologicerdas\.co\.id]][Teknologi Cerdas Asia][Mar 2018–Des 2020]
- Mengelola portofolio 40\+ klien UMKM dan mid\-market untuk solusi CRM dan otomasi pemasaran\.
- Mencapai 110% kuota tahunan dan meraih penghargaan Top Sales Q3 2019\.
- Melakukan demo produk, trial, dan negosiasi harga untuk meningkatkan konversi dari 18% menjadi 27%\.
- Menjaga akurasi forecast melalui pembaruan Salesforce dan HubSpot secara mingguan\.
#strong[Kata Kunci]: CRM, SaaS, Prospecting, Demo, Forecast

#resume-subheading[Sales Representative][#link("https://www.majubersama.co.id")[https\:\/\/www\.majubersama\.co\.id]][PT Maju Bersama Distribusi][Agu 2016–Feb 2018]
- Bertanggung jawab atas penjualan produk consumer goods di wilayah Jabodetabek\.
- Menambah 25 toko ritel baru dan meningkatkan pendapatan wilayah sebesar 32% YoY\.
- Membina hubungan dengan pemilik toko dan distributor untuk memastikan ketersediaan stok\.
#strong[Kata Kunci]: FMCG, Ritel, Distribusi, Penjualan
]

= Bahasa
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Indonesia]: Bahasa Ibu / Bilingual], [#strong[Kata Kunci]: Bahasa Ibu])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: TOEFL 110, IELTS 8\.0])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Penjualan Enterprise]: Ahli], [#strong[Kata Kunci]: Konsultatif Selling, Negosiasi Kontrak, Manajemen Pipeline, Forecast])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CRM & Tools]: Mahir], [#strong[Kata Kunci]: Salesforce, HubSpot, LinkedIn Sales Nav, ZoomInfo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Presentasi & Komunikasi]: Ahli], [#strong[Kata Kunci]: Demo Produk, Storytelling, Public Speaking, Proposal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Bahasa]: Mahir], [#strong[Kata Kunci]: Inggris Bisnis, Indonesia])
]

= Penghargaan
#resume-pad[
#resume-subheading[Top Sales Enterprise 2023][][SolusiNusa Teknologi][Des 2023]
Diberikan kepada Account Executive dengan pencapaian kuota tertinggi dan kontribusi pendapatan terbesar di segmen enterprise\.

#resume-subheading[Best Account Executive Q3 2019][][Teknologi Cerdas Asia][Sep 2019]
Penghargaan atas pencapaian 135% kuota kuartal dan retensi klien 98%\.
]

= Sertifikat
#resume-pad[
#resume-subheading[Certified Sales Professional][#link("https://www.salesassociation.id/certification")[https\:\/\/www\.salesassociation\.id\/certification]][Indonesian Sales Association][Mei 2021]

#resume-subheading[HubSpot Sales Software Certified][#link("https://academy.hubspot.com/certification")[https\:\/\/academy\.hubspot\.com\/certification]][HubSpot][Feb 2022]
]

= Publikasi
#resume-pad[
#resume-subheading[Strategi Consultative Selling untuk Pasar Enterprise Indonesia][#link("https://www.bisnisdigital.id/artikel/consultative-selling-enterprise")[https\:\/\/www\.bisnisdigital\.id\/artikel\/consultative\-selling\-enterprise]][Majalah Bisnis Digital][Apr 2023]
- Membahas pentingnya discovery mendalam dan pemetaan stakeholder dalam penjualan enterprise\.
- Memberikan kerangka praktis untuk meningkatkan win rate di pasar B2B Indonesia\.
]

= Proyek
#resume-pad[
#resume-subheading[Program Akselerasi Onboarding Klien Enterprise][#link("https://www.solusinusa.co.id/program-onboarding")[https\:\/\/www\.solusinusa\.co\.id\/program\-onboarding]][Program kolaboratif untuk mempercepat waktu onboarding klien enterprise dari 90 hari menjadi 45 hari\.][Jan 2023–Jun 2023]
- Memimpin inisiatif lintas fungsi antara sales, product, dan customer success\.
- Menganalisis hambatan proses dan merancang playbook onboarding baru\.
- Hasil\: waktu onboarding turun 50% dan skor kepuasan klien naik menjadi 4\.8\/5\.
#strong[Kata Kunci]: Onboarding, Customer Success, Playbook, Enterprise
]

= Minat
#resume-pad[
#strong[Olahraga]: Lari, Sepak Bola, Bersepeda

#strong[Musik]: Gitar, Konser

#strong[Membaca]: Buku Bisnis, Biografi
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Mentor Penjualan UMKM][#link("https://www.literasidigital.id")[https\:\/\/www\.literasidigital\.id]][Yayasan Literasi Digital Indonesia][Mar 2020–Des 2022]
- Melatih 50\+ pelaku UMKM dalam teknik penjualan digital dan negosiasi\.
- Mengembangkan modul pelatihan dasar CRM dan pemasaran media sosial\.
- Membantu peserta meningkatkan penjualan online rata\-rata 40% dalam 6 bulan\.
]