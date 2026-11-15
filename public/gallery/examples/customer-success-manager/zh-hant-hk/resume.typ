#set document(
  title: "陳嘉欣 - 客戶成功經理 | SaaS 客戶體驗專家",
  author: "陳嘉欣",
  keywords: "客戶成功管理, 數據分析, 項目管理, 溝通與談判",
  description: "Résumé of 陳嘉欣",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳嘉欣]] #v(-0.2em)

#text(size: 1.44em)[客戶成功經理 | SaaS 客戶體驗專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ka-yan.chan@example.com")[ka\-yan\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/kayanchan-csm")[https\:\/\/www\.linkedin\.com\/in\/kayanchan\-csm]

中國香港，香港島，香港，香港中環皇后大道中 99 號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kayanchan-csm")[kayanchan\-csm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@kayanchan")[kayanchan]
]

= 簡介

#resume-pad[
- 擁有超過 8 年客戶成功及客戶關係管理經驗，專注於 SaaS 及金融科技行業
- 擅長制定客戶成功策略，提升客戶留存率及終身價值
- 具備優秀的跨部門協作能力，能與產品、銷售及技術團隊緊密合作
- 熟悉數據分析，能以數據驅動客戶健康度管理及主動服務
- 精通粵語、英語及普通話，能服務香港及大中華區客戶
]

= 教育背景
#resume-pad[
#resume-subheading[香港大學][#link("https://www.hku.hk")[https\:\/\/www\.hku\.hk]][學士，工商管理學學士（市場學），成績：3\.6][2011年9月–2015年7月]
- 主修市場學，副修資訊系統
- 曾獲院長榮譽榜及多項獎學金
- 積極參與商業個案比賽，獲得校際亞軍
#strong[課程]：市場營銷原理、消費者行為、商業統計、組織行為學、財務管理、策略管理

#resume-subheading[香港科技大學][#link("https://www.ust.hk")[https\:\/\/www\.ust\.hk]][碩士，資訊系統管理碩士，成績：3\.8][2018年9月–2020年6月]
- 在職進修，專注於企業資訊系統與數據分析
- 畢業論文探討客戶成功管理系統對 B2B 企業績效的影響
#strong[課程]：企業資源規劃、數據庫管理、商業智能與分析、項目管理、數位轉型策略
]

= 工作經歷
#resume-pad[
#resume-subheading[高級客戶成功經理][#link("https://www.hkcloudsolutions.example.com")[https\:\/\/www\.hkcloudsolutions\.example\.com]][香港雲端方案有限公司][2021年3月至今]
- 管理超過 50 間企業客戶，年度經常性收入（ARR）超過 2,000 萬港元
- 制定並執行客戶成功計劃，將客戶留存率由 85% 提升至 94%
- 建立客戶健康度評分模型，主動識別流失風險並制定挽留策略
- 領導 5 人客戶成功團隊，負責招聘、培訓及績效管理
- 與產品團隊合作，將客戶反饋轉化為產品路線圖優先事項
- 推動客戶追加銷售及交叉銷售，年度擴展收入增長 30%
#strong[關鍵字]：客戶留存、客戶健康度、團隊領導、追加銷售、SaaS、數據分析

#resume-subheading[客戶成功經理][#link("https://www.asiafintech.example.com")[https\:\/\/www\.asiafintech\.example\.com]][亞洲金融科技集團][2017年6月–2021年2月]
- 負責金融科技產品之客戶導入、培訓及續約管理
- 為超過 200 間中小企業客戶提供技術支援及最佳實踐建議
- 設計客戶入門流程，將價值實現時間由 45 天縮短至 20 天
- 分析客戶使用數據，制定個人化服務方案，提升客戶滿意度至 92%
- 與銷售團隊緊密合作，識別升級銷售機會，達成 120% 配額
#strong[關鍵字]：客戶導入、續約管理、金融科技、客戶滿意度、數據驅動

#resume-subheading[客戶服務主任][#link("https://www.hkt.example.com")[https\:\/\/www\.hkt\.example\.com]][香港電訊數碼][2015年8月–2017年5月]
- 處理企業客戶的服務查詢及技術問題，確保快速有效解決
- 協調內部技術團隊，跟進個案至完全解決，客戶滿意度達 90%
- 編寫客戶服務指南及常見問題，提升團隊效率 25%
- 識別客戶痛點並向產品團隊提出改善建議
#strong[關鍵字]：客戶服務、問題解決、電訊、跨部門協作
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 8\.0、商業寫作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[客戶成功管理]：專家], [#strong[關鍵字]：客戶留存、客戶滿意度、客戶健康度、客戶旅程、續約管理、追加銷售])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析]：高級], [#strong[關鍵字]：Salesforce、Tableau、SQL、Excel、Power BI、Google Analytics])

#grid(columns: (1fr, auto), align: (left, right), [#strong[項目管理]：高級], [#strong[關鍵字]：Jira、Asana、Agile、Scrum、跨部門協作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[溝通與談判]：專家], [#strong[關鍵字]：粵語、英語、普通話、簡報技巧、衝突處理])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳客戶成功經理][][香港雲端方案有限公司][2023年12月]
表揚在客戶留存、滿意度及團隊領導方面的卓越表現，帶領團隊達成 94% 客戶留存率。

#resume-subheading[總裁卓越獎][][亞洲金融科技集團][2020年1月]
因成功提升客戶滿意度至 92% 及超額完成銷售配額而獲頒總裁卓越獎。
]

