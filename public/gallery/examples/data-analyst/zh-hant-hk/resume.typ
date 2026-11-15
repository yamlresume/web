#set document(
  title: "陳慧敏 - 數據分析師 / 商業智能分析",
  author: "陳慧敏",
  keywords: "數據分析, 資料庫及 SQL, 商業智能及視覺化, 機器學習基礎, 數據工程",
  description: "Résumé of 陳慧敏",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳慧敏]] #v(-0.2em)

#text(size: 1.44em)[數據分析師 \/ 商業智能分析]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:waimanch.chan@outlook.com")[waimanch\.chan\@outlook\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://wmchan-data.github.io")[https\:\/\/wmchan\-data\.github\.io]

中國香港，香港島，香港，香港中環金融街8號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/wmchan-data")[wmchan\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/wmchan-data")[wmchan\-data]
]

= 簡介

#resume-pad[
- 具 5 年商業數據分析經驗，擅長從龐大數據中發掘業務洞察，支援管理層決策
- 精通 SQL、Python 及 Power BI，熟悉 ETL 流程、數據倉庫及 A\/B 測試設計
- 曾主導多個跨部門數據項目，包括客戶流失預測、銷售預測及風險監察儀表板
- 善於以視覺化方式向非技術持分者清晰傳遞分析結果，推動數據驅動文化
]

= 教育背景
#resume-pad[
#resume-subheading[香港科技大學][#link("https://www.hkust.edu.hk")[https\:\/\/www\.hkust\.edu\.hk]][學士，數據科學及商業智能，成績：3\.6 \/ 4\.0][2017年9月–2021年7月]
- 主修課程涵蓋統計模型、機器學習、數據庫管理及商業智能
- 畢業專題為「香港中小企客戶流失預測模型」，獲學系最佳專題獎
- 副修計算機科學，具備扎實的程式設計及數據處理基礎
#strong[課程]：數據庫管理系統、統計推斷、機器學習、商業分析、資料視覺化、時間序列分析、風險管理與金融科技、大數據計算
]

= 工作經歷
#resume-pad[
#resume-subheading[數據分析師][#link("https://www.hkma.gov.hk")[https\:\/\/www\.hkma\.gov\.hk]][香港金融管理局][2023年7月至今]
- 為貨幣穩定及金融體系監察團隊建立自動化數據儀表板，每日處理超過 500 萬筆交易數據
- 利用 Python 及 SQL 整合內部數據倉庫，縮短報表編製時間約 40%
- 與經濟研究部門合作，以時間序列模型分析銀行體系流動性風險
- 定期向高級管理層提交數據分析報告，協助制訂監管政策
#strong[關鍵字]：Python、SQL、Tableau、時間序列分析、風險監察

#resume-subheading[商業數據分析助理][#link("https://www.hangseng.com")[https\:\/\/www\.hangseng\.com]][恒生銀行][2021年8月–2023年6月]
- 協助零售銀行部門設計客戶消費行為分析框架，支援信用卡及貸款產品策略
- 建立 Power BI 儀表板追蹤客戶忠誠度及產品滲透率，每月節省約 20 工時
- 進行 A\/B 測試評估數碼推廣活動成效，並提出具體優化建議
- 整理及清洗來自多個來源的客戶數據，確保數據品質及合規
#strong[關鍵字]：Power BI、A\/B 測試、數據清洗、客戶分析
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：粵語、普通話、繁體中文])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5、職場英語、技術簡報])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析]：專家], [#strong[關鍵字]：Python、Pandas、NumPy、Jupyter Notebook、統計分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料庫及 SQL]：專家], [#strong[關鍵字]：PostgreSQL、MySQL、BigQuery、SQL Server、資料倉庫])

#grid(columns: (1fr, auto), align: (left, right), [#strong[商業智能及視覺化]：高級], [#strong[關鍵字]：Power BI、Tableau、Looker Studio、Excel、儀表板設計])

#grid(columns: (1fr, auto), align: (left, right), [#strong[機器學習基礎]：中級], [#strong[關鍵字]：Scikit\-learn、迴歸分析、分類模型、集群分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據工程]：中級], [#strong[關鍵字]：ETL、Apache Airflow、dbt、資料建模])
]

= 榮譽
#resume-pad[
#resume-subheading[香港科技大學院長嘉許名單][][香港科技大學][2021年6月]
連續三個學期入選院長嘉許名單，表揚學業成績優異及對大學社區的貢獻。
]

= 證書
#resume-pad[
#resume-subheading[Microsoft 認證：Power BI 數據分析師助理（PL\-300）][#link("https://learn.microsoft.com/en-us/certifications/power-bi-data-analyst-associate/")[https\:\/\/learn\.microsoft\.com\/en\-us\/certifications\/power\-bi\-data\-analyst\-associate\/]][Microsoft][2024年1月]

#resume-subheading[Tableau Desktop 專家認證][#link("https://www.tableau.com/learn/certification/desktop-specialist")[https\:\/\/www\.tableau\.com\/learn\/certification\/desktop\-specialist]][Tableau][2023年3月]

#resume-subheading[Google 數據分析專業證書][#link("https://www.coursera.org/professional-certificates/google-data-analytics")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-data\-analytics]][Google][2022年8月]
]

= 出版刊物
#resume-pad[
#resume-subheading[香港虛擬銀行用戶行為研究報告][#link("https://www.hkfta.org/research/virtual-bank-users-2023")[https\:\/\/www\.hkfta\.org\/research\/virtual\-bank\-users\-2023]][香港金融科技協會][2023年10月]
- 以 1,200 名受訪者數據分析虛擬銀行用戶的採用障礙及使用習慣
- 提出改善用戶體驗及數碼營銷策略的具體建議
]

= 項目
#resume-pad[
#resume-subheading[香港零售銷售預測儀表板][#link("https://github.com/wmchan-data/retail-forecast-dashboard")[https\:\/\/github\.com\/wmchan\-data\/retail\-forecast\-dashboard]][一個以 Python 及 Power BI 開發的互動式零售銷售預測平台，整合公開數據與 API，為管理層提供決策支援。][2023年3月–2023年6月]
- 利用 Python 及 Prophet 建立月度銷售預測模型，平均絕對百分比誤差低於 12%
- 以 Power BI 建立互動儀表板，讓管理層掌握不同店舖及產品類別的銷售趨勢
- 設計自動化數據更新流程，每日從 API 抽取數據並重新訓練模型
#strong[關鍵字]：Python、Prophet、Power BI、時間序列、API
]

= 興趣愛好
#resume-pad[
#strong[開放資料]：香港政府資料一線通、資料新聞學、開放街圖

#strong[運動]：跑步、行山、瑜伽
]

= 志願服務
#resume-pad[
#resume-subheading[數據分析義工][#link("https://www.redcross.org.hk")[https\:\/\/www\.redcross\.org\.hk]][香港紅十字會][2023年1月至今]
- 為籌款活動整理及分析歷年捐贈者數據，識別高潛在捐款群組
- 建立活動成效儀表板，協助團隊更有效地分配宣傳資源
]