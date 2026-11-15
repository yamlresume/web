#set document(
  title: "林雅婷 - 營運經理｜跨部門流程優化與供應鏈管理",
  author: "林雅婷",
  keywords: "營運管理, 供應鏈與物流, 數據分析, 專案與跨部門協作, 顧客服務",
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

#text(size: 1.44em)[營運經理｜跨部門流程優化與供應鏈管理]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 2 8765 4321")[\+886 2 8765 4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yating.lin@example.com")[yating\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://yatinglin-ops.tw")[https\:\/\/yatinglin\-ops\.tw]

中國臺灣，信義區，台北市，台北市信義區松高路 88 號 12 樓，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yatinglin-ops")[yatinglin\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yatinglin-ops")[yatinglin\-ops]
]

= 簡介

#resume-pad[
- 8 年以上零售與電商營運管理經驗，擅長從數據中找出流程瓶頸並推動跨部門改善。
- 曾帶領 30 人以上營運團隊，負責門市、倉儲、客服與物流的日常管理與關鍵指標達成。
- 熟悉預算規劃、供應鏈協調、標準作業流程建置與專案管理，能在快速變動環境中穩定交付成果。
- 具備良好溝通與問題解決能力，致力於提升客戶滿意度與營運效率。
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw/")[https\:\/\/www\.ntu\.edu\.tw\/]][碩士，企業管理研究所，成績：3\.9\/4\.0][2012\-09\-01–2014\-06\-30]
- 專注於營運策略、供應鏈協調與數據驅動決策，完成多項企業實務專案。
- 擔任管理學院個案研究助教，協助整理零售與服務業營運案例。
- 畢業論文探討零售通路存貨管理與門市績效之關聯。
#strong[課程]：營運管理、供應鏈管理、資料分析與決策、專案管理、財務管理

#resume-subheading[國立政治大學][#link("https://www.nccu.edu.tw/")[https\:\/\/www\.nccu\.edu\.tw\/]][學士，國際經營與貿易學系，成績：3\.7\/4\.0][2008\-09\-01–2012\-06\-30]
- 建立國際企業、行銷與作業管理基礎，並選修供應鏈相關課程。
- 參與商業個案競賽，負責營運流程與成本結構分析。
- 透過團隊專案培養跨領域溝通與簡報能力。
#strong[課程]：國際企業管理、行銷管理、統計學、作業管理、經濟學
]

= 工作經歷
#resume-pad[
#resume-subheading[營運經理][#link("https://www.eslite.com/")[https\:\/\/www\.eslite\.com\/]][誠品生活股份有限公司][2021\-03\-01至今]
- 負責全台 12 間門市與電商倉儲的營運管理，帶領 35 人團隊，年度營業額約新台幣 8 億元。
- 建立門市營運儀表板與每日關鍵指標檢視機制，將缺貨率降低 18%，訂單準時出貨率提升至 97%。
- 主導跨部門流程改善專案，整合採購、物流與客服作業，縮短新品上架時間 25%。
- 規劃年度營運預算與人力配置，控制人事與物流成本，連續兩年達成部門獲利目標。
#strong[關鍵字]：零售營運、供應鏈管理、關鍵指標管理、流程改善、預算規劃

#resume-subheading[營運副理][#link("https://www.momoshop.com.tw/")[https\:\/\/www\.momoshop\.com\.tw\/]][富邦媒體科技股份有限公司][2017\-07\-01–2021\-02\-28]
- 管理電商倉儲與配送作業，協調第三方物流夥伴，處理每日超過 5,000 筆訂單。
- 導入標準作業流程與教育訓練制度，降低新人上手時間 30%，提升包裝與出貨準確率。
- 分析客訴與退換貨數據，推動包裝與配送流程優化，使客訴率下降 22%。
- 與行銷、採購及客服團隊協作，支援雙 11、週年慶等大型促銷活動的營運準備。
#strong[關鍵字]：電商營運、物流管理、標準作業流程、客訴分析、活動支援

#resume-subheading[門市營運督導][#link("https://www.7-11.com.tw/")[https\:\/\/www\.7\-11\.com\.tw\/]][統一超商股份有限公司][2014\-08\-01–2017\-06\-30]
- 督導大台北地區 18 間門市，協助店長達成營業額、毛利與服務品質指標。
- 執行門市稽核與輔導，改善商品陳列、庫存盤點與食品安全作業。
- 規劃區域教育訓練與招募活動，提升門市人員留任率與服務標準一致性。
#strong[關鍵字]：門市管理、營運督導、庫存管理、教育訓練、食品安全
]

