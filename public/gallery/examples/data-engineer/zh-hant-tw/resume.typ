#set document(
  title: "林彥廷 - 資深資料工程師｜資料平台與即時資料管線",
  author: "林彥廷",
  keywords: "資料工程, 雲端與基礎設施, 資料倉儲與湖倉, 程式設計, 資料治理與可觀測性",
  description: "Résumé of 林彥廷",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine", "Noto Serif CJK TC", "Noto Sans CJK TC", "Songti TC", "PMingLiU", "PingFang TC", "Microsoft JhengHei"),
  size: 10pt,
  lang: "zh", region: "tw", number-type: "lining",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林彥廷]] #v(-0.2em)

#text(size: 1.44em)[資深資料工程師｜資料平台與即時資料管線]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yanting.lin@dataops.tw")[yanting\.lin\@dataops\.tw] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.yantinglin.dev")[https\:\/\/www\.yantinglin\.dev]

中國臺灣，臺北市，臺北市，信義區松仁路 88 號，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yanting-lin-data")[yanting\-lin\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yantinglin")[yantinglin]
]

= 簡介

#resume-pad[
- 具備 10 年以上資料與軟體工程經驗，其中 8 年專注於資料平台、ETL\/ELT 與即時串流管線設計。
- 熟悉 Python、SQL、Spark、Airflow、Kafka 與 dbt，能將複雜業務需求轉化為可維運的資料產品。
- 具備雲端資料倉儲與湖倉架構實戰經驗，曾協助企業降低 40% 資料處理成本並提升資料交付效率。
- 重視資料品質、可觀測性與跨團隊協作，樂於推動資料治理與工程最佳實踐。
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw/")[https\:\/\/www\.ntu\.edu\.tw\/]][碩士，資訊工程學系，成績：3\.9\/4\.0][2012年9月–2014年7月]
- 專注於分散式資料處理與資料庫系統研究，畢業論文探討即時串流查詢最佳化。
- 擔任資料庫課程助教，協助學生理解關聯式與 NoSQL 資料模型。
- 參與產學合作專案，建置校內研究資料交換平台。
#strong[課程]：資料庫系統、分散式系統、資料探勘、雲端計算、大數據分析、機器學習

#resume-subheading[國立清華大學][#link("https://www.nthu.edu.tw/")[https\:\/\/www\.nthu\.edu\.tw\/]][學士，資訊工程學系，成績：3\.7\/4\.0][2008年9月–2012年6月]
- 奠定程式設計、演算法與系統設計基礎。
- 參與系學會資訊組，維護活動報名與資料統計系統。
#strong[課程]：資料結構、演算法、作業系統、計算機網路、軟體工程
]

= 工作經歷
#resume-pad[
#resume-subheading[資深資料工程師][][瀚宇金融科技股份有限公司][2020年3月至今]
- 主導企業級資料湖倉平台建置，整合 20\+ 業務系統，支援每日 5 TB 以上批次與串流資料。
- 設計以 Airflow、dbt 與 Spark 為核心的 ELT 流程，將資料交付週期由 3 天縮短至 4 小時。
- 建立資料品質監控與告警機制，涵蓋完整性、即時性與一致性檢查，降低線上資料事故 60%。
- 推動資料治理規範與指標字典，與資料分析、風控及產品團隊協作定義核心資料資產。
- 帶領 4 人資料工程小組，負責技術選型、程式碼審查與初階工程師培育。
#strong[關鍵字]：資料湖倉、Apache Spark、Airflow、dbt、Kafka、資料治理

#resume-subheading[資料工程師][][遠景電信數據股份有限公司][2016年8月–2020年2月]
- 建置電信用戶行為資料管線，處理每日百萬級事件資料並匯入雲端資料倉儲。
- 使用 Python 與 SQL 開發批次 ETL 作業，支援行銷名單、流失預測與個人化推薦。
- 導入 Kafka 與 Spark Streaming 處理即時流量資料，提供近即時營運儀表板。
- 優化資料分割與查詢策略，降低 BigQuery 掃描量與月結成本約 35%。
- 與資料科學家合作特徵工程流程，提升模型訓練資料準備效率。
#strong[關鍵字]：Python、SQL、Kafka、Spark Streaming、BigQuery、ETL

