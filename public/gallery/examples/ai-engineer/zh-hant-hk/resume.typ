#set document(
  title: "陳嘉俊 - 人工智能工程師 | 生成式 AI 與機器學習",
  author: "陳嘉俊",
  keywords: "人工智能與機器學習, 程式語言與框架, 資料工程與 MLOps",
  description: "Résumé of 陳嘉俊",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine", "Noto Serif CJK SC", "Noto Sans CJK SC", "Songti SC", "SimSun", "PingFang SC", "Microsoft YaHei"),
  size: 10pt,
  lang: "en", number-type: "old-style",
)

// paragraph spacing equals the leading, so consecutive paragraphs are stacked
// exactly like lines within one paragraph — parity with the LaTeX template's
// default \parskip of 0pt
#set par(
  leading: 0.57em,
  spacing: 0.57em,
)

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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳嘉俊]] #v(-0.2em)

#text(size: 1.44em)[人工智能工程師 | 生成式 AI 與機器學習]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ka.chun.chan@example.com")[ka\.chun\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.kachun-ai.dev")[https\:\/\/www\.kachun\-ai\.dev]

香港中環皇后大道中 99 號, 香港, 香港島, Hong Kong

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/kachun-ai")[kachun\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kachun-ai")[kachun\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@kachun-ai")[kachun\-ai]
]

= Basics

#resume-pad[
- 人工智能工程師，專注生成式 AI、大型語言模型與檢索增強生成（RAG）應用落地
- 具備 5 年以上機器學習與數據工程經驗，熟悉模型訓練、評估、部署及 MLOps 全流程
- 擅長以 Python、PyTorch 及雲端平台建構可擴展的 AI 服務，並推動負責任 AI 實踐
- 具備跨部門協作與技術指導經驗，能將業務需求轉化為可量測的 AI 解決方案
]

= Education
#resume-pad[
#resume-subheading[香港科技大學][#link("https://www.ust.hk")[https\:\/\/www\.ust\.hk]][Master, 計算機科學與工程, Score: 3\.9\/4\.0][Sep 2018–Jul 2020]
- 主修機器學習與自然語言處理，深入研究大型語言模型與檢索增強生成技術
- 以優異成績完成畢業論文，主題為粵語語音辨識與意圖理解
- 積極參與人工智能實驗室研究項目，累積模型訓練與部署經驗
#strong[Courses]: 機器學習, 深度學習, 自然語言處理, 分散式系統, 雲端計算, 資料探勘, 演算法設計與分析

#resume-subheading[香港中文大學][#link("https://www.cuhk.edu.hk")[https\:\/\/www\.cuhk\.edu\.hk]][Bachelor, 計算機科學, Score: 3\.7\/4\.0][Sep 2014–Jun 2018]
- 建立扎實的計算機科學基礎，熟悉演算法、資料結構與軟件工程
- 曾參與校內人工智能研究小組，開發影像分類與文字分析專案
- 獲列入學院院長榮譽名單
#strong[Courses]: 資料結構, 作業系統, 資料庫系統, 機器學習導論, 統計學, 線性代數
]

= Work
#resume-pad[
#resume-subheading[高級人工智能工程師][#link("https://www.zhiyan-ai.com")[https\:\/\/www\.zhiyan\-ai\.com]][智言科技有限公司][Mar 2022–Present]
- 帶領 4 人團隊設計與落地企業級檢索增強生成（RAG）平台，支援粵語、英語及普通話問答
- 建立大型語言模型評估流程，涵蓋準確度、幻覺率、延遲與成本指標，將模型上線週期縮短 40%
- 開發基於 Python、PyTorch 與 LangChain 的模型服務，並以 Docker 與 Kubernetes 部署至雲端
- 與產品、法務及合規團隊協作，制定負責任 AI 與資料私隱審查規範
- 指導初級工程師與數據科學家，推動程式碼審查、實驗追蹤與 MLOps 最佳實踐
#strong[Keywords]: 大型語言模型, 檢索增強生成, MLOps, Python, 模型評估, Kubernetes

#resume-subheading[機器學習工程師][#link("https://www.hkdigitalai.com")[https\:\/\/www\.hkdigitalai\.com]][香港數碼智能有限公司][Jul 2020–Feb 2022]
- 開發客戶流失預測與推薦系統，運用 XGBoost、LightGBM 及深度學習模型提升轉換率 18%
- 建置自動化特徵工程與模型訓練管道，使用 Airflow、Spark 及 MLflow 管理實驗與版本
- 將模型封裝為 RESTful API，部署於 AWS 並整合實時資料串流，支援每日百萬級預測請求
- 與業務分析師合作定義關鍵指標，透過 A\/B 測試驗證模型成效並持續迭代
#strong[Keywords]: 機器學習, XGBoost, Spark, MLflow, AWS, A\/B 測試
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[人工智能與機器學習]: Expert], [#strong[Keywords]: 深度學習, 自然語言處理, 大型語言模型, 檢索增強生成, 模型評估, 電腦視覺])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式語言與框架]: Advanced], [#strong[Keywords]: Python, PyTorch, TensorFlow, scikit\-learn, LangChain, SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料工程與 MLOps]: Advanced], [#strong[Keywords]: Docker, Kubernetes, MLflow, Airflow, Spark, AWS, GCP])
]