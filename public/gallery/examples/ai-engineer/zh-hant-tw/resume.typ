#set document(
  title: "林彥廷 - 資深人工智慧工程師 | 大型語言模型與 MLOps 專家",
  author: "林彥廷",
  keywords: "機器學習與深度學習, 自然語言處理, MLOps 與雲端部署, 資料工程, 程式設計",
  description: "Résumé of 林彥廷",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林彥廷]] #v(-0.2em)

#text(size: 1.44em)[資深人工智慧工程師 | 大型語言模型與 MLOps 專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yenting.lin.ai@example.com")[yenting\.lin\.ai\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.yentinglin.dev")[https\:\/\/www\.yentinglin\.dev]

中國臺灣，台北市，台北市，台北市大安區復興南路一段390號，106

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yentinglin-ai")[yentinglin\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yenting-lin-ai")[yenting\-lin\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yentinglin.ai")[yentinglin\.ai]
]

= 簡介

#resume-pad[
- 具備 8 年以上人工智慧與機器學習實務經驗，專精大型語言模型、檢索增強生成與 MLOps。
- 曾領導 5 人跨功能團隊，將 LLM 應用導入企業知識管理、客服與文件摘要流程，提升作業效率 40%。
- 熟悉從資料清洗、模型訓練、評估、部署到監控的端到端流程，並具備雲端與地端混合部署經驗。
- 樂於將技術轉化為可落地的產品價值，擅長跨部門溝通、技術文件撰寫與團隊知識傳承。
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][碩士，資訊工程學系，成績：4\.1\/4\.3][2015年9月–2017年6月]
- 研究主題聚焦於深度學習與自然語言處理，完成以注意力機制為基礎的文字分類研究。
- 擔任課程助教，協助機器學習與資料結構課程之教學與作業批改。
- 與實驗室團隊合作發表 2 篇研討會論文，培養獨立研究與團隊協作能力。
#strong[課程]：機器學習、深度學習、自然語言處理、電腦視覺、資料探勘、演算法設計與分析、分散式系統、大數據分析

#resume-subheading[國立清華大學][#link("https://www.nthu.edu.tw")[https\:\/\/www\.nthu\.edu\.tw]][學士，資訊工程學系，成績：3\.9\/4\.3][2011年9月–2015年6月]
- 奠定紮實的資訊工程基礎，並選修人工智慧與資料探勘相關課程。
- 參與校內專題競賽，以影像辨識應用獲得佳作。
#strong[課程]：資料結構、演算法、作業系統、資料庫系統、線性代數、機率與統計、計算機網路、程式設計
]

= 工作經歷
#resume-pad[
#resume-subheading[資深人工智慧工程師][#link("https://www.cloudwise-ai.tw")[https\:\/\/www\.cloudwise\-ai\.tw]][雲智科技股份有限公司][2022年1月至今]
- 領導 5 人 AI 團隊，規劃與交付企業級大型語言模型應用，服務超過 20 家企業客戶。
- 設計檢索增強生成（RAG）架構，整合向量資料庫與內部知識庫，將問答準確率提升至 92%。
- 建置 MLOps 流程，使用 MLflow、Docker 與 Kubernetes 管理模型版本、部署與監控，縮短上線時間 50%。
- 建立模型評估與護欄機制，降低幻覺與敏感資訊外洩風險，並制定內部 AI 使用規範。
- 與產品、資料工程及資安團隊協作，將需求轉化為可執行技術方案，並培育 3 位初階工程師。
#strong[關鍵字]：大型語言模型、檢索增強生成、MLOps、團隊領導、模型評估

#resume-subheading[機器學習工程師][#link("https://www.brightdata-ai.tw")[https\:\/\/www\.brightdata\-ai\.tw]][睿智數據股份有限公司][2019年3月–2021年12月]
- 開發客戶流失預測與推薦系統，透過特徵工程與集成學習，將預測準確率提升 18%。
- 使用 PyTorch 與 TensorFlow 建立深度學習模型，並以 Airflow 與 Spark 處理每日百萬筆資料。
- 將模型封裝為 RESTful API 並部署至 AWS，支援即時推論與批次預測場景。
- 參與 Agile 開發流程，負責技術文件撰寫、程式碼審查與跨團隊知識分享。
#strong[關鍵字]：機器學習、PyTorch、Spark、AWS、RESTful API