#resume-subheading[軟體工程師][][凌雲資訊服務股份有限公司][2014年7月–2016年7月]
- 開發政府與企業資料交換系統，負責資料轉檔、排程與監控模組。
- 使用 Java 與 Oracle 資料庫實作批次匯入流程，確保跨系統資料一致性。
- 協助建立系統監控與錯誤重試機制，提升批次作業穩定度。
#strong[關鍵字]：Java、Oracle、ETL、Shell
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、技術文件閱讀與撰寫])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：有限工作水平], [#strong[關鍵字]：JLPT N3])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[資料工程]：專家], [#strong[關鍵字]：Python、SQL、Apache Spark、Airflow、dbt、Kafka])

#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端與基礎設施]：高級], [#strong[關鍵字]：AWS、GCP、Terraform、Docker、Kubernetes])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料倉儲與湖倉]：高級], [#strong[關鍵字]：Snowflake、BigQuery、Databricks、Redshift])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式設計]：高級], [#strong[關鍵字]：Python、Scala、Java、Bash])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料治理與可觀測性]：高級], [#strong[關鍵字]：Data Quality、Lineage、Metadata、Monitoring])
]

= 榮譽
#resume-pad[
#resume-subheading[年度資料創新獎][][瀚宇金融科技股份有限公司][2023年12月]
表彰在資料湖倉平台與即時風控資料管線專案中的卓越貢獻，專案協助降低資料延遲並提升決策效率。

#resume-subheading[最佳跨團隊協作獎][][遠景電信數據股份有限公司][2019年11月]
肯定在即時流量分析專案中整合資料工程、資料科學與行銷團隊的協作表現。
]

= 證書
#resume-pad[
#resume-subheading[AWS Certified Data Analytics \- Specialty][#link("https://aws.amazon.com/certification/certified-data-analytics-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-data\-analytics\-specialty\/]][Amazon Web Services][2022年6月]

#resume-subheading[Google Cloud Professional Data Engineer][#link("https://cloud.google.com/learn/certification/data-engineer")[https\:\/\/cloud\.google\.com\/learn\/certification\/data\-engineer]][Google Cloud][2021年9月]

#resume-subheading[Databricks Certified Data Engineer Professional][#link("https://www.databricks.com/learn/certification/data-engineer-professional")[https\:\/\/www\.databricks\.com\/learn\/certification\/data\-engineer\-professional]][Databricks][2024年3月]
]

= 出版刊物
#resume-pad[
#resume-subheading[以 Lakehouse 架構打造可觀測資料平台][#link("https://www.ithome.com.tw/")[https\:\/\/www\.ithome\.com\.tw\/]][iThome 技術專欄][2023年5月]
- 探討湖倉架構在金融業資料整合與治理上的實務經驗。
- 分享資料品質監控、血緣追蹤與成本優化策略。
]

= 項目
#resume-pad[
#resume-subheading[即時風控資料管線][#link("https://github.com/yantinglin/realtime-risk-pipeline")[https\:\/\/github\.com\/yantinglin\/realtime\-risk\-pipeline]][支援金融交易風控的即時事件處理與特徵計算平台][2022年1月–2023年12月]
- 使用 Kafka、Spark Structured Streaming 與 Redis 建置毫秒級事件處理流程。
- 設計可回溯的特徵版本管理與延遲監控，支援風控模型即時推論。
- 將規則更新到上線的週期由兩週縮短至兩天。
#strong[關鍵字]：Kafka、Spark、Redis、風控

#resume-subheading[資料品質監控平台][#link("https://github.com/yantinglin/data-quality-hub")[https\:\/\/github\.com\/yantinglin\/data\-quality\-hub]][集中管理資料品質規則、告警與健康度儀表板][2021年3月–2022年10月]
- 建立可配置的資料品質規則引擎，支援空值、重複、分布偏移與時效檢查。
- 整合 Airflow 與 Prometheus，提供自動告警與 SLA 報表。
- 覆蓋 150\+ 核心資料表，協助團隊提前發現重大資料異常。
#strong[關鍵字]：Data Quality、Airflow、Prometheus、Observability
]

= 興趣愛好
#resume-pad[
#strong[開源社群]：Apache Airflow、dbt、技術寫作

#strong[戶外活動]：登山、慢跑、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[志工講者與工作坊導師][#link("https://www.meetup.com/taiwan-data-engineering/")[https\:\/\/www\.meetup\.com\/taiwan\-data\-engineering\/]][臺灣資料工程社群][2021年1月至今]
- 定期分享資料管線設計、資料品質與雲端成本優化主題。
- 協助規劃初學者資料工程工作坊，指導學員完成端到端專案。
- 參與社群年會籌備，推動產學交流與知識分享。
]