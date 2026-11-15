#set document(
  title: "林冠宇 - 資深軟體測試工程師",
  author: "林冠宇",
  keywords: "測試自動化, 效能與負載測試, API 測試, 測試管理與流程, 程式與資料庫",
  description: "Résumé of 林冠宇",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林冠宇]] #v(-0.2em)

#text(size: 1.44em)[資深軟體測試工程師]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kuanyu.lin@example.com")[kuanyu\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://kuanyulin.dev")[https\:\/\/kuanyulin\.dev]

中國臺灣，台北市，台北市，台北市信義區松仁路 100 號，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kuanyulin")[kuanyulin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/kuanyulin")[kuanyulin]
]

= 簡介

#resume-pad[
- 擁有 8 年軟體測試經驗，專精於自動化測試框架設計與導入
- 熟悉 Web、API 與行動裝置應用程式測試，具備紮實的程式開發能力
- 擅長建立測試流程與品質指標，推動 CI\/CD 與測試左移
- 具備跨團隊溝通與專案管理能力，能有效提升產品品質與交付效率
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][學士，資訊工程學系，成績：3\.9\/4\.0][2012年9月–2016年6月]
- 主修資訊工程，奠定紮實的程式設計與系統分析基礎
- 專題研究聚焦於軟體測試與品質保證，獲得系上專題競賽優等
- 擔任系學會資訊組組長，負責系網維護與活動系統開發
#strong[課程]：資料結構、演算法、作業系統、資料庫系統、軟體工程、計算機網路、程式設計、離散數學
]

= 工作經歷
#resume-pad[
#resume-subheading[資深品質保證工程師][#link("https://www.trendmicro.com")[https\:\/\/www\.trendmicro\.com]][趨勢科技][2020年1月至今]
- 負責雲端安全產品（CWPP）的整體測試策略規劃與執行，涵蓋功能、效能、安全性與相容性測試
- 主導建置以 Pytest 與 Selenium 為基礎的端到端自動化測試框架，將回歸測試時間從 3 天縮短至 4 小時
- 導入測試左移流程，與開發團隊協作於 CI\/CD 管道中執行單元測試與整合測試，提升版本交付品質
- 建立品質指標與測試覆蓋率報告，定期向產品與工程團隊彙報，推動持續改善
- 指導 3 位初階測試工程師，協助其熟悉自動化測試與缺陷管理流程
#strong[關鍵字]：自動化測試、雲端安全、Pytest、Selenium、CI\/CD、測試策略

#resume-subheading[品質保證工程師][#link("https://www.mediatek.com")[https\:\/\/www\.mediatek\.com]][聯發科技][2016年7月–2019年12月]
- 負責行動晶片平台之相容性與效能測試，確保產品符合業界標準與客戶需求
- 設計並執行測試計畫，涵蓋 Android 相容性測試（CTS）、效能基準測試與功耗測試
- 開發自動化測試腳本（Java、Python），整合 Jenkins 以實現每日建置與測試
- 分析測試結果並追蹤缺陷，與硬體、軟體及客戶團隊協作解決問題
- 撰寫測試報告與技術文件，協助提升團隊測試效率與知識分享
#strong[關鍵字]：嵌入式測試、效能測試、Android CTS、Java、Jenkins、缺陷追蹤
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、技術文件撰寫、跨國團隊溝通])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[測試自動化]：專家], [#strong[關鍵字]：Selenium、Cypress、Appium、Pytest、Python])

#grid(columns: (1fr, auto), align: (left, right), [#strong[效能與負載測試]：高級], [#strong[關鍵字]：JMeter、Locust、Gatling、k6])

#grid(columns: (1fr, auto), align: (left, right), [#strong[API 測試]：高級], [#strong[關鍵字]：Postman、REST Assured、Swagger、GraphQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[測試管理與流程]：高級], [#strong[關鍵字]：JIRA、TestRail、Agile、Scrum、CI\/CD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式與資料庫]：中級], [#strong[關鍵字]：Python、Java、SQL、Git、Docker])
]

