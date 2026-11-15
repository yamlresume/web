#set document(
  title: "陳俊傑 - 軟件工程師 | 全端開發 | 雲端應用",
  author: "陳俊傑",
  keywords: "程式語言, 前端開發, 後端開發, 雲端與 DevOps, 數據庫",
  description: "Résumé of 陳俊傑",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine", "Noto Serif CJK HK", "Noto Sans CJK HK", "Noto Serif CJK TC", "Noto Sans CJK TC", "Songti TC", "PMingLiU", "PingFang HK", "PingFang TC", "Microsoft JhengHei"),
  size: 10pt,
  lang: "zh", region: "hk", number-type: "lining",
)

// paragraph spacing equals the leading, so consecutive paragraphs are stacked
// exactly like lines within one paragraph — parity with the LaTeX template's
// default \parskip of 0pt
#set par(
  leading: 0.57em,
  spacing: 0.57em,
)

// Keep Latin text and digits upright inside emphasis for CJK resumes.
// LaTeX's CJK setup maps the Latin italic face to the regular font, so
// dates, scores, and URLs stay upright instead of being slanted.
#show emph: it => {
  show regex("[A-Za-z0-9]"): it => text(style: "normal")[#it]
  text(style: "italic")[#it.body]
}

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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳俊傑]] #v(-0.2em)

#text(size: 1.44em)[軟件工程師 | 全端開發 | 雲端應用]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chun.kit.chan@example.com")[chun\.kit\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://ckchan.dev")[https\:\/\/ckchan\.dev]

中國香港，香港，香港

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/ckchan-dev")[ckchan\-dev] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/ckchan-dev")[ckchan\-dev]
]

= 簡介

#resume-pad[
具超過 5 年經驗的軟件工程師，專注於全端開發、微服務架構及雲端應用。擅長以 TypeScript、Python 及 Go 構建高效且可擴展的系統，並熱衷於透過最佳實踐及自動化測試提升軟件品質。

- 曾帶領團隊由單體架構遷移至微服務，提升系統可靠性和部署效率。
- 熟悉 AWS 及 Kubernetes，擁有大型分散式系統設計及維運經驗。
- 具備良好跨部門溝通與項目管理能力，能將業務需求轉化為實際技術方案。
]

= 教育背景
#resume-pad[
#resume-subheading[香港科技大學][#link("https://www.hkust.edu.hk")[https\:\/\/www\.hkust\.edu\.hk]][學士，計算機科學，成績：3\.6\/4\.0][2014\-09\-01–2018\-06\-30]
主修計算機科學，專注於軟件工程及系統設計。畢業項目為「基於區塊鏈的供應鏈追蹤系統」，獲得系內最佳畢業項目獎。
#strong[課程]：數據結構與算法、操作系統、數據庫系統、計算機網絡、軟件工程、分散式系統、編譯原理
]

= 工作經歷
#resume-pad[
#resume-subheading[高級軟件工程師][#link("https://www.startechhk.com")[https\:\/\/www\.startechhk\.com]][星辰科技（香港）有限公司][2022\-03\-01至今]
- 主導團隊為金融科技客戶設計及開發分散式交易系統，支援每日數百萬宗交易。
- 將單體應用遷移至 Kubernetes 微服務架構，部署時間由 45 分鐘縮短至 8 分鐘。
- 推行 CI\/CD 流程及基礎設施即程式碼（IaC），提升環境一致性及交付效率。
- 與產品經理及業務單位緊密合作，將複雜業務需求拆解為可執行的技術方案。
- 指導初級工程師進行代碼審查及系統設計，提升團隊整體工程文化。
#strong[關鍵字]：微服務、Kubernetes、系統設計、團隊管理、金融科技

