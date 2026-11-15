#set document(
  title: "林雅婷 - 資深客戶成功經理 | 專注於 SaaS 與企業軟體",
  author: "林雅婷",
  keywords: "客戶成功與關係管理, 數據分析與工具, 專案與團隊管理, 語言與溝通",
  description: "Résumé of 林雅婷",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林雅婷]] #v(-0.2em)

#text(size: 1.44em)[資深客戶成功經理 | 專注於 SaaS 與企業軟體]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yating.lin@gmail.com")[yating\.lin\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/yatinglin")[https\:\/\/www\.linkedin\.com\/in\/yatinglin]

中國臺灣，信義區，台北市，台北市信義區松高路 88 號 12 樓，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yatinglin")[yatinglin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yatinglin")[yatinglin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yatinglin")[yatinglin]
]

= 簡介

#resume-pad[
具備 6 年以上客戶成功與帳戶管理經驗，專精於 SaaS 與企業軟體產業。擅長透過數據驅動策略提升客戶續約率、擴展收入與滿意度，並帶領團隊達成組織目標。

- 管理超過 30 家中大型企業客戶，年度續約率維持 95% 以上，淨收入留存率 (NRR) 達 118%
- 建立客戶健康度評分模型與主動關懷流程，成功降低客戶流失風險 40%
- 領導 5 人客戶成功團隊，制定 onboarding 標準作業程序，縮短新客戶上線時間 35%
- 熟悉 Salesforce、HubSpot、Tableau 等工具，具備 SQL 與數據分析能力
- 卓越的跨部門溝通與談判技巧，能有效協調產品、工程與業務團隊
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw/")[https\:\/\/www\.ntu\.edu\.tw\/]][學士，企業管理學系，成績：3\.9\/4\.3][2014年9月–2018年6月]
- 主修企業管理，輔修資訊管理，奠定商業策略與數據分析基礎
- 擔任系學會公關長，籌辦多場企業參訪與講座，提升溝通與協調能力
- 畢業專題「以客戶旅程地圖優化 SaaS onboarding 流程」獲教授推薦
#strong[課程]：行銷管理、消費者行為、策略管理、人力資源管理、財務管理、商業分析、專案管理、談判理論
]

= 工作經歷
#resume-pad[
#resume-subheading[資深客戶成功經理][#link("https://www.cloudpulse.tw")[https\:\/\/www\.cloudpulse\.tw]][雲端脈動科技股份有限公司][2022年1月至今]
- 負責管理 30\+ 家中大型企業客戶，年度續約率維持 95% 以上，淨收入留存率 (NRR) 達 118%
- 領導 5 人客戶成功團隊，制定客戶健康度評分模型與主動關懷流程，降低流失風險 40%
- 與產品團隊協作，根據客戶回饋推動 12 項功能優化，提升客戶滿意度 (CSAT) 至 4\.8\/5\.0
- 建立客戶成功手冊與 onboarding 標準作業程序，將新客戶上線時間縮短 35%
- 定期舉辦客戶成功工作坊與用戶社群活動，促進客戶間交流與產品採用
#strong[關鍵字]：客戶關係管理、續約策略、數據分析、團隊領導、SaaS

#resume-subheading[客戶成功經理][#link("https://www.smartsoft.com.tw")[https\:\/\/www\.smartsoft\.com\.tw]][智創軟體服務有限公司][2018年7月–2021年12月]
- 管理 50\+ 家中小企業客戶，負責產品導入、教育訓練與日常諮詢，客戶續約率達 90%
- 導入 CRM 系統 (Salesforce) 並優化客戶歷程追蹤，提升團隊工作效率 25%
- 分析客戶使用數據，主動識別潛在流失客戶並制定挽回計畫，成功挽回 15% 即將流失客戶
- 擔任客戶與產品部門之間的橋樑，每季彙整客戶需求並優先級排序，協助產品路線圖規劃
- 獲得 2020 年度最佳客戶成功經理獎項，表彰卓越客戶服務與跨部門協作
#strong[關鍵字]：客戶導入、教育訓練、Salesforce、客戶留存、跨部門溝通
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：繁體中文、台語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、商業書信、國際客戶溝通])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[客戶成功與關係管理]：專家], [#strong[關鍵字]：客戶生命週期管理、續約與擴展、客戶健康度分析、淨推薦值 (NPS)、客戶滿意度 (CSAT)、QBR 規劃])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析與工具]：高級], [#strong[關鍵字]：Salesforce、HubSpot、Tableau、Excel、SQL、Google Analytics])

#grid(columns: (1fr, auto), align: (left, right), [#strong[專案與團隊管理]：高級], [#strong[關鍵字]：敏捷開發、Jira、Confluence、跨部門協作、團隊領導、簡報技巧])

#grid(columns: (1fr, auto), align: (left, right), [#strong[語言與溝通]：專家], [#strong[關鍵字]：中文 (母語)、英文 (專業)、談判、客戶簡報、衝突解決])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳客戶成功經理][][智創軟體服務有限公司][2020年12月]
表彰在客戶續約率、客戶滿意度及跨部門協作方面的卓越表現，全年客戶留存率達 92%，為團隊最高。

#resume-subheading[卓越服務獎][][雲端脈動科技股份有限公司][2023年6月]
因成功輔導三家大型企業客戶完成數位轉型，客戶 NPS 達 75 分，獲公司季度卓越服務獎。
]

