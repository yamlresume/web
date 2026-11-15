#set document(
  title: "林靜文 - 資深客戶經理 | B2B SaaS 業務開發專家",
  author: "林靜文",
  keywords: "客戶關係管理, 業務開發, 簡報與談判, 數據分析",
  description: "Résumé of 林靜文",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林靜文]] #v(-0.2em)

#text(size: 1.44em)[資深客戶經理 | B2B SaaS 業務開發專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chingwen.lin@example.com")[chingwen\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.chingwenlin.tw")[https\:\/\/www\.chingwenlin\.tw]

中國臺灣，台北市，台北市，台北市松山區敦化北路 123 號 8 樓，105

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chingwenlin")[chingwenlin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M311 196.8l0 81.3c0 2.1-1.6 3.7-3.7 3.7l-13 0c-1.3 0-2.4-.7-3-1.5L254 230 254 278.2c0 2.1-1.6 3.7-3.7 3.7l-13 0c-2.1 0-3.7-1.6-3.7-3.7l0-81.3c0-2.1 1.6-3.7 3.7-3.7l12.9 0c1.1 0 2.4 .6 3 1.6l37.3 50.3 0-48.2c0-2.1 1.6-3.7 3.7-3.7l13 0c2.1-.1 3.8 1.6 3.8 3.5l0 .1zm-93.7-3.7l-13 0c-2.1 0-3.7 1.6-3.7 3.7l0 81.3c0 2.1 1.6 3.7 3.7 3.7l13 0c2.1 0 3.7-1.6 3.7-3.7l0-81.3c0-1.9-1.6-3.7-3.7-3.7zm-31.4 68.1l-35.6 0 0-64.4c0-2.1-1.6-3.7-3.7-3.7l-13 0c-2.1 0-3.7 1.6-3.7 3.7l0 81.3c0 1 .3 1.8 1 2.5 .7 .6 1.5 1 2.5 1l52.2 0c2.1 0 3.7-1.6 3.7-3.7l0-13c0-1.9-1.6-3.7-3.5-3.7l.1 0zm193.7-68.1l-52.3 0c-1.9 0-3.7 1.6-3.7 3.7l0 81.3c0 1.9 1.6 3.7 3.7 3.7l52.2 0c2.1 0 3.7-1.6 3.7-3.7l0-13.1c0-2.1-1.6-3.7-3.7-3.7l-35.5 0 0-13.6 35.5 0c2.1 0 3.7-1.6 3.7-3.7l0-13.1c0-2.1-1.6-3.7-3.7-3.7l-35.5 0 0-13.7 35.5 0c2.1 0 3.7-1.6 3.7-3.7l0-13c-.1-1.9-1.7-3.7-3.7-3.7l.1 0zM512 93.4l0 326c-.1 51.2-42.1 92.7-93.4 92.6l-326 0C41.4 511.9-.1 469.8 0 418.6l0-326C.1 41.4 42.2-.1 93.4 0l326 0c51.2 .1 92.7 42.1 92.6 93.4zM441.6 233.5c0-83.4-83.7-151.3-186.4-151.3S68.8 150.1 68.8 233.5c0 74.7 66.3 137.4 155.9 149.3 21.8 4.7 19.3 12.7 14.4 42.1-.8 4.7-3.8 18.4 16.1 10.1s107.3-63.2 146.5-108.2c27-29.7 39.9-59.8 39.9-93.1l0-.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://line.me/ti/p/~chingwenlin")[chingwenlin]
]

= 簡介

#resume-pad[
具備 7 年 B2B SaaS 與數位解決方案銷售經驗的資深客戶經理，專注於企業客戶開發與關係維護。

- 累積管理超過 50 家企業客戶，年度業績配額達成率平均 125%
- 擅長顧問式銷售、合約談判與跨部門專案協調，能將客戶需求轉化為可落地的解決方案
- 熟悉 CRM 系統與數據分析，透過客戶旅程優化提升續約率與客戶終身價值
- 具備優秀的簡報與溝通能力，能與 C\-level 決策者建立長期信任關係
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][學士，企業管理學系，成績：3\.9\/4\.0][2015年9月–2019年6月]
- 主修企業管理，輔修經濟學，奠定商業策略與數據分析基礎
- 擔任系學會公關長，籌辦超過 10 場企業參訪與講座
- 畢業專題「訂閱制商業模式之消費者留存分析」獲選為年度優良報告
#strong[課程]：行銷管理、消費者行為、策略管理、財務管理、商業談判、資料庫管理
]

