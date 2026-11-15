#set document(
  title: "陳家豪 - 資深品質保證工程師 | 自動化測試專家",
  author: "陳家豪",
  keywords: "測試自動化, 效能測試, 程式語言, 測試管理, DevOps",
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

#text(size: 1.44em)[資深品質保證工程師 | 自動化測試專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kaho.chan@example.com")[kaho\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.kahochen.dev")[https\:\/\/www\.kahochen\.dev]

中國香港，香港島，香港，香港中環皇后大道中123號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kahochen")[kahochen] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/kahochen")[kahochen]
]

= 簡介

#resume-pad[
- 擁有超過 7 年品質保證及軟件測試經驗，專注於金融科技及電子商務領域
- 精通手動測試與自動化測試，熟練使用 Selenium、Appium、JMeter 及 Postman 等工具
- 具備紮實的程式能力（Python、Java、SQL），能開發穩健的自動化測試框架
- 熟悉敏捷開發流程，善於與跨職能團隊協作，推動品質文化
- 注重細節，具備優秀的問題分析與解決能力，致力於交付高品質軟件產品
]

= 教育背景
#resume-pad[
#resume-subheading[香港科技大學][#link("https://www.ust.hk")[https\:\/\/www\.ust\.hk]][學士，計算機科學，成績：3\.6\/4\.0][2014年9月–2018年7月]
- 主修計算機科學，成績優異，連續三年獲院長嘉許名單
- 畢業論文專注於自動化測試框架的效能優化
- 積極參與編程比賽及黑客松，獲得校內外多個獎項
#strong[課程]：資料結構與演算法、軟件工程、資料庫系統、作業系統、計算機網絡、人機互動、網頁開發、移動應用開發
]

= 工作經歷
#resume-pad[
#resume-subheading[高級品質保證工程師][#link("https://www.hkdigitalbank.com")[https\:\/\/www\.hkdigitalbank\.com]][香港數碼銀行有限公司][2021年3月至今]
- 領導 5 人測試團隊，負責網上銀行及移動銀行應用程式的品質保證
- 設計並實現基於 Selenium 和 Appium 的自動化測試框架，覆蓋率提升至 85%
- 建立持續整合\/持續交付（CI\/CD）流程中的自動化測試閘門，縮短回歸測試時間 60%
- 與開發、產品及運維團隊緊密合作，推動敏捷開發中的測試左移實踐
- 制定測試策略、測試計劃及測試案例，確保符合金融監管要求
- 指導初級測試工程師，提升團隊整體技術水平
#strong[關鍵字]：自動化測試、Selenium、Appium、CI\/CD、敏捷開發、金融科技

#resume-subheading[品質保證工程師][#link("https://www.asiaecom.com")[https\:\/\/www\.asiaecom\.com]][亞洲電子商務集團][2018年8月–2021年2月]
- 負責電子商務平台（Web 及 Mobile）的功能測試、回歸測試及相容性測試
- 使用 Postman 及 RestAssured 進行 API 測試，確保前後端整合品質
- 利用 JMeter 執行效能測試，分析瓶頸並提出優化建議
- 管理缺陷生命周期，使用 JIRA 追蹤及驗證修復，缺陷關閉率達 98%
- 參與需求評審及設計評審，提前識別潛在品質風險
- 編寫測試報告及品質指標，定期向管理層匯報
#strong[關鍵字]：手動測試、API 測試、效能測試、JIRA、JMeter、電子商務

