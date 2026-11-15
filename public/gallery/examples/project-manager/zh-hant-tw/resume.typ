#set document(
  title: "陳昱翰 - 資深專案經理 | 敏捷開發與跨部門協作",
  author: "陳昱翰",
  keywords: "專案管理, 工具與平台, 溝通與領導, 技術知識",
  description: "Résumé of 陳昱翰",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳昱翰]] #v(-0.2em)

#text(size: 1.44em)[資深專案經理 | 敏捷開發與跨部門協作]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yuhan.chen@example.com")[yuhan\.chen\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.yuhanchen-pm.com")[https\:\/\/www\.yuhanchen\-pm\.com]

中國臺灣，台北市，台北市，台北市信義區松高路 1 號，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yuhan-chen-pm")[yuhan\-chen\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yuhanchen-pm")[yuhanchen\-pm]
]

= 簡介

#resume-pad[
- 擁有 8 年以上軟體與數位產品專案管理經驗，擅長從需求訪談、範疇定義到交付驗收的完整生命週期。
- 精通 Agile\/Scrum 與 Waterfall 方法論，能依專案特性調整整體節奏與資源配置。
- 具備跨部門溝通與利害關係人管理能力，成功協調工程、設計、行銷與營運團隊達成目標。
- 數據驅動決策，熟悉 Jira、Confluence、Asana 與 Tableau，持續優化流程與交付品質。
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][碩士，資訊管理學系，成績：4\.0][2014\-09\-01–2016\-06\-30]
- 碩士論文以「敏捷式專案管理在台灣軟體產業之應用」為題，訪談 12 家企業。
- 擔任資訊管理研究所學會會長，籌辦產學講座與企業參訪。
- 獲選為管理學院優秀研究生，並取得斐陶斐榮譽會員資格。
#strong[課程]：專案管理、資訊系統分析與設計、資料庫管理、企業流程再造、敏捷軟體開發
]

= 工作經歷
#resume-pad[
#resume-subheading[資深專案經理][#link("https://www.accton.com.tw")[https\:\/\/www\.accton\.com\.tw]][智邦科技股份有限公司][2021\-03\-01至今]
- 負責企業級網通軟體專案，管理 5 個跨功能團隊、共 40 位成員，年度專案預算達新台幣 8,000 萬元。
- 導入 Scrum 與 Kanban 混合式管理，將版本交付週期由 12 週縮短至 8 週，提升 33% 交付效率。
- 建立標準化風險管理流程，提前識別關鍵風險並制定緩解計畫，降低 25% 專案延遲率。
- 主導與歐美客戶的季度業務審查，協調需求優先級與範疇變更，維持客戶滿意度 95% 以上。
- 輔導 3 位初階專案經理取得 PMP 證照，建立內部專案管理知識庫。
#strong[關鍵字]：敏捷開發、跨部門協作、風險管理、利害關係人溝通、預算控管

#resume-subheading[專案經理][#link("https://www.trendmicro.com")[https\:\/\/www\.trendmicro\.com]][趨勢科技股份有限公司][2017\-07\-01–2021\-02\-28]
- 管理雲端安全產品專案，從需求確認、開發排程到全球發布，年均完成 6 個主要版本。
- 與產品經理合作定義產品路線圖，將客戶回饋轉化為可執行的使用者故事與驗收條件。
- 協調 QA、DevOps 與技術支援團隊，建立自動化測試與持續整合流程，減少 40% 回歸測試時間。
- 每月向高階管理層彙報專案健康度、資源使用與里程碑達成率。
#strong[關鍵字]：雲端安全、產品交付、持續整合、資源規劃