#resume-subheading[軟件工程師][#link("https://www.blueocean-soft.com.hk")[https\:\/\/www\.blueocean\-soft\.com\.hk]][藍海軟件開發有限公司][2019\-07\-01–2022\-02\-28]
- 負責開發及維護 B2B 電子商貿平台的前端及後端功能，服務超過 500 家企業客戶。
- 使用 React、Node\.js 及 PostgreSQL 構建實時庫存管理系統，提升營運效率 30%。
- 設計並整合 RESTful API 至第三方物流及支付服務，簡化訂單處理流程。
- 參與 Scrum 團隊，進行衝刺規劃、代碼審查及單元測試，確保產品質素。
#strong[關鍵字]：React、Node\.js、PostgreSQL、RESTful API、Scrum
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：粵語（母語）、普通話（流利）、繁體中文寫作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：HKDSE 英文 5\*、IELTS 7\.5])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[程式語言]：專家], [#strong[關鍵字]：TypeScript、Python、Go、Java、C\#、SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[前端開發]：高級], [#strong[關鍵字]：React、Vue\.js、Next\.js、HTML5、CSS3、Tailwind CSS])

#grid(columns: (1fr, auto), align: (left, right), [#strong[後端開發]：專家], [#strong[關鍵字]：Node\.js、Express、Django、Gin、RESTful API、GraphQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端與 DevOps]：高級], [#strong[關鍵字]：AWS、Docker、Kubernetes、Terraform、CI\/CD、Prometheus、Grafana])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據庫]：高級], [#strong[關鍵字]：PostgreSQL、MySQL、MongoDB、Redis、Elasticsearch])
]

= 榮譽
#resume-pad[
#resume-subheading[院長嘉許名單][][香港科技大學][2016\-12\-01]
於 2016\-2017 學年因學業成績優異而獲列入院長嘉許名單。

#resume-subheading[最佳畢業項目獎][][香港科技大學][2018\-06\-01]
畢業項目「基於區塊鏈的供應鏈追蹤系統」獲評為年度最佳計算機科學畢業項目。
]

= 證書
#resume-pad[
#resume-subheading[AWS 解決方案架構師 – 助理級][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2021\-05\-01]

#resume-subheading[Certified Kubernetes Application Developer][#link("https://www.cncf.io/certification/ckad/")[https\:\/\/www\.cncf\.io\/certification\/ckad\/]][CNCF][2022\-08\-01]
]

= 出版刊物
#resume-pad[
#resume-subheading[以領域驅動設計提升微服務系統可維護性之研究][#link("https://example.com/publications/ddd-microservices")[https\:\/\/example\.com\/publications\/ddd\-microservices]][香港軟件工程協會期刊][2023\-10\-01]
探討如何運用領域驅動設計（DDD）於微服務劃分及業務邏輯建模，並以實際案例驗證其對系統可維護性、測試性及團隊協作效率的正面影響。
]

= 項目
#resume-pad[
#resume-subheading[即時協作文檔平台][#link("https://github.com/ckchan-dev/realtime-collab-doc")[https\:\/\/github\.com\/ckchan\-dev\/realtime\-collab\-doc]][一個支援多人實時協作編輯的文檔平台，採用 CRDT 演算法自動合併衝突。][2022\-06\-01–2022\-10\-31]
- 以 TypeScript、React 及 WebSocket 開發，支援離線編輯及自動同步。
- 使用 Yjs CRDT 演算法處理多端同時編輯的衝突，確保一致性。
- 加入操作歷史及版本回溯功能，提升協作效率與用戶體驗。
#strong[關鍵字]：React、TypeScript、WebSocket、CRDT、Yjs

#resume-subheading[容器化微服務監控系統][#link("https://github.com/ckchan-dev/k8s-monitoring-platform")[https\:\/\/github\.com\/ckchan\-dev\/k8s\-monitoring\-platform]][基於 Kubernetes 的微服務監控及日誌聚合平台。][2021\-09\-01–2022\-01\-31]
- 整合 Prometheus、Grafana 與 Loki，提供多租戶的即時監控告警。
- 自訂 Helm Chart 簡化部署流程，令新服務接入監控只需數分鐘。
- 設計告警規則及儀表板，協助團隊快速定位系統異常。
#strong[關鍵字]：Kubernetes、Prometheus、Grafana、Loki、Helm
]

= 興趣愛好
#resume-pad[
#strong[科技創新]：開源軟件、區塊鏈、人工智能

#strong[戶外活動]：遠足、露營、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[技術導師][#link("https://hkdevcommunity.org")[https\:\/\/hkdevcommunity\.org]][香港軟件開發者社群][2020\-01\-01–2023\-12\-31]
- 定期主持 Web 開發工作坊及編程入門講座，協助初學者學習現代前端技術。
- 為開源項目提供代碼審查及技術諮詢，促進本地開發者社群交流。
- 籌辦年度黑客松活動，吸引超過 200 名參與者。
]