#set document(
  title: "陳怡君 - 資料科學家 | 機器學習與數據分析",
  author: "陳怡君",
  keywords: "機器學習, 資料分析與統計, 資料工程, 資料視覺化",
  description: "Résumé of 陳怡君",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳怡君]] #v(-0.2em)

#text(size: 1.44em)[資料科學家 | 機器學習與數據分析]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yichun.chen@datasci.tw")[yichun\.chen\@datasci\.tw] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://yichun-ds.tw")[https\:\/\/yichun\-ds\.tw]

中國臺灣，台北市，台北市，台北市大安區信義路三段 100 號，106

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yichun-data")[yichun\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yichunchen")[yichunchen] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yichun.ds")[yichun\.ds]
]

= 簡介

#resume-pad[
我是一位擁有 6 年經驗的資料科學家，專精於機器學習、統計分析與大數據處理，擅長從複雜資料中挖掘商業洞見。

- 主導多項端到端資料科學專案，包括推薦系統、客戶流失預測與需求預測
- 具備將模型導入生產環境的實務經驗，熟悉 GCP、AWS 等雲端服務
- 重視跨部門溝通，能將技術成果轉化為具體商業決策
- 持續學習新技術，並熱衷於透過 Medium 分享資料科學知識
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][碩士，資料科學學程，成績：4\.2][2015年9月–2017年7月]
研究方向為可解釋機器學習與推薦系統，碩士論文題目為「基於注意力機制之可解釋推薦模型」。擔任統計學助教，並協助教授整理實驗資料。
#strong[課程]：機器學習、統計推論、深度學習、大數據分析、資料視覺化

#resume-subheading[國立清華大學][#link("https://www.nthu.edu.tw")[https\:\/\/www\.nthu\.edu\.tw]][學士，數學系（雙主修資訊工程），成績：3\.9][2011年9月–2015年7月]
建立紮實的數學與程式基礎，參與系上專題競賽，並於大三暑期至科技公司實習，負責資料前處理與初步分析。
#strong[課程]：微積分、線性代數、機率論、統計學、程式設計
]

= 工作經歷
#resume-pad[
#resume-subheading[資深資料科學家][#link("https://www.datacloud.com.tw")[https\:\/\/www\.datacloud\.com\.tw]][雲端數據科技股份有限公司][2021年3月至今]
- 主導客戶流失預測專案，整合 CRM、交易與行為數據，建立 XGBoost 模型，精準率提升 25%
- 開發個人化推薦系統，結合協同過濾與深度學習，帶動部門營收成長 18%
- 設計 A\/B 測試評估框架，協助產品團隊建立數據驅動的決策流程
- 負責資料科學團隊的 code review 與技術分享，提升團隊整體開發品質
#strong[關鍵字]：客戶流失預測、推薦系統、深度學習、A\/B 測試、團隊領導

#resume-subheading[資料科學家][#link("https://www.smartretail.tw")[https\:\/\/www\.smartretail\.tw]][智慧零售顧問有限公司][2017年8月–2021年2月]
- 建立門市銷售預測模型，整合歷史銷售、天氣與促銷活動資料，預測誤差降低 30%
- 建置客戶分群系統，利用 RFM 分析與 K\-Means 分群，協助行銷團隊規劃精準行銷活動
- 開發自動化報表流程，以 Python 與 Airflow 取代人工產出，每月節省 20 人時
- 與工程團隊協作，將模型包裝為 RESTful API 並部署至雲端環境
#strong[關鍵字]：銷售預測、RFM 分析、K\-Means、Airflow、API 部署
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語、商務溝通與簡報])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、技術文件閱讀與撰寫])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[機器學習]：專家], [#strong[關鍵字]：Python、scikit\-learn、XGBoost、PyTorch、自然語言處理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料分析與統計]：專家], [#strong[關鍵字]：SQL、R、統計檢定、時間序列分析、實驗設計])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料工程]：高級], [#strong[關鍵字]：Apache Spark、Airflow、dbt、Docker、雲端服務])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料視覺化]：高級], [#strong[關鍵字]：Tableau、Looker、Matplotlib、Plotly、資料故事化])
]

= 榮譽
#resume-pad[
#resume-subheading[台灣資料科學競賽金牌獎][][台灣資料科學協會][2022年11月]
以自動化機器學習平台參賽，自 300 多組隊伍中脫穎而出，獲得金牌獎。
]

= 證書
#resume-pad[
#resume-subheading[AWS Certified Machine Learning – Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2023年4月]

#resume-subheading[Google Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google][2021年6月]
]

= 出版刊物
#resume-pad[
#resume-subheading[基於注意力機制之可解釋推薦模型][#link("https://doi.org/10.1007/s41060-022-00300-5")[https\:\/\/doi\.org\/10\.1007\/s41060\-022\-00300\-5]][國際資料科學與分析期刊][2022年3月]
提出結合注意力機制與可解釋性的推薦系統架構，在公開資料集上取得領先成果，並深入探討模型決策的透明性。
]

= 項目
#resume-pad[
#resume-subheading[即時人流預測系統][#link("https://github.com/yichun-data/people-flow-forecast")[https\:\/\/github\.com\/yichun\-data\/people\-flow\-forecast]][整合政府開放資料與天氣資料，預測商圈即時人流，協助零售業者進行營運調度。][2023年1月–2023年6月]
- 使用 LightGBM 與時間序列特徵，預測準確度達 92%
- 部署至 GCP Cloud Run，並提供 REST API 供內部系統串接
- 設計資料監控流程，確保模型穩定性
#strong[關鍵字]：時間序列、LightGBM、GCP、開放資料

#resume-subheading[自動化機器學習平台][#link("https://github.com/yichun-data/automl-platform")[https\:\/\/github\.com\/yichun\-data\/automl\-platform]][建置可重現的 AutoML 流程，簡化模型訓練與部署。][2022年3月–2022年12月]
- 以 Kubeflow 與 MLflow 搭建機器學習生命週期管理平台
- 支援多團隊協作與模型版本管理，降低 40% 模型上線時間
- 整合 CI\/CD 流程，提升開發效率與可靠性
#strong[關鍵字]：AutoML、Kubeflow、MLflow、CI\/CD
]

= 興趣愛好
#resume-pad[
#strong[閱讀]：資料科學、經濟學、科幻小說

#strong[戶外活動]：登山、自行車、路跑
]

= 志願服務
#resume-pad[
#resume-subheading[志工講師][#link("https://www.datascitw.org")[https\:\/\/www\.datascitw\.org]][資料科學教育協會][2019年1月–2023年12月]
- 協助舉辦資料科學工作坊與線上課程，累計教導超過 500 名學員
- 維護開源教材，推廣資料素養教育
- 輔導學生完成實作專案，並提供職涯建議
]