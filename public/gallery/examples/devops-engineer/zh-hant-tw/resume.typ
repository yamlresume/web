#set document(
  title: "林彥廷 - 資深 DevOps 工程師 | 雲端平台與自動化維運專家",
  author: "林彥廷",
  keywords: "雲端平台, CI/CD 與自動化, 監控與可觀測性, 程式語言與腳本, 容器與網路, 資料庫與訊息佇列",
  description: "Résumé of 林彥廷",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine", "Noto Serif CJK SC", "Noto Sans CJK SC", "Songti SC", "SimSun", "PingFang SC", "Microsoft YaHei"),
  size: 10pt,
  lang: "en", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林彥廷]] #v(-0.2em)

#text(size: 1.44em)[資深 DevOps 工程師 | 雲端平台與自動化維運專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yenting.lin@example.com")[yenting\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.yentinglin.dev")[https\:\/\/www\.yentinglin\.dev]

台北市大安區和平東路二段 100 號 8 樓, 台北市, 台北市, Taiwan, 106

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yentinglin")[yentinglin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yentinglin")[yentinglin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/1234567/yenting-lin")[yenting\-lin]
]

= Basics

#resume-pad[
資深 DevOps 工程師，擁有 8 年以上雲端平台、自動化維運與可靠性工程經驗。專精於 Kubernetes、Terraform、CI\/CD 與可觀測性建置，並擅長推動 DevSecOps 文化與跨團隊協作。

- 主導多叢集 Kubernetes 平台與 GitOps 流程，支援每日數百次部署，將部署成功率提升至 99\.9%
- 以基礎架構即程式碼（IaC）管理 AWS、GCP 與混合雲環境，降低 40% 人為操作失誤
- 建立 SRE 監控與告警體系，將平均修復時間（MTTR）縮短 55%
- 具備良好的溝通與文件撰寫能力，樂於分享知識並培育初階工程師
]

= Education
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw/")[https\:\/\/www\.ntu\.edu\.tw\/]][Master, 資訊工程學系, Score: 4\.1][Sep 2014–Jun 2016]
- 專注於分散式系統與雲端運算，論文主題為「基於容器編排之自動擴展機制」
- 擔任計算機網路助教，協助課程設計與學生實作指導
- 參與開源社群，累積 Kubernetes 與自動化維運實務經驗
#strong[Courses]: 分散式系統, 雲端運算, 作業系統, 計算機網路, 資料庫系統, 資訊安全, 軟體工程

#resume-subheading[國立成功大學][#link("https://www.ncku.edu.tw/")[https\:\/\/www\.ncku\.edu\.tw\/]][Bachelor, 資訊工程學系, Score: 3\.9][Sep 2010–Jun 2014]
- 奠定程式設計、演算法與系統基礎
- 參與校內資訊服務隊，協助維護校園網路與伺服器
#strong[Courses]: 資料結構, 演算法, 作業系統, 計算機組織, 資料庫系統, 計算機網路
]

= Work
#resume-pad[
#resume-subheading[資深 DevOps 工程師][#link("https://www.twcloudtech.com")[https\:\/\/www\.twcloudtech\.com]][台灣雲端科技股份有限公司][Mar 2021–Present]
- 主導跨 AWS 與 GCP 的多叢集 Kubernetes 平台建置，服務超過 200 個微服務
- 導入 GitOps（Argo CD）與漸進式交付（Argo Rollouts），部署頻率提升 3 倍
- 以 Terraform 與 Terragrunt 管理 500\+ 雲端資源，實現 100% 基礎架構即程式碼
- 建立 Prometheus、Grafana 與 Loki 可觀測性堆疊，將 MTTR 從 45 分鐘降至 20 分鐘
- 推動 DevSecOps，整合 Trivy、SonarQube 與 OPA 至 CI\/CD 流程，降低 60% 安全風險
- 指導 5 位初階工程師，建立內部技術文件與 on\-call 培訓制度
#strong[Keywords]: Kubernetes, Terraform, GitOps, Argo CD, SRE, AWS, GCP, DevSecOps

#resume-subheading[DevOps 工程師][#link("https://www.smartlink-info.com.tw")[https\:\/\/www\.smartlink\-info\.com\.tw]][智聯資訊服務有限公司][Jul 2018–Feb 2021]
- 建置與維護 Jenkins、GitLab CI 流水線，支援 50\+ 專案自動化測試與部署
- 使用 Docker 與 Helm 將傳統應用容器化，部署時間縮短 70%
- 管理 AWS EC2、RDS、S3 與 CloudFront，設計高可用與備援架構
- 導入 Ansible 進行組態管理，標準化 300\+ 台伺服器設定
- 建立 ELK 日誌分析平台，協助開發團隊快速定位線上問題
#strong[Keywords]: Jenkins, GitLab CI, Docker, Helm, Ansible, AWS, ELK

#resume-subheading[系統維運工程師][#link("https://www.hongyuan-soft.com")[https\:\/\/www\.hongyuan\-soft\.com]][宏遠軟體開發股份有限公司][Aug 2016–Jun 2018]
- 負責 Linux 伺服器維運、效能調校與故障排除，維持 99\.95% 服務可用性
- 撰寫 Shell 與 Python 自動化腳本，減少 50% 例行維運工時
- 參與機房搬遷與網路架構優化，確保核心系統零中斷
- 建置 Nagios 與 Cacti 監控，提前發現潛在容量與效能問題
#strong[Keywords]: Linux, Shell, Python, Nagios, 效能調校, 網路維運
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Chinese]: Native or Bilingual Proficiency], [#strong[Keywords]: 母語, 技術文件撰寫])

#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Full Professional Proficiency], [#strong[Keywords]: TOEIC 950, 跨])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端平台]: Expert], [#strong[Keywords]: AWS, GCP, Azure, Kubernetes, Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CI\/CD 與自動化]: Advanced], [#strong[Keywords]: Jenkins, GitLab CI, Argo CD, Ansible, Helm])

#grid(columns: (1fr, auto), align: (left, right), [#strong[監控與可觀測性]: Advanced], [#strong[Keywords]: Prometheus, Grafana, Loki, ELK, Datadog])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式語言與腳本]: Advanced], [#strong[Keywords]: Python, Go, Bash, SQL, YAML])

#grid(columns: (1fr, auto), align: (left, right), [#strong[容器與網路]: Expert], [#strong[Keywords]: Docker, Kubernetes, Istio, Cilium, Envoy])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料庫與訊息佇列]: Intermediate], [#strong[Keywords]: PostgreSQL, MySQL, Redis, Kafka, RabbitMQ])
]