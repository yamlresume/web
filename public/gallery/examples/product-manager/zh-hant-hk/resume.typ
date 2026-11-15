#set document(
  title: "陳雅婷 - 資深產品經理 | 金融科技與數碼解決方案",
  author: "陳雅婷",
  keywords: "產品管理, 數據分析, 用戶體驗設計, 商業工具",
  description: "Résumé of 陳雅婷",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳雅婷]] #v(-0.2em)

#text(size: 1.44em)[資深產品經理 | 金融科技與數碼解決方案]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ngating.chan@example.com")[ngating\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/ngatingchan")[https\:\/\/www\.linkedin\.com\/in\/ngatingchan]

中國香港，香港島，香港，香港鰂魚涌英皇道 979 號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/ngatingchan")[ngatingchan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@ngatingchan")[ngatingchan]
]

= 簡介

#resume-pad[
擁有超過 8 年產品管理經驗的資深產品經理，專注於金融科技、電子商貿及流動應用程式領域。擅長由 0 到 1 建立產品，並通過數據驅動決策、用戶研究及跨團隊協作，持續提升產品價值及用戶體驗。

- 主導多個大型數碼產品項目，涵蓋流動銀行、數碼支付及零售電商，累計服務用戶超過 200 萬
- 熟悉敏捷開發、精實啟動及 OKR 管理，能夠有效協調工程、設計、市場及業務團隊
- 擁有數據分析及 A\/B 測試實戰經驗，利用 SQL、Amplitude、Mixpanel 等工具制定產品策略
- 具備國際視野及本地市場洞察，能靈活應對瞬息萬變的業務需求
]

= 教育背景
#resume-pad[
#resume-subheading[香港中文大學][#link("https://www.cuhk.edu.hk/")[https\:\/\/www\.cuhk\.edu\.hk\/]][學士，工商管理學士（資訊系統），成績：3\.7][2010年9月–2014年7月]
- 主修資訊系統，副修市場學，畢業論文探討流動支付在香港的普及因素
- 擔任學生會資訊科技幹事，統籌校園數碼轉型項目
- 獲院長嘉許名單（Dean\'s List）兩次
#strong[課程]：產品管理與開發、數據庫管理、電子商貿策略、市場研究與分析、資訊系統審計、企業架構
]

= 工作經歷
#resume-pad[
#resume-subheading[高級產品經理][#link("https://www.smartfintech.com.hk")[https\:\/\/www\.smartfintech\.com\.hk]][智融香港有限公司][2022年4月至今]
- 主導新一代流動銀行應用程式的產品規劃，由研究、設計、開發至上市全程管理，用戶評分提升至 4\.8 星
- 與工程、設計、風控及合規團隊緊密合作，確保產品符合金管局監管要求及銀行安全標準
- 制定並執行產品路線圖，利用 OKR 框架與持份者對齊目標，按季度交付 15 項以上功能更新
- 建立數據分析機制，透過 A\/B 測試優化入門流程，令新用戶轉換率提升 32%
- 帶領 3 名產品助理及 2 名產品設計師，建立以用戶為中心的產品文化
#strong[關鍵字]：金融科技、流動銀行、產品路線圖、A\/B 測試、敏捷開發、持份者管理

#resume-subheading[產品經理][#link("https://www.digitalpay.com.hk")[https\:\/\/www\.digitalpay\.com\.hk]][數碼支付香港有限公司][2018年7月–2022年3月]
- 負責數碼錢包及電子支付產品的端到端交付，包括 QR Code 支付、P2P 轉賬及商戶管理系統
- 與超過 50 間合作商戶進行需求訪談，設計並推出商家促銷及會員積分功能，帶動交易量增長 45%
- 利用 SQL 及 Amplitude 分析用戶行為，提出並落實減低支付失敗率的措施，成功將失敗率由 3\.5% 降至 1\.8%
- 參與 Scrum 團隊，擔任 Product Owner，撰寫用戶故事及驗收準則，確保每個 Sprint 按時交付
#strong[關鍵字]：數碼支付、Fintech、用戶研究、SQL、Product Owner、電子錢包

