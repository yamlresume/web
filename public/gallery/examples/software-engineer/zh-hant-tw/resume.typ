#set document(
  title: "陳柏宇 - 軟體工程師｜全端開發・雲端架構・DevOps",
  author: "陳柏宇",
  keywords: "程式語言, 前端開發, 後端開發, 雲端與 DevOps, 軟體工程",
  description: "Résumé of 陳柏宇",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳柏宇]] #v(-0.2em)

#text(size: 1.44em)[軟體工程師｜全端開發・雲端架構・DevOps]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:poyu.chen.dev@gmail.com")[poyu\.chen\.dev\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://poyuchen.dev")[https\:\/\/poyuchen\.dev]

中國臺灣，大安區，台北市，台北市大安區羅斯福路四段 100 號，10617

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/poyuchen")[poyuchen] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/poyuchen-tw")[poyuchen\-tw]
]

= 簡介

#resume-pad[
具 8 年經驗的軟體工程師，專注於全端應用開發、分散式系統與雲端架構設計。擅長從需求分析、系統設計到部署維運的完整開發流程，並致力於以簡潔、可維護的方式交付高品質軟體。

- 熟悉 TypeScript、Node\.js、Python 與 Go，具備 React\/Next\.js 前端開發經驗
- 設計與維運 Kubernetes 叢集、CI\/CD 管線與雲端基礎設施，降低成本並提升穩定性
- 樂於技術分享與跨部門協作，曾帶領 3 人小組完成多項關鍵功能交付
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][碩士，資訊工程學系，成績：3\.92][2016年9月–2018年7月]
研究主題為容器化應用程式之資源排程最佳化，畢業論文提出一套基於多目標最佳化的排程演算法，於模擬環境中降低 22% 的平均回應時間。
#strong[課程]：分散式系統、雲端運算、機器學習、高等演算法、大數據分析、網路安全

#resume-subheading[國立臺灣科技大學][#link("https://www.ntust.edu.tw")[https\:\/\/www\.ntust\.edu\.tw]][學士，資訊工程系，成績：3\.85][2012年9月–2016年6月]
以書卷獎畢業，修習多門軟硬體相關課程，並參與網頁開發專題。
#strong[課程]：程式設計（一）（二）、資料結構、作業系統、計算機網路、資料庫系統、軟體工程
]

= 工作經歷
#resume-pad[
#resume-subheading[資深軟體工程師][#link("https://www.appier.com")[https\:\/\/www\.appier\.com]][Appier][2022年1月至今]
- 負責廣告推薦與預測平台的後端服務開發，使用 Go 與 Python 建置高效能 API，日均處理數千萬請求
- 主導 Kubernetes 叢集遷移與資源調度優化，基礎設施成本下降 35%
- 建立 CI\/CD 流程與觀測系統（Prometheus、Grafana），提升部署頻率與服務可靠性
- 帶領 3 人小組開發即時資料處理管線，串接 Kafka 與 ClickHouse
#strong[關鍵字]：Go、Kubernetes、Kafka、ClickHouse、CI\/CD

#resume-subheading[軟體工程師][#link("https://www.trendmicro.com")[https\:\/\/www\.trendmicro\.com]][趨勢科技（Trend Micro）][2018年7月–2021年12月]
- 開發雲端資安產品之管理平台，使用 React、TypeScript 與 Node\.js，支援多租戶架構
- 設計 RESTful API 與資料模型，並導入 GraphQL 以減少前端過度抓取問題
- 與威脅研究團隊合作，開發即時威脅儀表板，協助客戶快速掌握資安事件
- 參與 Scrum 開發流程，並定期進行程式碼審查與技術分享
#strong[關鍵字]：React、TypeScript、Node\.js、GraphQL、Scrum
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、技術文件撰寫])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[程式語言]：專家], [#strong[關鍵字]：TypeScript、Python、Go、SQL、Shell])

#grid(columns: (1fr, auto), align: (left, right), [#strong[前端開發]：高級], [#strong[關鍵字]：React、Next\.js、CSS Modules、Vite、Jest])

#grid(columns: (1fr, auto), align: (left, right), [#strong[後端開發]：專家], [#strong[關鍵字]：Node\.js、Express、gRPC、Redis、PostgreSQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端與 DevOps]：高級], [#strong[關鍵字]：Kubernetes、Docker、AWS、Terraform、GitHub Actions、Prometheus])

#grid(columns: (1fr, auto), align: (left, right), [#strong[軟體工程]：專家], [#strong[關鍵字]：Domain\-Driven Design、Microservices、System Design、Code Review、Agile])
]