#resume-subheading[資料科學家][#link("https://www.digitintelligence.tw")[https\:\/\/www\.digitintelligence\.tw]][數字智能股份有限公司][2017年7月–2019年2月]
- 分析行銷與營運數據，建立視覺化儀表板與自動化報表，協助管理層制定決策。
- 運用統計檢定與 A\/B 測試評估行銷活動成效，提出優化建議並帶來 12% 轉換率成長。
- 建置資料清理與特徵管線，提升資料品質與分析效率，減少 30% 手動處理時間。
- 與業務與產品團隊密切合作，將數據洞察轉化為具體營運策略。
#strong[關鍵字]：資料分析、A\/B 測試、SQL、視覺化、統計建模
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：繁體中文、母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、技術文件撰寫、國際團隊協作])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[機器學習與深度學習]：專家], [#strong[關鍵字]：Python、PyTorch、TensorFlow、scikit\-learn、XGBoost])

#grid(columns: (1fr, auto), align: (left, right), [#strong[自然語言處理]：高級], [#strong[關鍵字]：Transformers、Hugging Face、LangChain、RAG、Fine\-tuning])

#grid(columns: (1fr, auto), align: (left, right), [#strong[MLOps 與雲端部署]：高級], [#strong[關鍵字]：Docker、Kubernetes、MLflow、AWS SageMaker、GCP Vertex AI])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料工程]：高級], [#strong[關鍵字]：SQL、Spark、Airflow、Kafka、BigQuery])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式設計]：專家], [#strong[關鍵字]：Python、Go、TypeScript、Shell、C\+\+])
]

= 榮譽
#resume-pad[
#resume-subheading[最佳應用論文獎][][台灣人工智慧學會][2023年11月]
- 以「檢索增強生成於企業知識問答之應用」獲得最佳應用論文獎。
- 論文提出混合稀疏與稠密檢索策略，有效提升長文件問答的召回率與準確率。

#resume-subheading[年度傑出工程師][][雲智科技股份有限公司][2023年12月]
- 表彰在大型語言模型產品化與 MLOps 流程建置上的卓越貢獻。
- 帶領團隊完成 3 項企業級 AI 專案，並顯著提升客戶滿意度。
]

= 證書
#resume-pad[
#resume-subheading[AWS Certified Machine Learning – Specialty][#link("https://aws.amazon.com/certification/certified-machine-learning-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-machine\-learning\-specialty\/]][Amazon Web Services][2022年3月]

#resume-subheading[NVIDIA Certified Associate – AI Infrastructure][#link("https://www.nvidia.com/en-us/training/certification/")[https\:\/\/www\.nvidia\.com\/en\-us\/training\/certification\/]][NVIDIA][2023年8月]

#resume-subheading[Google Cloud Professional Machine Learning Engineer][#link("https://cloud.google.com/certification/machine-learning-engineer")[https\:\/\/cloud\.google\.com\/certification\/machine\-learning\-engineer]][Google Cloud][2024年1月]
]

= 出版刊物
#resume-pad[
#resume-subheading[以檢索增強生成提升企業知識問答準確率之研究][#link("https://www.taiwanai.org.tw/proceedings/2023")[https\:\/\/www\.taiwanai\.org\.tw\/proceedings\/2023]][2023 台灣人工智慧年會論文集][2023年11月]
- 提出結合 BM25 與向量檢索的混合式 RAG 架構，改善長尾問題的檢索品質。
- 實驗顯示在企業內部知識庫上，回答準確率較基線模型提升 15%。

#resume-subheading[輕量化 Transformer 於邊緣裝置之推論加速][#link("https://www.ics.org.tw/journal/2022")[https\:\/\/www\.ics\.org\.tw\/journal\/2022]][中華民國資訊學會通訊][2022年6月]
- 探討知識蒸餾與量化技術在邊緣裝置上的效能與精度權衡。
- 提出適用於資源受限環境的推論優化流程，降低延遲 35%。
]

= 項目
#resume-pad[
#resume-subheading[企業知識庫問答系統][#link("https://github.com/yentinglin-ai/enterprise-rag")[https\:\/\/github\.com\/yentinglin\-ai\/enterprise\-rag]][基於檢索增強生成的企業內部知識問答平台][2023年1月–2023年8月]
- 整合 Elasticsearch 與向量資料庫，支援文件上傳、切塊、嵌入與檢索。
- 設計多輪對話與引用來源機制，提升回答可信度與可追溯性。
- 以 FastAPI 與 Docker 部署，支援權限控管與使用量監控。
#strong[關鍵字]：RAG、LLM、Elasticsearch、FastAPI

#resume-subheading[智慧客服意圖分類平台][#link("https://github.com/yentinglin-ai/intent-classifier")[https\:\/\/github\.com\/yentinglin\-ai\/intent\-classifier]][支援多語系與多標籤的客服意圖分類服務][2021年3月–2021年12月]
- 使用 BERT 與多標籤分類架構，處理客服來文意圖與緊急程度預測。
- 建立資料標註流程與模型監控指標，持續改善分類表現。
- 將模型部署為微服務，提供即時 API 與批次推論功能。
#strong[關鍵字]：NLP、BERT、FastAPI、Docker
]

= 興趣愛好
#resume-pad[
#strong[開源社群]：貢獻套件、技術演講、社群經營

#strong[戶外活動]：登山、馬拉松、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[志工講師][#link("https://www.twdsa.org")[https\:\/\/www\.twdsa\.org]][台灣資料科學協會][2021年9月–2023年12月]
- 定期開設機器學習入門與 Python 資料分析工作坊，累計指導超過 200 位學員。
- 協助協會規劃年度資料科學年會，負責議程安排與講者邀請。
- 參與偏鄉程式教育計畫，設計適合高中生的 AI 體驗課程。
]