= 證書
#resume-pad[
#resume-subheading[Certified Customer Success Manager (CCSM)][#link("https://www.successcoaching.com/certification")[https\:\/\/www\.successcoaching\.com\/certification]][SuccessCOACHING][2022年3月]

#resume-subheading[Salesforce Certified Administrator][#link("https://trailhead.salesforce.com/credentials/administrator")[https\:\/\/trailhead\.salesforce\.com\/credentials\/administrator]][Salesforce][2021年8月]

#resume-subheading[項目管理專業人士 (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][PMI][2019年11月]
]

= 出版刊物
#resume-pad[
#resume-subheading[以數據驅動客戶成功：香港 SaaS 市場的實踐指南][#link("https://www.hkcsa.example.com/publications/data-driven-customer-success")[https\:\/\/www\.hkcsa\.example\.com\/publications\/data\-driven\-customer\-success]][香港客戶成功協會][2023年6月]
- 探討如何利用客戶健康度指標預測流失風險
- 分享香港 SaaS 企業的客戶成功案例與最佳實踐
- 提供建立客戶成功團隊的框架與關鍵績效指標

#resume-subheading[提升 B2B 客戶留存率的五大策略][#link("https://www.asianbusinessreview.example.com/retention-strategies")[https\:\/\/www\.asianbusinessreview\.example\.com\/retention\-strategies]][亞洲商業評論][2022年9月]
- 分析 B2B 客戶留存的核心驅動因素
- 提出從入門到續約的五大實用策略
- 引用亞太區企業數據支持論點
]

= 引薦
#resume-pad[
#resume-subheading[黃志明][香港雲端方案有限公司 營運總監][chi\-ming\.wong\@hkcloudsolutions\.example\.com][\+852 9876 5432]
陳嘉欣在客戶成功領域表現卓越，具備出色的策略思維及團隊領導能力，能有效提升客戶留存及滿意度，是任何企業都不可多得的人才。
]

= 項目
#resume-pad[
#resume-subheading[客戶健康度儀表板][#link("https://www.hkcloudsolutions.example.com/projects/health-dashboard")[https\:\/\/www\.hkcloudsolutions\.example\.com\/projects\/health\-dashboard]][為企業客戶開發的實時客戶健康度監控平台][2022年1月–2022年8月]
- 整合 Salesforce、產品使用數據及支援工單，建立 360 度客戶視圖
- 設計健康度評分演算法，準確預測 90% 的流失風險客戶
- 儀表板上線後，客戶成功團隊主動跟進效率提升 40%
#strong[關鍵字]：客戶健康度、Tableau、Salesforce、數據可視化

#resume-subheading[客戶成功入門計劃][#link("https://www.hkcloudsolutions.example.com/projects/onboarding")[https\:\/\/www\.hkcloudsolutions\.example\.com\/projects\/onboarding]][標準化新客戶入門流程，縮短價值實現時間][2021年3月–2021年12月]
- 設計 30\-60\-90 天入門框架，涵蓋培訓、設定及成功指標
- 自動化入門溝通郵件及任務提醒，減少人手 50%
- 新客戶首 90 天滿意度由 80% 提升至 93%
#strong[關鍵字]：入門流程、客戶旅程、自動化、滿意度
]

= 興趣愛好
#resume-pad[
#strong[專業發展]：客戶成功、SaaS、數據分析、人工智能

#strong[社區服務]：青年導師、義工、環保

#strong[個人興趣]：遠足、攝影、閱讀、咖啡
]

= 志願服務
#resume-pad[
#resume-subheading[客戶成功導師][#link("https://www.hkyea.example.com")[https\:\/\/www\.hkyea\.example\.com]][香港青年創業家協會][2021年9月至今]
- 為青年創業者提供客戶成功及客戶關係管理指導
- 協助制定客戶獲取及留存策略，參與每月導師聚會
- 分享 SaaS 行業經驗，幫助初創企業建立可持續增長模式

#resume-subheading[活動籌委][#link("https://www.hkcsa.example.com")[https\:\/\/www\.hkcsa\.example\.com]][香港客戶成功協會][2020年1月–2021年12月]
- 籌辦年度客戶成功研討會及工作坊，吸引超過 300 名參與者
- 負責講者邀請、議程設計及場地協調
- 促進香港客戶成功專業社群交流與知識分享
]