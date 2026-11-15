#set document(
  title: "Raka Aditya Pratama - Cybersecurity Engineer | Spesialis Keamanan Jaringan dan Cloud",
  author: "Raka Aditya Pratama",
  keywords: "Keamanan Jaringan, Pengujian Penetrasi, Keamanan Cloud, Incident Response, Tata Kelola dan Kepatuhan",
  description: "Résumé of Raka Aditya Pratama",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Raka Aditya Pratama]] #v(-0.2em)

#text(size: 1.44em)[Cybersecurity Engineer | Spesialis Keamanan Jaringan dan Cloud]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+62 812-3456-7890")[\+62 812\-3456\-7890] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:raka.pratama@cybermail.id")[raka\.pratama\@cybermail\.id] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.rakaaditya.id")[https\:\/\/www\.rakaaditya\.id]

Jl\. Cikini Raya No\. 45, Jakarta Pusat, DKI Jakarta, Indonesia, 10330

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/rakaadityapratama")[rakaadityapratama] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/rakaaditya")[rakaaditya]
]

= Informasi Dasar

#resume-pad[
Cybersecurity Engineer dengan pengalaman lebih dari 6 tahun dalam merancang, mengoperasikan, dan meningkatkan kontrol keamanan untuk lingkungan enterprise, cloud, dan aplikasi web\. Terampil dalam threat hunting, incident response, pengujian penetrasi, serta hardening infrastruktur dan identitas\.

Fokus pada pengurangan risiko siber secara terukur melalui otomasi, kolaborasi lintas tim, dan kepatuhan terhadap standar ISO 27001, NIST CSF, dan PCI DSS\. Berpengalaman memimpin investigasi insiden, membangun runbook respons, dan melatih tim internal dalam praktik keamanan yang aman\.
]

= Pendidikan
#resume-pad[
#resume-subheading[Universitas Indonesia][#link("https://www.ui.ac.id")[https\:\/\/www\.ui\.ac\.id]][Sarjana, Ilmu Komputer, Nilai: 3\.72][2013\-08\-01–2017\-07\-31]
- Menguasai dasar\-dasar keamanan informasi, kriptografi, dan forensik digital melalui perkuliahan dan proyek laboratorium\.
- Mengembangkan aplikasi berbasis web dan melakukan analisis kerentanan dasar sebagai bagian dari tugas akhir\.
- Aktif dalam kelompok studi keamanan siber kampus dan membantu penyelenggaraan workshop Capture The Flag\.
#strong[Mata Kuliah]: Keamanan Informasi, Jaringan Komputer, Kriptografi, Sistem Operasi, Basis Data, Pemrograman Lanjut, Forensik Digital, Arsitektur Perangkat Lunak
]

= Pengalaman Kerja
#resume-pad[
#resume-subheading[Senior Cybersecurity Engineer][#link("https://www.nusantaracyber.co.id")[https\:\/\/www\.nusantaracyber\.co\.id]][PT Nusantara Cyber Solutions][2022\-03\-01–Sekarang]
- Memimpin tim blue team dalam pemantauan keamanan 24\/7, threat hunting, dan investigasi insiden untuk klien enterprise di sektor keuangan dan energi\.
- Merancang dan mengimplementasikan otomasi incident response berbasis SOAR yang memangkas waktu triase alert hingga 40%\.
- Melakukan pengujian penetrasi aplikasi web, API, dan infrastruktur cloud serta menyusun rekomendasi remediasi yang dapat ditindaklanjuti\.
- Mengembangkan runbook, playbook, dan matriks eskalasi insiden yang selaras dengan NIST CSF dan ISO 27001\.
- Melatih analis junior dan tim TI klien mengenai praktik secure configuration, phishing awareness, dan manajemen kerentanan\.
#strong[Kata Kunci]: Incident Response, Threat Hunting, SIEM, ISO 27001

