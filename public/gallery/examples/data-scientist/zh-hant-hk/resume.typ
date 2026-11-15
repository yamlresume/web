#set document(
  title: "陳詠欣 - 數據科學家｜機器學習與大數據分析專家",
  author: "陳詠欣",
  keywords: "機器學習, 程式語言及工具, 大數據平台, 雲端及 MLOps",
  description: "Résumé of 陳詠欣",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳詠欣]] #v(-0.2em)

#text(size: 1.44em)[數據科學家｜機器學習與大數據分析專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9876 5432")[\+852 9876 5432] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:wingyan@wingyanchan.com")[wingyan\@wingyanchan\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.wingyanchan.com")[https\:\/\/www\.wingyanchan\.com]

中國香港，香港島，香港，香港中環皇后大道中100號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/wingyanchan")[wingyanchan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/wingyanchan")[wingyanchan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@wingyanchan")[wingyanchan]
]

= 簡介

#resume-pad[
擁有超過 6 年數據科學及機器學習經驗，專注於金融科技、智慧城市及零售分析等領域。

- 善於運用統計建模、機器學習及深度學習技術解決實際商業問題
- 熟悉大數據平台（Spark、Hadoop）及雲端服務（AWS、Azure）
- 具備端到端數據產品開發經驗，由數據收集、特徵工程到模型部署及監控
- 熱衷於把複雜的數據分析結果轉化為清晰的商業決策建議
- 擁有多項專業認證及期刊論文發表經驗
]

= 教育背景
#resume-pad[
#resume-subheading[香港大學][#link("https://www.hku.hk/")[https\:\/\/www\.hku\.hk\/]][碩士，數據科學，成績：3\.8\/4\.3][2017年9月–2019年7月]
- 以優異成績（Distinction）畢業，專注於機器學習及大數據分析
- 畢業論文題目為「基於深度學習的香港樓價預測模型」，獲學院最佳論文獎
- 擔任研究助理，協助教授進行自然語言處理相關研究
#strong[課程]：高級機器學習、大數據分析、統計學習理論、深度學習、數據可視化、雲端運算

#resume-subheading[香港中文大學][#link("https://www.cuhk.edu.hk/")[https\:\/\/www\.cuhk\.edu\.hk\/]][學士，計算機科學，成績：3\.5\/4\.3][2013年9月–2017年7月]
- 副修統計學，建立扎實的數學及程式設計基礎
- 參與多個編程比賽及黑客松，曾獲校內數據分析比賽冠軍
#strong[課程]：數據結構、算法設計、數據庫系統、概率與統計、人工智能
]

= 工作經歷
#resume-pad[
#resume-subheading[高級數據科學家][#link("https://www.thinktankdata.io")[https\:\/\/www\.thinktankdata\.io]][智庫數據科技有限公司][2020年1月至今]
- 領導數據科學團隊，為銀行及零售客戶開發風險評估及客戶分群模型
- 設計並部署基於 Python 及 Spark 的機器學習平台，將模型訓練時間縮短 40%
- 與業務部門緊密合作，將分析結果轉化為可執行的商業策略
- 推動 MLOps 實踐，建立自動化模型監控及重新訓練流程
- 指導初級數據科學家，並定期舉辦內部培訓
#strong[關鍵字]：Python、Spark、MLOps、機器學習、風險建模

#resume-subheading[數據科學家][#link("https://www.hkt.com")[https\:\/\/www\.hkt\.com]][香港電訊有限公司][2019年8月–2019年12月]
- 分析流動通訊客戶的使用行為及流失率，建立客戶流失預警模型
- 利用 SQL 及 Hive 處理每日數十億條數據記錄，製作儀表板供管理層參考
- 開發客戶生命週期價值（LTV）模型，協助市場部制定精準營銷策略
#strong[關鍵字]：SQL、Hive、客戶流失、Tableau
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：廣東話])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 8\.0])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[機器學習]：專家], [#strong[關鍵字]：監督式學習、非監督式學習、深度學習、模型評估、特徵工程、強化學習])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式語言及工具]：專家], [#strong[關鍵字]：Python、R、SQL、Java、TensorFlow、PyTorch、scikit\-learn])

#grid(columns: (1fr, auto), align: (left, right), [#strong[大數據平台]：高級], [#strong[關鍵字]：Apache Spark、Hadoop、Hive、Kafka、Airflow、Databricks])

#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端及 MLOps]：高級], [#strong[關鍵字]：AWS、Azure、Docker、Kubernetes、MLflow、CI\/CD])
]