= 榮譽
#resume-pad[
#resume-subheading[書卷獎][][國立臺灣大學][2017年10月]
頒發給學業成績優異之碩士班學生，全學期 GPA 4\.0 且排名系所前 5%。

#resume-subheading[最佳專題獎][][國立臺灣科技大學資訊工程系][2016年6月]
大學畢業專題「基於深度學習之即時手寫辨識系統」獲評審評選為最佳專題。
]

= 證書
#resume-pad[
#resume-subheading[AWS Certified Solutions Architect – Associate][#link("https://aws.amazon.com/verification")[https\:\/\/aws\.amazon\.com\/verification]][Amazon Web Services][2022年3月]

#resume-subheading[Certified Kubernetes Application Developer (CKAD)][#link("https://www.cncf.io/certification/ckad/")[https\:\/\/www\.cncf\.io\/certification\/ckad\/]][Cloud Native Computing Foundation][2021年8月]
]

= 出版刊物
#resume-pad[
#resume-subheading[Multi\-objective Scheduling for Containerized Applications in Edge\-Cloud Continuum][#link("https://doi.org/10.1109/CLOUD.2021.00045")[https\:\/\/doi\.org\/10\.1109\/CLOUD\.2021\.00045]][IEEE International Conference on Cloud Computing][2021年7月]
提出一個多目標最佳化的容器排程演算法，同時考慮延遲、能耗與資源利用率，實驗結果顯示相較於既有方法可降低 22% 平均回應時間並減少 15% 能耗。
]

= 項目
#resume-pad[
#resume-subheading[KubeCost Advisor][#link("https://github.com/poyuchen/kubecost-advisor")[https\:\/\/github\.com\/poyuchen\/kubecost\-advisor]][Kubernetes 成本分析與資源建議工具][2023年1月至今]
- 串接 Kubernetes Metrics API 與 Prometheus，收集 Pod 資源使用歷史資料
- 以 React 與 TypeScript 建置互動式儀表板，呈現成本分佈與資源瓶頸
- 提供自動化資源 Request\/Limit 建議，協助團隊平均節省 25% 叢集成本
#strong[關鍵字]：Kubernetes、React、Python、Prometheus

#resume-subheading[即時聊天服務 LunchBot][#link("https://github.com/poyuchen/lunchbot")[https\:\/\/github\.com\/poyuchen\/lunchbot]][用於辦公室午餐揪團的 LINE Bot 與 Web 管理後台][2019年9月–2019年12月]
- 使用 Node\.js 與 LINE Messaging API 開發聊天機器人，處理點餐與投票流程
- 建置 React 管理後台，讓餐廳業者管理菜單與訂單狀態
- 導入 PostgreSQL 儲存訂單與使用者資料，並部署至 AWS Elastic Beanstalk
#strong[關鍵字]：Node\.js、LINE Bot、React、PostgreSQL、AWS
]

= 興趣愛好
#resume-pad[
#strong[開源軟體]：Kubernetes、社群貢獻

#strong[登山]：百岳、健行

#strong[攝影]：底片相機、街拍
]

= 志願服務
#resume-pad[
#resume-subheading[議程組志工][#link("https://tw.pycon.org")[https\:\/\/tw\.pycon\.org]][PyCon Taiwan][2022年3月–2022年9月]
- 協助籌劃 PyCon Taiwan 2022 議程，審稿並聯絡國內外講者
- 在會議期間負責場控與直播協調，確保議程順利進行

#resume-subheading[開源貢獻者][#link("https://g0v.tw")[https\:\/\/g0v\.tw]][g0v 零時政府][2020年1月–2022年12月]
- 參與「市民數位服務平台」開發，協助設計後端 API 與資料串接
- 透過黑客松活動與跨領域夥伴協作，促進開放資料與公民科技發展
]