#resume-subheading[Cybersecurity Engineer][#link("https://www.bankdigitalsentosa.co.id")[https\:\/\/www\.bankdigitalsentosa\.co\.id]][PT Bank Digital Sentosa][2019\-06\-01–2022\-02\-28]
- Mengelola dan menyempurnakan aturan deteksi pada SIEM, mendukung monitoring transaksi digital dan aktivitas pengguna berisiko\.
- Melakukan vulnerability assessment dan penetration testing pada aplikasi mobile banking, portal web, dan layanan API\.
- Berkontribusi dalam program kepatuhan PCI DSS dan ISO 27001, termasuk pengumpulan bukti audit dan remediasi temuan\.
- Mengimplementasikan network segmentation, hardening server, dan kontrol akses berbasis prinsip least privilege\.
- Bekerja sama dengan tim fraud dan risiko untuk mendeteksi serta merespons indikasi penipuan siber secara cepat\.
#strong[Kata Kunci]: PCI DSS, Vulnerability Assessment, Network Security, Mobile Security

#resume-subheading[Security Operations Analyst][#link("https://www.teknologiaman.id")[https\:\/\/www\.teknologiaman\.id]][PT Teknologi Aman Indonesia][2017\-08\-01–2019\-05\-31]
- Memantau alert keamanan dari SIEM, firewall, IDS\/IPS, dan endpoint protection untuk mendeteksi aktivitas mencurigakan\.
- Melakukan triase, klasifikasi, dan eskalasi insiden sesuai SLA serta mendokumentasikan temuan dalam tiket investigasi\.
- Membantu analisis malware dasar, pengumpulan bukti digital, dan penyusunan laporan insiden mingguan\.
- Mengotomatisasi tugas pengumpulan log dan enrichment IOC menggunakan skrip Python dan API keamanan\.
- Mendukung penyusunan prosedur operasional keamanan dan knowledge base untuk tim SOC\.
#strong[Kata Kunci]: SOC, IDS\/IPS, Malware Analysis, Python
]

= Bahasa
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Indonesia]: Bahasa Ibu / Bilingual], [#strong[Kata Kunci]: Bahasa ibu])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inggris]: Tingkat Profesional Penuh], [#strong[Kata Kunci]: TOEFL iBT 105, IELTS 7\.5])
]

= Keahlian
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Keamanan Jaringan]: Ahli], [#strong[Kata Kunci]: Firewall, IDS\/IPS, VPN, Network Segmentation, Zero Trust])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Pengujian Penetrasi]: Mahir], [#strong[Kata Kunci]: Burp Suite, Metasploit, Nmap, OWASP Top 10, Kali Linux])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Keamanan Cloud]: Mahir], [#strong[Kata Kunci]: AWS Security Hub, IAM, Azure Defender, CSPM, Kubernetes Security])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Incident Response]: Ahli], [#strong[Kata Kunci]: SIEM, SOAR, Threat Hunting, Digital Forensics, Malware Analysis])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tata Kelola dan Kepatuhan]: Mahir], [#strong[Kata Kunci]: ISO 27001, PCI DSS, NIST CSF, Risk Assessment, Audit])
]

= Penghargaan
#resume-pad[
#resume-subheading[Penghargaan Inovasi Keamanan Terbaik][][PT Nusantara Cyber Solutions][Nov 2023]
Diberikan atas perancangan platform otomasi incident response yang mengurangi waktu deteksi dan respons insiden sebesar 40%\.
]

= Sertifikat
#resume-pad[
#resume-subheading[Certified Information Systems Security Professional (CISSP)][#link("https://www.isc2.org/certifications/cissp")[https\:\/\/www\.isc2\.org\/certifications\/cissp]][ISC2][Jun 2023]

#resume-subheading[Offensive Security Certified Professional (OSCP)][#link("https://www.offsec.com/certifications/oscp/")[https\:\/\/www\.offsec\.com\/certifications\/oscp\/]][Offensive Security][Sep 2021]