= 榮譽
#resume-pad[
#resume-subheading[亞太數據科學競賽亞軍][][亞太數據科學協會][2021年11月]
與團隊成員於 300 多支參賽隊伍中脫穎而出，運用機器學習技術預測城市交通流量，獲亞軍。

#resume-subheading[最佳畢業論文獎][][香港大學統計學系][2019年7月]
畢業論文「基於深度學習的香港樓價預測模型」獲評為年度最佳碩士論文。
]

= 證書
#resume-pad[
#resume-subheading[AWS Certified Machine Learning – Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2022年3月]

#resume-subheading[Azure Data Scientist Associate][#link("https://learn.microsoft.com/en-us/credentials/")[https\:\/\/learn\.microsoft\.com\/en\-us\/credentials\/]][Microsoft][2021年8月]

#resume-subheading[TensorFlow Developer Certificate][#link("https://www.tensorflow.org/certificate")[https\:\/\/www\.tensorflow\.org\/certificate]][Google][2021年1月]
]

= 出版刊物
#resume-pad[
#resume-subheading[A Hybrid Deep Learning Approach for Urban Traffic Flow Prediction][#link("https://doi.org/10.1109/ACCESS.2022.1234567")[https\:\/\/doi\.org\/10\.1109\/ACCESS\.2022\.1234567]][IEEE Access][2022年6月]
- 提出結合 CNN 及 LSTM 的混合深度學習模型，用於預測香港市區交通流量
- 實驗結果顯示所提出的模型比傳統 ARIMA 減少 25% 預測誤差
- 文章已獲 IEEE Access 收錄，並被多位學者引用

#resume-subheading[應用自然語言處理於金融文本情感分析][#link("https://www.hkdsj.org/articles/2020/12")[https\:\/\/www\.hkdsj\.org\/articles\/2020\/12]][香港數據科學期刊][2020年12月]
- 探討如何利用 BERT 模型分析上市公司年報及新聞稿中的情感傾向
- 結合金融領域知識詞典，提升情感分析模型於金融文本的準確度
]

= 項目
#resume-pad[
#resume-subheading[香港樓價預測系統][#link("https://github.com/wingyanchan/hk-property-price")[https\:\/\/github\.com\/wingyanchan\/hk\-property\-price]][一個基於深度學習的香港物業估價及樓價預測平台][2021年2月–2021年6月]
- 整合差餉物業估價署、土地註冊處及公共交通數據
- 使用 XGBoost 及深度神經網絡建立樓價預測模型，R² 達 0\.91
- 開發 Flask API 及 React 前端，讓用戶輸入物業資料即時獲得估價
#strong[關鍵字]：Python、XGBoost、React、房地產、深度學習

#resume-subheading[智能客戶服務聊天機器人][#link("https://github.com/wingyanchan/chatbot")[https\:\/\/github\.com\/wingyanchan\/chatbot]][為銀行客戶服務部門設計的粵語智能聊天機器人][2022年9月–2023年3月]
- 利用 RAG（檢索增強生成）架構結合領域知識庫，解答客戶常見問題
- 使用 LangChain 及 OpenAI API 開發，並部署至企業 Kubernetes 集群
- 聊天機器人成功處理 70% 的常見查詢，大幅減輕前線客服人員負擔
#strong[關鍵字]：RAG、LangChain、Kubernetes、生成式 AI、客戶服務
]

= 興趣愛好
#resume-pad[
#strong[人工智能倫理]：負責任AI、數據私隱、公平性

#strong[戶外活動]：行山、露營、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[兼職導師][#link("https://www.datasciencevolunteer.hk")[https\:\/\/www\.datasciencevolunteer\.hk]][香港數據科學義工網絡][2021年1月至今]
- 為非牟利機構提供免費數據分析諮詢
- 定期主持數據科學工作坊，教授 Python 及數據可視化技巧
- 協助設計「社企數據儀表板」，用於追蹤服務成效
]