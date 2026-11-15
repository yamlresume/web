#set document(
  title: "林佳穎 - 產品經理 | 8 年軟體與金融科技產品經驗 | 數據驅動決策",
  author: "林佳穎",
  keywords: "產品管理, 數據分析, 專案管理",
  description: "Résumé of 林佳穎",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林佳穎]] #v(-0.2em)

#text(size: 1.44em)[產品經理 | 8 年軟體與金融科技產品經驗 | 數據驅動決策]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chia.ying.lin@example.tw")[chia\.ying\.lin\@example\.tw] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/chiaying-lin")[https\:\/\/www\.linkedin\.com\/in\/chiaying\-lin]

中國臺灣，大安區，台北市，106

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chiaying-lin")[chiaying\-lin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/chiayinglin")[chiayinglin]
]

= 簡介

#resume-pad[
擁有 8 年以上軟體與金融科技產品管理經驗的產品經理，擅長從 0 到 1 打造產品，也熟悉產品成熟期的迭代與優化。

- 主導過 20\+ 個跨國、跨團隊專案，涵蓋行動支付、數位帳戶、電商推薦等領域
- 以數據分析與用戶研究為核心，制定產品策略與路線圖，成功提升 DAU 與轉換率
- 熟悉 Scrum 開發流程，善於與工程、設計、業務團隊協作，建立高效敏捷團隊
- 具備 SQL、Amplitude、Google Analytics 等數據工具能力，能獨立完成分析並驅動決策
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][學士，資訊管理學系，成績：3\.9][2011年9月–2015年6月]
- 主修資訊管理，具備扎實的資訊系統與商業管理雙領域知識
- 以「線上購物平台的推薦系統」專題獲選為畢業專題競賽佳作
#strong[課程]：資料庫管理、系統分析與設計、行銷管理、統計學、電子商務
]

= 工作經歷
#resume-pad[
#resume-subheading[資深產品經理][][雲端金融科技股份有限公司][2022年3月至今]
- 負責行動支付 App 之產品策略、路線圖規劃與需求優先級排序，涵蓋 iOS、Android、Web 三端
- 帶領 2 位產品設計師與 3 位數據分析師，與 6 個 Scrum Team 協作，年度目標達成率 120%
- 主導「一鍵轉帳」與「電子發票載具」功能，上線 3 個月內提升月活躍用戶 35%
- 建立用戶回饋與數據監控機制，運用 SQL 與 Amplitude 進行留存分析，降低 15% 用戶流失率
#strong[關鍵字]：產品策略、行動支付、Scrum、SQL、Amplitude

#resume-subheading[產品經理][][樂購電子商務股份有限公司][2019年7月–2022年2月]
- 負責電商平台會員系統與個人化推薦功能，與工程、設計、行銷團隊協作完成季度產品目標
- 運用 A\/B 測試優化商品詳情頁，將下單轉換率提升 18%
- 導入用戶訪談與問卷調查機制，整理 200\+ 位用戶回饋，驅動產品迭代方向
- 透過 GA 與內部數據儀表板監控關鍵指標，建立產品績效追蹤流程
#strong[關鍵字]：電商平台、A\/B 測試、Google Analytics、用戶研究

#resume-subheading[助理產品經理][][數位導航科技股份有限公司][2017年7月–2019年6月]
- 協助產品經理進行競品分析、需求文件撰寫與原型設計
- 負責地圖導航 App 之數據報表產出，定期追蹤 DAU、留存率與功能使用率
- 與客服團隊合作建立問題分級機制，縮短 30% 問題回應時間
#strong[關鍵字]：競品分析、Axure、數據報表
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 910、商務簡報、跨國會議])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[產品管理]：專家], [#strong[關鍵字]：產品策略、產品路線圖、需求分析、競品分析、用戶故事、優先級排序])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析]：高級], [#strong[關鍵字]：SQL、Amplitude、Google Analytics、A\/B 測試、Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[專案管理]：高級], [#strong[關鍵字]：Scrum、Kanban、JIRA、Confluence、Figma])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳產品獎][][雲端金融科技股份有限公司][2023年12月]
以「電子發票載具」專案獲得內部年度最佳產品獎，肯定其對用戶價值與商業指標的卓越貢獻。
]

= 證書
#resume-pad[
#resume-subheading[Certified Scrum Product Owner (CSPO)][#link("https://www.scrumalliance.org/")[https\:\/\/www\.scrumalliance\.org\/]][Scrum Alliance][2021年6月]

#resume-subheading[Google Analytics Individual Qualification][#link("https://skillshop.exceedlms.com/")[https\:\/\/skillshop\.exceedlms\.com\/]][Google][2020年2月]
]

= 出版刊物
#resume-pad[
#resume-subheading[從用戶數據到產品決策：行動支付產品經理實戰筆記][#link("https://medium.com/@chiaying-lin/product-data-decision")[https\:\/\/medium\.com\/\@chiaying\-lin\/product\-data\-decision]][產品思維電子報][2023年3月]
分享行動支付產品在用戶增長與留存優化上的數據分析方法與實務經驗。
]

= 項目
#resume-pad[
#resume-subheading[個人化商品推薦系統][#link("https://github.com/chiayinglin/recommendation-system")[https\:\/\/github\.com\/chiayinglin\/recommendation\-system]][與資料科學團隊合作，導入 LightGBM 與協同過濾演算法，並設計 A\/B 測試驗證成效。最終將首頁推薦點擊率提升 25%，並降低 10% 的跳出率。
][2021年3月–2021年8月]
主導電商平台個人化推薦系統建置，整合用戶行為數據與商品標籤，提升整體點擊率。
#strong[關鍵字]：推薦系統、A\/B 測試、LightGBM

#resume-subheading[行動支付用戶成長計畫][][結合用戶分眾、推播通知與新戶引導流程優化，在 6 個月內將每月新增用戶數提升 120%，並有效改善新戶次月留存率。
][2023年1月–2023年6月]
跨部門推動用戶成長專案，透過分眾行銷與產品功能優化，達成新增用戶翻倍目標。
#strong[關鍵字]：用戶成長、行銷自動化、留存分析
]

= 興趣愛好
#resume-pad[
#strong[閱讀]：產品設計、行為經濟學

#strong[旅行]：自助旅行、美食探索
]

= 志願服務
#resume-pad[
#resume-subheading[產品管理導師][][女力科技社群 Taiwan][2022年1月至今]
擔任產品管理線上課程導師，協助 30 位以上女性職場夥伴建立產品思維，並提供職涯發展建議。
]