= 榮譽
#resume-pad[
#resume-subheading[年度卓越員工獎][][趨勢科技][2023年12月]
表揚在雲端安全產品測試自動化與品質流程改善上的傑出貢獻，成功將回歸測試時間縮短 90%。

#resume-subheading[黑客松最佳測試創新獎][][台灣軟體測試社群][2021年11月]
以「智慧型測試案例生成器」為題，運用機器學習分析使用者行為並自動產生高覆蓋率測試案例，獲得評審青睞。
]

= 證書
#resume-pad[
#resume-subheading[ISTQB 進階測試經理認證][#link("https://www.istqb.org/certifications/advanced-level-test-manager")[https\:\/\/www\.istqb\.org\/certifications\/advanced\-level\-test\-manager]][ISTQB][2021年3月]

#resume-subheading[AWS 雲端從業人員認證][#link("https://aws.amazon.com/certification/certified-cloud-practitioner/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-cloud\-practitioner\/]][AWS][2022年8月]

#resume-subheading[認證 ScrumMaster][#link("https://www.scrumalliance.org/get-certified/scrum-master-track/certified-scrummaster")[https\:\/\/www\.scrumalliance\.org\/get\-certified\/scrum\-master\-track\/certified\-scrummaster]][Scrum Alliance][2020年6月]
]

= 出版刊物
#resume-pad[
#resume-subheading[建構高覆蓋率自動化測試框架的實務指南][#link("https://www.softwaretesting.tw/articles/automation-framework-guide")[https\:\/\/www\.softwaretesting\.tw\/articles\/automation\-framework\-guide]][軟體測試技術月刊][2022年5月]
- 探討如何從零開始建構可維護、可擴展的自動化測試框架
- 分享實際案例與程式碼範例，涵蓋 Page Object Model 與資料驅動測試
- 提供測試覆蓋率與品質指標的衡量方法
]

= 項目
#resume-pad[
#resume-subheading[雲端安全產品自動化測試框架][#link("https://github.com/kuanyulin/cloud-security-test-framework")[https\:\/\/github\.com\/kuanyulin\/cloud\-security\-test\-framework]][為雲端安全產品設計與實作端到端自動化測試框架][2021年1月–2022年12月]
- 採用 Pytest 與 Selenium 建構模組化測試框架，支援多環境與多瀏覽器執行
- 整合 Docker 與 Jenkins，實現每日自動化回歸測試與報告產出
- 測試覆蓋率提升至 85%，缺陷漏檢率降低 40%
#strong[關鍵字]：自動化測試、Pytest、Selenium、Docker、Jenkins

#resume-subheading[行動裝置效能測試工具][#link("https://github.com/kuanyulin/mobile-perf-tool")[https\:\/\/github\.com\/kuanyulin\/mobile\-perf\-tool]][開發輕量級行動裝置效能測試工具，用於監控 CPU、記憶體與電量消耗][2019年3月–2019年11月]
- 使用 Python 與 ADB 開發效能資料收集與視覺化工具
- 支援多款 Android 裝置，協助團隊快速定位效能瓶頸
- 工具導入後，效能問題平均修復時間縮短 30%
#strong[關鍵字]：效能測試、Python、ADB、Android、資料視覺化
]

= 興趣愛好
#resume-pad[
#strong[登山]：百岳、健行、露營

#strong[攝影]：風景攝影、街拍

#strong[閱讀]：技術書籍、科幻小說
]

= 志願服務
#resume-pad[
#resume-subheading[志工講者][#link("https://www.softwaretesting.tw")[https\:\/\/www\.softwaretesting\.tw]][台灣軟體測試社群][2021年1月–2023年12月]
- 定期於社群 meetup 分享自動化測試實務經驗與最佳實踐
- 協助籌辦年度軟體測試研討會，吸引超過 300 位參與者
- 參與開源測試工具推廣，翻譯技術文件並貢獻測試案例
]