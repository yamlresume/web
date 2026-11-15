#set document(
  title: "陳家豪 - 資深數據工程師",
  author: "陳家豪",
  keywords: "數據工程, 雲端平台, 數據治理",
  description: "Résumé of 陳家豪",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳家豪]] #v(-0.2em)

#text(size: 1.44em)[資深數據工程師]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kaho.chan@example.com")[kaho\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://kahochan.dev")[https\:\/\/kahochan\.dev]

中國香港，香港島，香港，中環皇后大道中99號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/kahochan-data")[kahochan\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kahochan-data")[kahochan\-data]
]

= 簡介

#resume-pad[
資深數據工程師，擁有超過八年設計與建置現代數據平台嘅經驗，專注於即時數據管道、數據倉儲同雲端數據架構。擅長將複雜業務需求轉化為可擴展、可靠且易維護嘅數據解決方案。

- 精通 Python、SQL、Spark 及 dbt，熟悉 Kafka、Airflow 同 Snowflake 等現代數據工具鏈
- 曾領導跨職能團隊完成多個大型數據遷移及實時分析項目，平均延遲降低 40%
- 重視數據品質、可觀測性同成本效益，致力推動數據治理最佳實踐
]

= 教育背景
#resume-pad[
#resume-subheading[香港科技大學][#link("https://www.ust.hk")[https\:\/\/www\.ust\.hk]][學士，計算機科學，成績：3\.7][2012年9月–2016年6月]
- 主修計算機科學，副修統計學，畢業成績優異
- 畢業論文探討分散式資料處理框架於金融風險分析之應用
- 曾獲院長嘉許名單及多項獎學金
#strong[課程]：資料結構與演算法、資料庫系統、分散式系統、大數據分析、雲端運算、機器學習導論
]

= 工作經歷
#resume-pad[
#resume-subheading[高級數據工程師][#link("https://www.smartdata-tech.hk")[https\:\/\/www\.smartdata\-tech\.hk]][智慧數據科技有限公司][2021年3月至今]
- 帶領四人數據工程團隊，設計及維護每日處理超過 5 TB 數據嘅雲端數據平台
- 主導由傳統數據倉儲遷移至 Snowflake 嘅項目，查詢效能提升 3 倍，年度成本節省約 25%
- 建立基於 Airflow 同 dbt 嘅 ELT 管道，實現數據血緣追蹤同自動化測試，數據事故減少 60%
- 與數據科學團隊緊密合作，交付實時推薦系統所需嘅特徵管道，模型上線時間由數週縮短至數日
#strong[關鍵字]：數據架構、Snowflake、Airflow、dbt、團隊領導

#resume-subheading[數據工程師][#link("https://www.fincloud.hk")[https\:\/\/www\.fincloud\.hk]][金融雲端服務有限公司][2017年7月–2021年2月]
- 負責建置及優化銀行交易數據嘅批處理管道，每日處理超過 2 億筆記錄
- 使用 Spark 及 Kafka 開發近實時風險監控數據流，將欺詐偵測延遲由小時級降至分鐘級
- 設計分區及壓縮策略，使數據湖儲存成本降低 35%，同時維持查詢效能
- 參與數據治理委員會，制定數據品質指標及元數據管理標準
#strong[關鍵字]：Spark、Kafka、數據湖、風險監控、數據治理

#resume-subheading[數據分析師][#link("https://www.startup-analytics.hk")[https\:\/\/www\.startup\-analytics\.hk]][初創分析有限公司][2016年8月–2017年6月]
- 為零售客戶建立銷售及庫存儀表板，支援每日營運決策
- 以 Python 及 SQL 自動化報表流程，每週節省約 15 小時人手工作
- 協助設計 A\/B 測試框架，分析促銷活動成效並提出優化建議
#strong[關鍵字]：Python、SQL、數據視覺化、A\/B 測試
]

= 語言
#resume-pad[
#strong[粵語]：母語或雙語水平

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 8\.0])

#strong[普通話]：完全專業水平
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[數據工程]：專家], [#strong[關鍵字]：Python、SQL、Spark、Kafka、Airflow、dbt])

#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端平台]：高級], [#strong[關鍵字]：AWS、GCP、Snowflake、BigQuery、Docker、Kubernetes])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據治理]：高級], [#strong[關鍵字]：數據品質、元數據管理、數據血緣、隱私合規、成本優化])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳數據項目][][智慧數據科技有限公司][2022年12月]
表揚在 Snowflake 遷移項目中展現卓越技術領導力，顯著提升平台效能並降低營運成本。

#resume-subheading[院長嘉許名單][][香港科技大學][2015年6月]
因學術成績優異而獲頒，每學年僅頒授予成績排名前 10% 的學生。
]

= 證書
#resume-pad[
#resume-subheading[AWS Certified Data Analytics – Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2022年8月]

#resume-subheading[Google Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google Cloud][2020年11月]
]

= 出版刊物
#resume-pad[
#resume-subheading[分散式資料處理框架於金融風險分析之應用][#link("https://hdl.handle.net/123456789/1234")[https\:\/\/hdl\.handle\.net\/123456789\/1234]][香港科技大學計算機科學系][2016年6月]
- 探討 Apache Spark 及 Flink 於即時風險計算嘅效能比較
- 提出基於微批次嘅優化策略，將延遲降低約 30%
]

= 項目
#resume-pad[
#resume-subheading[實時欺詐偵測管道][#link("https://github.com/kahochan-data/fraud-pipeline")[https\:\/\/github\.com\/kahochan\-data\/fraud\-pipeline]][基於 Kafka、Spark Structured Streaming 及 Redis 嘅實時欺詐偵測系統][2023年1月–2023年8月]
- 設計及實作每秒處理 5,000 筆交易嘅串流管道，端到端延遲低於 2 秒
- 整合機器學習模型評分服務，實現自動化風險決策
- 建立監控及告警機制，確保管道可用性達 99\.9%
#strong[關鍵字]：Kafka、Spark、Redis、實時數據

#resume-subheading[數據品質自動化框架][#link("https://github.com/kahochan-data/dq-framework")[https\:\/\/github\.com\/kahochan\-data\/dq\-framework]][以 dbt 及 Great Expectations 為核心嘅數據品質測試框架][2022年3月–2022年12月]
- 提供宣告式數據品質規則，支援欄位級及表級驗證
- 自動產生數據品質報告並整合至 CI\/CD 流程
- 於三個業務團隊推行，數據事故平均修復時間縮短 50%
#strong[關鍵字]：dbt、Great Expectations、CI\/CD、數據品質
]

= 興趣愛好
#resume-pad[
#strong[運動]：龍舟、遠足、游泳

#strong[音樂]：結他、爵士樂
]

= 志願服務
#resume-pad[
#resume-subheading[導師及講者][#link("https://www.hkde.community")[https\:\/\/www\.hkde\.community]][香港數據工程師社群][2019年9月至今]
- 定期舉辦數據工程工作坊，分享雲端數據架構及管道設計經驗
- 指導初入行工程師，協助他們建立實戰項目及職涯規劃
- 籌辦年度數據馬拉松，吸引超過 200 名參加者
]