#resume-subheading[助理產品經理][#link("https://www.globalecom.io")[https\:\/\/www\.globalecom\.io]][環球電商方案有限公司][2015年8月–2018年6月]
- 協助高級產品經理管理 B2B 電子商貿平台的功能開發，涵蓋商品管理、訂單處理及物流追蹤模組
- 撰寫產品需求文件（PRD），與工程師及設計師協作進行功能驗收，確保產品質素
- 定期分析網站流量及銷售數據，為團隊提供營運建議，推動平均訂單價值提升 18%
- 協調客戶服務部門處理用戶反饋，整理常見問題並優化自助服務流程
#strong[關鍵字]：B2B、電子商貿、PRD、數據分析、客戶成功
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS Overall 8\.0、TOEIC 950])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[產品管理]：專家], [#strong[關鍵字]：產品策略、路線圖規劃、用戶故事、敏捷／Scrum、持份者管理、競品分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析]：高級], [#strong[關鍵字]：SQL、Amplitude、Mixpanel、Google Analytics、A\/B Testing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[用戶體驗設計]：中級], [#strong[關鍵字]：Figma、用戶訪談、可用性測試、Wireframe、用戶流程圖])

#grid(columns: (1fr, auto), align: (left, right), [#strong[商業工具]：專家], [#strong[關鍵字]：Jira、Confluence、Notion、Tableau、Excel])
]

= 榮譽
#resume-pad[
#resume-subheading[香港金融科技發展獎（最佳流動支付體驗）][][香港金融科技協會][2021年10月]
憑藉數碼錢包產品的創新功能和用戶體驗設計，獲頒「最佳流動支付體驗」獎項，表揚團隊在支付流程簡化及安全合規方面的卓越表現。
]

= 證書
#resume-pad[
#resume-subheading[Certified Scrum Product Owner (CSPO)][#link("https://www.scrumalliance.org/")[https\:\/\/www\.scrumalliance\.org\/]][Scrum Alliance][2019年6月]

#resume-subheading[高級產品管理專業證書][#link("https://www.hkpm.org.hk")[https\:\/\/www\.hkpm\.org\.hk]][香港產品管理學會][2020年8月]
]

= 出版刊物
#resume-pad[
#resume-subheading[數碼產品經理必須掌握的數據分析方法][#link("https://medium.com/@ngatingchan/data-driven-product-management")[https\:\/\/medium\.com\/\@ngatingchan\/data\-driven\-product\-management]][Medium][2022年3月]
分享如何利用 SQL 及 A\/B 測試制定產品決策，並以實際案例說明數據分析在金融科技產品中的應用。
]

= 項目
#resume-pad[
#resume-subheading[投資知識學習平台「理財新手村」][#link("https://www.finlearn.hk")[https\:\/\/www\.finlearn\.hk]][一款專為年輕用戶設計的互動理財學習應用程式，利用遊戲化元素提升金融知識普及率。][2023年1月–2023年7月]
- 針對 18\-30 歲用戶缺乏理財知識的痛點，主導產品概念開發及用戶驗證
- 與教育機構及設計顧問合作，設計 12 個互動課程及投資情境模擬
- 上線三個月內錄得超過 10,000 名註冊用戶，課程完成率達 68%
#strong[關鍵字]：金融教育、遊戲化、用戶研究、產品設計
]

= 興趣愛好
#resume-pad[
#strong[閱讀]：商業書籍、行為經濟學、科技趨勢

#strong[戶外活動]：行山、露營、跑步
]

= 志願服務
#resume-pad[
#resume-subheading[義務導師][#link("https://www.hkpmassociation.org")[https\:\/\/www\.hkpmassociation\.org]][香港產品經理協會][2020年1月–2023年12月]
- 為轉職產品管理人士提供一對一職業指導，分享求職及面試技巧
- 定期主持工作坊，主題包括「從 0 到 1 建立產品」及「數據驅動決策」
- 協助協會舉辦年度研討會，邀請業界領袖分享最新產品管理趨勢
]