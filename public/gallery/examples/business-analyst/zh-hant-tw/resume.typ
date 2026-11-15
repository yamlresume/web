#set document(
  title: "林怡君 - 資深商業分析師 | 數據驅動決策專家",
  author: "林怡君",
  keywords: "商業分析, 數據分析, 專案管理, 財務分析",
  description: "Résumé of 林怡君",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林怡君]] #v(-0.2em)

#text(size: 1.44em)[資深商業分析師 | 數據驅動決策專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yichun.lin@example.com")[yichun\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/yichunlin")[https\:\/\/www\.linkedin\.com\/in\/yichunlin]

中國臺灣，信義區，台北市，台北市信義區松仁路100號，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yichunlin")[yichunlin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yichunlin")[yichunlin]
]

= 簡介

#resume-pad[
- 具備 8 年以上商業分析經驗，專精於金融與電信產業的數據驅動決策
- 擅長需求訪談、流程優化與商業案例撰寫，成功協助企業提升營運效率達 20%
- 熟練運用 SQL、Python、Tableau 等工具進行數據分析與視覺化
- 擁有卓越的跨部門溝通與專案管理能力，能有效協調利害關係人達成目標
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][學士，企業管理學系，成績：3\.9][2010年9月–2014年6月]
- 主修企業管理，輔修資訊管理，奠定商業分析與數據處理的紮實基礎
- 畢業專題「電子商務消費者行為分析」獲得系上最佳專題獎
- 積極參與商業競賽，獲得全國大專院校商業個案大賽優勝
#strong[課程]：統計學、作業研究、財務管理、行銷管理、資訊管理、商業決策分析
]

= 工作經歷
#resume-pad[
#resume-subheading[資深商業分析師][#link("https://www.fubon.com")[https\:\/\/www\.fubon\.com]][富邦金融控股股份有限公司][2020年1月至今]
- 領導 5 人分析團隊，負責銀行與保險業務的數據分析與流程優化
- 主導智能客服導入專案，整合 NLP 技術，降低客服成本 30% 並提升客戶滿意度 15%
- 建立客戶流失預測模型，準確率達 85%，協助挽留高價值客戶，增加年營收 5,000 萬元
- 與 IT、業務、風控等部門協作，定義需求規格並確保專案如期交付
- 定期向高階管理層彙報分析結果與策略建議，推動數據驅動文化
#strong[關鍵字]：需求分析、流程優化、數據建模、利害關係人管理、金融科技

#resume-subheading[商業分析師][#link("https://www.taiwanmobile.com")[https\:\/\/www\.taiwanmobile\.com]][台灣大哥大股份有限公司][2016年7月–2019年12月]
- 負責電信資費方案與用戶行為分析，提供定價策略建議，提升 ARPU 8%
- 開發 Tableau 儀表板，即時監控關鍵績效指標，縮短報表產出時間 50%
- 執行客戶分群與生命周期管理，設計精準行銷活動，提升轉換率 12%
- 參與跨部門敏捷開發團隊，擔任產品負責人與開發團隊的橋樑
#strong[關鍵字]：電信分析、Tableau、客戶分群、定價策略、敏捷開發

#resume-subheading[初級商業分析師][#link("https://www2.deloitte.com/tw")[https\:\/\/www2\.deloitte\.com\/tw]][勤業眾信聯合會計師事務所][2014年9月–2016年6月]
- 協助金融業客戶進行流程梳理與系統需求訪談，撰寫商業需求文件
- 參與核心銀行系統升級專案，負責測試案例設計與使用者驗收測試
- 運用 SQL 進行數據驗證與差異分析，確保資料遷移正確性
- 獲得年度最佳新人獎，並提前晉升為商業分析師
#strong[關鍵字]：商業需求文件、流程梳理、系統測試、SQL、銀行系統
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、IELTS 7\.5])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[商業分析]：專家], [#strong[關鍵字]：需求訪談、流程優化、商業案例、利害關係人管理、使用者故事])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析]：高級], [#strong[關鍵字]：SQL、Python、Tableau、Excel、R])

#grid(columns: (1fr, auto), align: (left, right), [#strong[專案管理]：高級], [#strong[關鍵字]：Agile、Scrum、JIRA、風險管理、時程規劃])

#grid(columns: (1fr, auto), align: (left, right), [#strong[財務分析]：中級], [#strong[關鍵字]：財務建模、預算規劃、ROI分析、成本效益分析])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳員工][][富邦金融控股股份有限公司][2022年12月]
表彰在智能客服導入專案中展現卓越領導力與分析能力，成功降低營運成本並提升客戶體驗。

#resume-subheading[傑出專案獎][][台灣大哥大股份有限公司][2019年11月]
因客戶流失預測模型專案成效顯著，有效提升客戶留存率，獲頒年度傑出專案獎。
]

= 證書
#resume-pad[
#resume-subheading[Certified Business Analysis Professional (CBAP)][#link("https://www.iiba.org/certification/cbap")[https\:\/\/www\.iiba\.org\/certification\/cbap]][IIBA][2021年3月]

#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][PMI][2018年6月]
]

= 出版刊物
#resume-pad[
#resume-subheading[數據驅動的商業決策：台灣金融業的應用][#link("https://example.com/journal/article")[https\:\/\/example\.com\/journal\/article]][台灣管理學刊][2021年9月]
- 探討金融業如何運用大數據與機器學習優化商業決策流程
- 分析台灣多家銀行的實際案例，提出數據治理與分析框架建議
- 研究結果顯示數據驅動文化可顯著提升企業競爭力
]

= 項目
#resume-pad[
#resume-subheading[智能客服導入專案][#link("https://example.com/project/ai-customer-service")[https\:\/\/example\.com\/project\/ai\-customer\-service]][為富邦銀行導入AI智能客服系統，提升客戶服務效率與品質][2021年3月–2021年11月]
- 主導需求訪談與流程設計，整合NLP技術與現有客服系統
- 協調IT團隊與業務單位，確保系統符合使用者需求
- 上線後客服成本降低30%，客戶滿意度提升15%
#strong[關鍵字]：智能客服、NLP、流程設計、專案管理

#resume-subheading[客戶流失預測模型][#link("https://example.com/project/churn-prediction")[https\:\/\/example\.com\/project\/churn\-prediction]][建立機器學習模型預測客戶流失風險，協助制定挽留策略][2020年1月–2020年8月]
- 使用Python與Scikit\-learn建立分類模型，準確率達85%
- 分析客戶行為特徵，找出關鍵流失因子
- 協助業務團隊設計精準挽留方案，增加年營收5,000萬元
#strong[關鍵字]：機器學習、客戶流失、Python、預測模型
]

= 興趣愛好
#resume-pad[
#strong[閱讀]：商業策略、數據科學、歷史

#strong[運動]：馬拉松、游泳、登山
]

= 志願服務
#resume-pad[
#resume-subheading[志工講師][#link("https://www.tbaa.org.tw")[https\:\/\/www\.tbaa\.org\.tw]][台灣商業分析師協會][2022年3月至今]
- 定期舉辦商業分析工作坊，分享數據驅動決策的實務經驗
- 指導年輕分析師進行專案規劃與職涯發展
- 協助協會推廣商業分析專業認證與最佳實踐
]