#resume-subheading[AWS Certified Security \- Specialty][#link("https://aws.amazon.com/certification/certified-security-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-security\-specialty\/]][Amazon Web Services][Mar 2022]
]

= Publikasi
#resume-pad[
#resume-subheading[Deteksi Anomali Jaringan Menggunakan Pembelajaran Mesin untuk Lingkungan Cloud][#link("https://jurnal.keamanansiber.id/volume-7/no-1/deteksi-anomali-jaringan")[https\:\/\/jurnal\.keamanansiber\.id\/volume\-7\/no\-1\/deteksi\-anomali\-jaringan]][Jurnal Keamanan Siber Indonesia][Mar 2023]
- Membahas pendekatan deteksi anomali berbasis pembelajaran mesin untuk memantau lalu lintas jaringan cloud\.
- Mengevaluasi performa model terhadap dataset lalu lintas normal dan serangan yang disimulasikan\.
- Memberikan rekomendasi implementasi untuk tim keamanan yang mengelola lingkungan hybrid cloud\.
]

= Referensi
#resume-pad[
#resume-subheading[Dr\. Intan Prameswari][Dosen Keamanan Informasi, Universitas Indonesia][intan\.prameswari\@ui\.ac\.id][\+62 811\-9876\-5432]
Raka menunjukkan kemampuan analisis keamanan yang kuat, etika kerja yang tinggi, dan kepemimpinan yang baik dalam proyek incident response\. Ia mampu menghubungkan temuan teknis dengan kebutuhan risiko bisnis secara jelas\.
]

= Proyek
#resume-pad[
#resume-subheading[Platform Otomasi Incident Response][#link("https://github.com/rakaaditya/ir-automation")[https\:\/\/github\.com\/rakaaditya\/ir\-automation]][Platform internal untuk mengotomatisasi triase, enrichment, dan eskalasi alert keamanan\.][2023\-01\-01–2023\-10\-31]
- Mengintegrasikan SIEM, threat intelligence, dan sistem tiket untuk mempercepat alur investigasi insiden\.
- Menyediakan playbook otomatis untuk phishing, malware, dan akses tidak sah\.
- Mengurangi waktu respons awal dari rata\-rata 25 menit menjadi 15 menit\.
#strong[Kata Kunci]: Otomasi, SOAR, Threat Intelligence, Python

#resume-subheading[Pemindaian Kerentanan Aplikasi Web][#link("https://github.com/rakaaditya/web-vuln-scanner")[https\:\/\/github\.com\/rakaaditya\/web\-vuln\-scanner]][Alat pemindaian kerentanan aplikasi web untuk mendeteksi konfigurasi tidak aman dan celah umum\.][2021\-04\-01–2021\-12\-31]
- Mengotomatisasi pemeriksaan header keamanan, cookie, dan konfigurasi TLS\.
- Mendeteksi indikasi kerentanan OWASP Top 10 melalui pengujian non\-destruktif\.
- Menghasilkan laporan temuan yang dapat diekspor untuk kebutuhan remediasi dan audit\.
#strong[Kata Kunci]: OWASP, Web Security, Python, Automation
]

= Minat
#resume-pad[
#strong[Keamanan Siber]: Capture The Flag, Riset Kerentanan, Threat Intelligence

#strong[Kegiatan Luar Ruang]: Mendaki, Bersepeda, Fotografi
]

= Kegiatan Sukarela
#resume-pad[
#resume-subheading[Mentor Keamanan Aplikasi][#link("https://www.keamanansiber.id/komunitas")[https\:\/\/www\.keamanansiber\.id\/komunitas]][Komunitas Keamanan Siber Indonesia][2020\-02\-01–Sekarang]
- Membimbing peserta workshop tentang secure coding, pengujian penetrasi web, dan manajemen kerentanan\.
- Membantu menyusun materi pelatihan praktis untuk pemula dan profesional TI\.
- Berperan sebagai juri dan fasilitator dalam kompetisi Capture The Flag tingkat nasional\.
]