= 證書
#resume-pad[
#resume-subheading[Salesforce 認證管理員][#link("https://trailhead.salesforce.com/en/credentials/administrator")[https\:\/\/trailhead\.salesforce\.com\/en\/credentials\/administrator]][Salesforce][2021年3月]

#resume-subheading[Google 數據分析專業認證][#link("https://grow.google/certificates/data-analytics/")[https\:\/\/grow\.google\/certificates\/data\-analytics\/]][Google][2022年8月]

#resume-subheading[專案管理專業人士 (PMP) 認證][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][PMI][2019年11月]
]

= 出版刊物
#resume-pad[
#resume-subheading[以客戶成功為核心的 SaaS 訂閱經濟策略][#link("https://www.tamjournal.org.tw/article/12345")[https\:\/\/www\.tamjournal\.org\.tw\/article\/12345]][台灣管理學刊][2021年9月]
- 探討 SaaS 企業如何透過客戶成功管理提升續約率與客戶終身價值
- 提出客戶健康度評分模型與主動關懷機制，並以台灣企業個案驗證
- 獲選為當期最佳實務案例論文
]

= 引薦
#resume-pad[
#resume-subheading[王大明][雲端脈動科技股份有限公司 營運副總][ming\.wang\@cloudpulse\.tw][\+886 2 1234 5678]
林雅婷在客戶成功領域表現卓越，具備數據驅動思維與卓越的溝通能力，能有效帶領團隊達成目標，是難得的人才。
]

= 項目
#resume-pad[
#resume-subheading[客戶健康度儀表板][#link("https://github.com/yatinglin/customer-health-dashboard")[https\:\/\/github\.com\/yatinglin\/customer\-health\-dashboard]][基於 Python 與 Tableau 開發的客戶健康度監控系統][2022年1月–2022年6月]
- 整合 Salesforce、產品使用數據與客服工單，計算客戶健康度分數
- 提供即時警示與建議行動，協助客戶成功團隊主動管理風險客戶
- 導入後客戶流失率降低 25%，團隊工作效率提升 30%
#strong[關鍵字]：Python、Tableau、Salesforce API、數據視覺化

#resume-subheading[SaaS 客戶 onboarding 自動化流程][#link("https://www.cloudpulse.tw/onboarding")[https\:\/\/www\.cloudpulse\.tw\/onboarding]][設計並導入自動化 onboarding 流程，縮短客戶上線時間][2023年3月–2023年8月]
- 使用 HubSpot 與 Zapier 建立自動化郵件序列與任務分派
- 將新客戶上線時間從 14 天縮短至 9 天，提升客戶早期採用率
- 專案成果獲選為公司年度最佳內部流程改善案例
#strong[關鍵字]：HubSpot、Zapier、流程自動化、客戶體驗
]

= 興趣愛好
#resume-pad[
#strong[志工服務]：偏鄉教育、動物保護、社區營造

#strong[戶外活動]：登山、潛水、馬拉松

#strong[閱讀與寫作]：商業策略、客戶體驗、心理學
]

= 志願服務
#resume-pad[
#resume-subheading[志工講師][#link("https://www.ruraledu.tw")[https\:\/\/www\.ruraledu\.tw]][台灣偏鄉教育發展協會][2019年9月–2023年6月]
- 每月前往偏鄉國小教授商業基礎與職涯探索課程，累計服務 200\+ 小時
- 設計互動式教案，提升學生學習動機與自信心
- 協助協會舉辦年度營隊，招募並培訓 30 位大專院校志工
]