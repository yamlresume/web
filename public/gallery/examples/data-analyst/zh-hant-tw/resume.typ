#set document(
  title: "林怡君 - 數據分析師｜商業智慧與資料視覺化",
  author: "林怡君",
  keywords: "資料分析, 資料視覺化, 程式語言, 機器學習, 工具與平台",
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

#text(size: 1.44em)[數據分析師｜商業智慧與資料視覺化]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yichun.lin@datainsight.tw")[yichun\.lin\@datainsight\.tw] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://github.com/yichunlin-data")[https\:\/\/github\.com\/yichunlin\-data]

中國臺灣，台北市，台北市，台北市中山區南京東路三段100號，104

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yichunlin-data")[yichunlin\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yichunlin-data")[yichunlin\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yichunlin-data")[yichunlin\-data]
]

= 簡介

#resume-pad[
具 5 年資料分析實務經驗，擅長從龐雜數據中挖掘商業洞見，並以視覺化工具協助決策。熟悉 SQL、Python 與 Tableau，曾主導客戶分群、流失預測與行銷成效分析專案，為企業提升營收與營運效率。具備跨部門溝通能力，能將分析結果轉化為具體行動方案。
]

= 教育背景
#resume-pad[
#resume-subheading[國立台灣大學][#link("https://www.ntu.edu.tw/")[https\:\/\/www\.ntu\.edu\.tw\/]][學士，資訊管理學系，成績：3\.9\/4\.0][2015\-09\-01–2019\-06\-30]
- 主修資訊管理，副修統計學，奠定資料分析與程式開發基礎
- 畢業專題以社群媒體文字探勘分析消費者情緒，獲得系上優良專題獎
- 修習多門資料科學相關課程，並以 Python 完成實作專案
#strong[課程]：統計學（一）（二）、資料庫管理、資料探勘、作業研究、程式設計與演算法、資訊管理導論
]

= 工作經歷
#resume-pad[
#resume-subheading[數據分析師][#link("https://www.taishinbank.com.tw/")[https\:\/\/www\.taishinbank\.com\.tw\/]][台新國際商業銀行][2022\-03\-01至今]
- 主導信用卡顧客分群與行為預測模型，協助行銷團隊設計個人化優惠方案，提升點擊率 25%
- 建立自動化 ETL 流程，整合跨部門交易與會員資料，縮短報表產出時間 40%
- 使用 SQL 與 Python 進行 A\/B 測試成效分析，提供產品迭代具體建議
- 開發 Tableau 經營儀表板，供高階主管即時掌握關鍵績效指標
#strong[關鍵字]：SQL、Python、Tableau、A\/B Testing、ETL、Data Modeling

#resume-subheading[商業數據分析助理][#link("https://www.taiwanmobile.com/")[https\:\/\/www\.taiwanmobile\.com\/]][台灣大哥大股份有限公司][2020\-07\-01–2022\-02\-28]
- 協助分析 4G\/5G 用戶使用行為，定期產出月報與專題分析簡報
- 整理與清理客戶服務歷程資料，建立流失預警規則，降低客戶流失率 12%
- 支援行銷活動成效評估，透過迴歸分析找出影響續約率的關鍵因素
#strong[關鍵字]：Excel、SAS、資料清理、迴歸分析、簡報製作
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、TOEFL iBT 105])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[資料分析]：專家], [#strong[關鍵字]：SQL、Python、Pandas、NumPy、統計檢定])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料視覺化]：高級], [#strong[關鍵字]：Tableau、Power BI、Google Data Studio、matplotlib])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式語言]：高級], [#strong[關鍵字]：Python、R、SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[機器學習]：中級], [#strong[關鍵字]：Scikit\-learn、XGBoost、分類模型、分群分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[工具與平台]：高級], [#strong[關鍵字]：Git、Airflow、dbt、Snowflake、BigQuery])
]

= 榮譽
#resume-pad[
#resume-subheading[第 10 屆台灣資料科學競賽 亞軍][][台灣資料科學協會][2021\-12\-10]
與團隊以電商客戶流失預測模型參賽，在 200 餘隊中獲得第二名，並於成果發表會展示分析流程。
]

= 證書
#resume-pad[
#resume-subheading[Google Data Analytics Professional Certificate][#link("https://coursera.org/verify/professional-cert/google-data-analytics")[https\:\/\/coursera\.org\/verify\/professional\-cert\/google\-data\-analytics]][Google][2021\-06\-30]

#resume-subheading[Tableau Desktop Specialist][#link("https://www.tableau.com/learn/certification")[https\:\/\/www\.tableau\.com\/learn\/certification]][Tableau][2022\-08\-15]
]

= 項目
#resume-pad[
#resume-subheading[客戶流失預測模型][#link("https://github.com/yichunlin-data/churn-prediction")[https\:\/\/github\.com\/yichunlin\-data\/churn\-prediction]][以電商訂單與會員互動資料建立流失預測模型，提供行銷團隊精準名單][2021\-03\-01–2021\-08\-31]
- 清理並整合 50 萬筆會員交易資料，設計 30 餘個特徵
- 比較 Logistic Regression、Random Forest 與 XGBoost 模型，最終 AUC 達 0\.87
- 以 SHAP 解釋模型重要變數，並轉換為行動建議供行銷團隊使用
#strong[關鍵字]：Python、Scikit\-learn、XGBoost、SHAP、Feature Engineering

#resume-subheading[即時銷售儀表板][#link("https://public.tableau.com/app/profile/yichunlin-data")[https\:\/\/public\.tableau\.com\/app\/profile\/yichunlin\-data]][串接 POS 系統資料，建立零售銷售即時監控儀表板][2022\-10\-01–2023\-01\-31]
- 使用 Tableau Prep 清理每日銷售資料，並以 Tableau 建立互動式儀表板
- 提供店鋪、商品、時段等多維度分析視圖，協助營運團隊掌握銷售趨勢
#strong[關鍵字]：Tableau、Tableau Prep、POS、即時監控
]

= 興趣愛好
#resume-pad[
#strong[資料科學社群]：Kaggle、資料松、讀書會

#strong[戶外運動]：登山、瑜珈、自行車
]

= 志願服務
#resume-pad[
#resume-subheading[講師][#link("https://codefortomorrow.org/")[https\:\/\/codefortomorrow\.org\/]][Code for Tomorrow（資料科學教育志工）][2022\-02\-01–2023\-12\-31]
- 至偏鄉國中教授基礎程式設計與資料分析概念，啟發學生對科技的興趣
- 協助設計互動式教材與小型實作專案，累計服務超過 100 名學生
]