= 工作經歷
#resume-pad[
#resume-subheading[資深客戶經理][#link("https://www.cloudthink.com.tw")[https\:\/\/www\.cloudthink\.com\.tw]][智雲科技股份有限公司][2022年1月至今]
- 負責台灣與大中華區企業客戶之 SaaS 解決方案銷售，管理年度 3,000 萬元業績配額
- 連續兩年達成 120% 以上業績目標，開發 20 家以上新客戶，包含 3 家財星 500 大企業
- 主導客戶成功計畫，提升續約率至 92%，客戶終身價值成長 35%
- 與產品、行銷及技術團隊協作，將客戶回饋轉化為產品優化建議
#strong[關鍵字]：B2B SaaS、企業銷售、客戶關係管理、合約談判、業績成長

#resume-subheading[客戶經理][#link("https://www.netinfo.com.tw")[https\:\/\/www\.netinfo\.com\.tw]][網訊科技股份有限公司][2019年7月–2021年12月]
- 負責數位行銷與雲端服務解決方案之客戶開發與維護，涵蓋零售、金融與製造業
- 達成季度業績目標 110%，兩年內將負責區域營收提升 40%
- 建立標準化客戶拜訪與需求分析流程，縮短銷售週期 20%
- 協調內部資源處理客戶問題，客戶滿意度維持 4\.8\/5\.0
#strong[關鍵字]：數位行銷、雲端服務、業務開發、客戶滿意度
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、商務談判])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：有限工作水平], [#strong[關鍵字]：JLPT N2、日常會話])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[客戶關係管理]：專家], [#strong[關鍵字]：CRM、Salesforce、HubSpot、客戶旅程優化])

#grid(columns: (1fr, auto), align: (left, right), [#strong[業務開發]：高級], [#strong[關鍵字]：陌生開發、顧問式銷售、通路開發、業績預測])

#grid(columns: (1fr, auto), align: (left, right), [#strong[簡報與談判]：高級], [#strong[關鍵字]：高階簡報、合約談判、跨部門溝通、衝突解決])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析]：中級], [#strong[關鍵字]：Excel、Tableau、SQL、Google Analytics])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳業務獎][][智雲科技股份有限公司][2024年1月]
表揚年度業績達成率最高且客戶滿意度優異之業務人員。

#resume-subheading[卓越客戶服務獎][][網訊科技股份有限公司][2022年3月]
表彰在客戶關係維護與服務創新方面有傑出表現的員工。
]

= 證書
#resume-pad[
#resume-subheading[Salesforce Certified Sales Cloud Consultant][#link("https://trailhead.salesforce.com/credentials/salescloudconsultant")[https\:\/\/trailhead\.salesforce\.com\/credentials\/salescloudconsultant]][Salesforce][2023年5月]

#resume-subheading[Google Analytics Individual Qualification][#link("https://skillshop.exceedlms.com/student/catalog/list?category_ids=53-google-analytics")[https\:\/\/skillshop\.exceedlms\.com\/student\/catalog\/list?category\_ids\=53\-google\-analytics]][Google][2021年8月]
]

= 出版刊物
#resume-pad[
#resume-subheading[顧問式銷售在 SaaS 產業的應用與實踐][#link("https://www.businessweekly.com.tw")[https\:\/\/www\.businessweekly\.com\.tw]][商業周刊][2023年11月]
- 探討顧問式銷售如何協助 B2B SaaS 企業提升客戶留存與擴張
- 分享實務案例與客戶旅程優化框架
]

= 項目
#resume-pad[
#resume-subheading[企業客戶健康度預警系統][#link("https://github.com/chingwenlin/customer-health")[https\:\/\/github\.com\/chingwenlin\/customer\-health]][運用 CRM 數據與機器學習建立客戶流失預警模型][2023年3月–2023年9月]
- 整合 Salesforce 與內部數據，建立客戶健康度指標
- 透過 Python 與 SQL 分析歷史續約資料，識別高風險客戶
- 系統上線後協助業務團隊提前介入，降低流失率 15%
#strong[關鍵字]：CRM、Python、數據分析、客戶成功
]

= 興趣愛好
#resume-pad[
#strong[運動]：馬拉松、羽球、登山

#strong[閱讀]：商業策略、心理學、人物傳記
]

= 志願服務
#resume-pad[
#resume-subheading[業界導師][#link("https://www.tdma.org.tw")[https\:\/\/www\.tdma\.org\.tw]][台灣數位行銷協會][2021年9月至今]
- 擔任業界導師，協助年輕學子了解 B2B 業務職涯發展
- 每季舉辦工作坊，分享客戶開發與簡報技巧
- 參與協會產學合作計畫，協助媒合實習機會
]