= 語言
#resume-pad[
#strong[中文]：母語或雙語水平

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：多益 950 分、商業簡報])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：有限工作水平], [#strong[關鍵字]：日文檢定 N2])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[營運管理]：專家], [#strong[關鍵字]：流程改善、關鍵指標設定、標準作業流程、預算規劃、績效管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[供應鏈與物流]：高級], [#strong[關鍵字]：供應鏈協調、倉儲管理、物流配送、庫存控管、第三方物流管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析]：高級], [#strong[關鍵字]：試算表分析、商業智慧儀表板、資料庫查詢、營運報表、數據洞察])

#grid(columns: (1fr, auto), align: (left, right), [#strong[專案與跨部門協作]：高級], [#strong[關鍵字]：專案管理、跨部門溝通、變革管理、風險控管、敏捷思維])

#grid(columns: (1fr, auto), align: (left, right), [#strong[顧客服務]：高級], [#strong[關鍵字]：客訴處理、服務流程設計、滿意度調查、客戶關係管理、教育訓練])
]

= 榮譽
#resume-pad[
#resume-subheading[年度卓越營運獎][][誠品生活股份有限公司][2023\-12\-15]
表彰在門市營運效率與跨部門流程改善上的卓越貢獻，帶領團隊達成年度關鍵指標目標。

#resume-subheading[最佳流程改善提案獎][][富邦媒體科技股份有限公司][2019\-11\-20]
針對倉儲出貨流程提出改善方案，降低出貨錯誤率並提升作業效率。
]

= 證書
#resume-pad[
#resume-subheading[國際專案管理師認證][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][國際專案管理學會][2020\-08\-15]

#resume-subheading[精實六標準差綠帶認證][#link("https://www.csq.org.tw/")[https\:\/\/www\.csq\.org\.tw\/]][中華民國品質學會][2018\-05\-10]
]

= 出版刊物
#resume-pad[
#resume-subheading[零售門市營運指標化管理實務][#link("https://www.managertoday.com.tw/")[https\:\/\/www\.managertoday\.com\.tw\/]][經理人月刊][2023\-06\-01]
- 分享如何透過關鍵指標與每日檢視機制，提升門市營運透明度與問題反應速度。
- 以零售與電商案例說明跨部門流程改善的推動方法與常見挑戰。
]

= 項目
#resume-pad[
#resume-subheading[門市營運數位儀表板][#link("https://yatinglin-ops.tw/projects/ops-dashboard")[https\:\/\/yatinglin\-ops\.tw\/projects\/ops\-dashboard]][整合門市銷售、庫存與客訴資料的營運管理儀表板。][2022\-01\-10–2022\-09\-30]
- 與資訊及資料團隊合作，定義營運關鍵指標與資料來源。
- 建立每日自動更新機制，讓門市主管即時掌握來客數、客單價與缺貨率。
- 上線後協助區域主管每週進行數據檢討，提升營運問題的反應速度。
#strong[關鍵字]：營運儀表板、數據視覺化、關鍵指標管理、零售分析

#resume-subheading[電商倉儲出貨流程優化][#link("https://yatinglin-ops.tw/projects/warehouse-flow")[https\:\/\/yatinglin\-ops\.tw\/projects\/warehouse\-flow]][針對促銷期間出貨瓶頸進行流程重設與人力調度優化。][2019\-03\-01–2019\-12\-31]
- 分析訂單波動與揀貨動線，重新規劃尖峰時段的人力配置。
- 建立出貨檢查清單與異常回報機制，降低出貨錯誤率。
- 與物流夥伴協調配送時段，提升促銷期間訂單準時出貨比例。
#strong[關鍵字]：電商營運、倉儲流程、人力調度、物流協調
]

= 興趣愛好
#resume-pad[
#strong[專業社群]：零售營運、供應鏈管理、數據分析

#strong[個人興趣]：登山、閱讀、攝影、馬拉松
]

= 志願服務
#resume-pad[
#resume-subheading[營運管理志工講師][#link("https://www.tcfa.org.tw/")[https\:\/\/www\.tcfa\.org\.tw\/]][台灣連鎖暨加盟協會][2021\-03\-01至今]
- 參與中小企業營運診斷志工服務，協助在地店家建立營運指標與庫存管理流程。
- 定期分享門市管理、客訴處理與流程改善實務，協助學員提升營運管理能力。
]