#resume-subheading[初級測試分析師][#link("https://www.innovativesoft.com")[https\:\/\/www\.innovativesoft\.com]][創新軟件解決方案有限公司][2017年7月–2018年7月]
- 執行手動測試案例，涵蓋功能、UI 及使用者驗收測試
- 協助開發及維護測試案例庫，確保測試覆蓋率
- 使用 SQL 查詢驗證後端資料完整性
- 參與每日站立會議及衝刺評審，跟進測試進度
- 學習並應用自動化測試工具（Selenium WebDriver）
#strong[關鍵字]：手動測試、SQL、測試案例、敏捷、Selenium
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[測試自動化]：專家], [#strong[關鍵字]：Selenium、Appium、Cypress、Playwright、RestAssured])

#grid(columns: (1fr, auto), align: (left, right), [#strong[效能測試]：高級], [#strong[關鍵字]：JMeter、LoadRunner、Gatling、效能分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式語言]：高級], [#strong[關鍵字]：Python、Java、SQL、JavaScript、Shell])

#grid(columns: (1fr, auto), align: (left, right), [#strong[測試管理]：專家], [#strong[關鍵字]：JIRA、TestRail、Zephyr、缺陷管理、測試策略])

#grid(columns: (1fr, auto), align: (left, right), [#strong[DevOps]：中級], [#strong[關鍵字]：Jenkins、GitLab CI、Docker、Git、Linux])
]

= 榮譽
#resume-pad[
#resume-subheading[最佳員工獎][][香港數碼銀行有限公司][2022年12月]
表彰在自動化測試框架轉型項目中的卓越貢獻，顯著提升測試效率及產品品質。

#resume-subheading[傑出項目獎][][亞洲電子商務集團][2020年11月]
於雙十一購物節品質保障項目中，帶領團隊實現零重大事故，確保平台穩定運行。
]

= 證書
#resume-pad[
#resume-subheading[ISTQB Certified Tester Advanced Level][#link("https://www.istqb.org/certifications/advanced-level")[https\:\/\/www\.istqb\.org\/certifications\/advanced\-level]][ISTQB][2020年6月]

#resume-subheading[AWS Certified Cloud Practitioner][#link("https://aws.amazon.com/certification/certified-cloud-practitioner/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-cloud\-practitioner\/]][Amazon Web Services][2021年9月]

#resume-subheading[Certified ScrumMaster][#link("https://www.scrumalliance.org/")[https\:\/\/www\.scrumalliance\.org\/]][Scrum Alliance][2022年3月]
]

= 出版刊物
#resume-pad[
#resume-subheading[自動化測試框架在金融系統中的實踐][#link("https://www.hkcs.org.hk/journal/automation-testing")[https\:\/\/www\.hkcs\.org\.hk\/journal\/automation\-testing]][香港電腦學會期刊][2022年8月]
- 探討如何設計可維護且高效的自動化測試框架
- 分享在金融監管環境下的測試策略與最佳實踐
- 分析自動化測試對回歸測試效率的影響
]

= 項目
#resume-pad[
#resume-subheading[智能測試案例生成器][#link("https://github.com/kahochen/test-case-generator")[https\:\/\/github\.com\/kahochen\/test\-case\-generator]][基於機器學習的測試案例自動生成工具][2023年1月–2023年6月]
- 利用自然語言處理技術分析需求文檔，自動生成測試案例草稿
- 減少手動編寫測試案例時間約 40%
- 支援與 TestRail 及 JIRA 整合
#strong[關鍵字]：機器學習、NLP、測試自動化、Python

#resume-subheading[移動銀行應用程式自動化測試套件][][為香港數碼銀行移動應用程式建立端到端自動化測試套件][2021年3月–2022年12月]
- 使用 Appium 及 Python 開發跨平台（iOS\/Android）自動化測試
- 整合至 Jenkins 流水線，每日自動執行超過 500 個測試案例
- 將回歸測試週期從 5 天縮短至 1 天
#strong[關鍵字]：Appium、Python、Jenkins、移動測試
]

= 興趣愛好
#resume-pad[
#strong[開源貢獻]：Selenium、Appium、自動化測試

#strong[戶外活動]：遠足、攝影、單車
]

= 志願服務
#resume-pad[
#resume-subheading[義工導師][#link("https://www.hkcs.org.hk")[https\:\/\/www\.hkcs\.org\.hk]][香港電腦學會][2019年9月至今]
- 為中學生舉辦編程及軟件測試工作坊，推廣科技教育
- 協助籌辦年度香港資訊科技大獎，擔任評審助理
- 參與社區數碼共融計劃，教導長者使用智能手機
]