#resume-subheading[專案管理師][#link("https://www.iisigroup.com")[https\:\/\/www\.iisigroup\.com]][資拓宏宇國際股份有限公司][2016\-07\-01–2017\-06\-30]
- 參與政府資訊系統標案，負責需求訪談、規格書撰寫與專案進度追蹤。
- 協助導入 Jira 與 Confluence，統一專案文件與問題追蹤流程。
- 支援驗收測試與教育訓練，確保系統順利上線並移交維運團隊。
#strong[關鍵字]：政府標案、需求分析、文件管理、驗收測試
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、商業談判、跨國團隊協作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：有限工作水平], [#strong[關鍵字]：JLPT N3、日常會話])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[專案管理]：專家], [#strong[關鍵字]：Agile、Scrum、Waterfall、風險管理、範疇管理、預算控管])

#grid(columns: (1fr, auto), align: (left, right), [#strong[工具與平台]：高級], [#strong[關鍵字]：Jira、Confluence、Asana、Trello、Tableau、MS Project])

#grid(columns: (1fr, auto), align: (left, right), [#strong[溝通與領導]：專家], [#strong[關鍵字]：跨部門協調、利害關係人管理、團隊激勵、簡報技巧、衝突解決])

#grid(columns: (1fr, auto), align: (left, right), [#strong[技術知識]：中級], [#strong[關鍵字]：SQL、API、CI\/CD、雲端服務、資料分析])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳專案經理][][智邦科技股份有限公司][2023\-12\-15]
表彰在企業級網通軟體專案中展現卓越領導力、風險管理與跨部門協調能力，並成功將交付週期縮短 33%。

#resume-subheading[專案管理卓越獎][][趨勢科技股份有限公司][2020\-11\-20]
肯定在雲端安全產品全球發布專案中的傑出表現，達成 100% 里程碑並維持客戶滿意度 95% 以上。
]

= 證書
#resume-pad[
#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][2018\-06\-15]

#resume-subheading[Certified ScrumMaster (CSM)][#link("https://www.scrumalliance.org/certifications/csm")[https\:\/\/www\.scrumalliance\.org\/certifications\/csm]][Scrum Alliance][2019\-09\-10]

#resume-subheading[PMI Agile Certified Practitioner (PMI\-ACP)][#link("https://www.pmi.org/certifications/agile-acp")[https\:\/\/www\.pmi\.org\/certifications\/agile\-acp]][Project Management Institute][2021\-04\-22]
]

= 出版刊物
#resume-pad[
#resume-subheading[敏捷式專案管理在台灣軟體產業之應用][#link("https://hdl.handle.net/11296/example")[https\:\/\/hdl\.handle\.net\/11296\/example]][國立臺灣大學資訊管理學系碩士論文][2016\-06\-30]
- 探討敏捷式方法在台灣軟體公司的導入現況與挑戰。
- 訪談 12 家企業、回收 180 份問卷，提出混合式管理框架。
- 研究結果獲得多家受訪企業採用於內部流程改善。
]

= 項目
#resume-pad[
#resume-subheading[企業級網通軟體交付平台][#link("https://www.accton.com.tw")[https\:\/\/www\.accton\.com\.tw]][整合需求管理、測試追蹤與版本發布的內部專案管理平台][2022\-01\-10–2023\-08\-31]
- 主導平台導入，涵蓋 5 個產品線、超過 40 位使用者。
- 建立自動化儀表板，即時呈現專案健康度與資源負載。
- 縮短 30% 專案狀態彙報時間，並提升資料透明度。
#strong[關鍵字]：專案管理平台、數據視覺化、流程自動化

#resume-subheading[雲端安全產品全球發布專案][#link("https://www.trendmicro.com")[https\:\/\/www\.trendmicro\.com]][面向全球企業客戶的雲端安全解決方案發布計畫][2019\-03\-01–2020\-12\-31]
- 協調台灣、美國、日本與印度團隊，完成 6 個主要版本發布。
- 建立跨時區溝通機制，將決策週期縮短 20%。
- 專案達成率 100%，客戶滿意度維持 95% 以上。
#strong[關鍵字]：全球發布、跨時區協作、雲端安全
]

= 興趣愛好
#resume-pad[
#strong[戶外活動]：登山、馬拉松、單車環島

#strong[閱讀與學習]：商業策略、專案管理、人工智慧

#strong[社群參與]：敏捷社群、專案管理協會、技術講座
]

= 志願服務
#resume-pad[
#resume-subheading[志工講師][#link("https://www.pmi.org.tw")[https\:\/\/www\.pmi\.org\.tw]][台灣專案管理學會][2019\-01\-01–2023\-12\-31]
- 擔任敏捷與專案管理課程志工講師，累計授課 30 場、學員超過 600 人。
- 協助籌辦年度專案管理論壇，負責議程規劃與講者邀請。
- 參與偏鄉資訊教育志工活動，指導高中生專題製作與簡報技巧。
]