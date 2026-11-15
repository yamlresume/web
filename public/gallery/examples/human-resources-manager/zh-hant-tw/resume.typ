#set document(
  title: "林雅婷 - 人力資源經理｜人才策略與組織發展",
  author: "林雅婷",
  keywords: "人力資源策略, 招募與雇主品牌, 薪酬與績效管理, 勞動法令與員工關係, 人力資源資訊系統, 教育訓練與發展",
  description: "Résumé of 林雅婷",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林雅婷]] #v(-0.2em)

#text(size: 1.44em)[人力資源經理｜人才策略與組織發展]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yating.lin@example.com")[yating\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/yating-lin-hr")[https\:\/\/www\.linkedin\.com\/in\/yating\-lin\-hr]

中國臺灣，臺灣，臺北市，臺北市信義區松高路 88 號 12 樓，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yating-lin-hr")[yating\-lin\-hr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yatinglinhr")[yatinglinhr]
]

= 簡介

#resume-pad[
資深人力資源經理，擁有 10 年以上科技與顧問產業經驗，專長於人才策略、組織發展、績效管理與員工關係。

- 曾領導 8 人人力資源團隊，服務超過 1,200 名員工，成功將年度離職率降低 18%。
- 主導人才盤點與接班計畫，建立關鍵職位發展藍圖，提升內部晉升比例至 65%。
- 熟悉勞動法令與薪酬架構設計，能平衡員工體驗與組織營運目標。
- 具跨國顧問與校園招募經驗，擅長與高階管理層溝通並推動變革。
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw")[https\:\/\/www\.ntu\.edu\.tw]][碩士，人力資源管理研究所，成績：4\.1\/4\.3][2012年9月–2014年6月]
- 主修人力資源管理，專注於策略性人力資源、組織行為與薪酬制度設計。
- 完成碩士論文《高科技產業人才留任因素之研究》，以問卷調查分析 300 位工程師樣本。
- 擔任人力資源管理研究所學會幹部，籌辦企業參訪與專題講座。
#strong[課程]：策略性人力資源管理、組織行為、薪酬管理、績效管理、訓練與發展、勞動法令、研究方法、人力資源分析

#resume-subheading[國立政治大學][#link("https://www.nccu.edu.tw")[https\:\/\/www\.nccu\.edu\.tw]][學士，企業管理學系，成績：3\.8\/4\.0][2008年9月–2012年6月]
- 建立企業管理基礎，涵蓋行銷、財務、作業管理與人力資源等領域。
- 參與企業實習與個案競賽，培養商業分析與團隊協作能力。
#strong[課程]：管理學、經濟學、會計學、行銷管理、財務管理、作業管理、人力資源管理、商業分析
]

= 工作經歷
#resume-pad[
#resume-subheading[人力資源經理][#link("https://www.yunhui-tech.com")[https\:\/\/www\.yunhui\-tech\.com]][雲暉科技股份有限公司][2021年3月至今]
- 負責 1,200 人規模科技公司之全方位人力資源策略，涵蓋招募、薪酬、績效、培訓與員工關係。
- 領導 8 人人力資源團隊，建立部門 OKR 與月度營運檢視機制，提升專案交付效率 25%。
- 重新設計職等職級與薪酬架構，完成市場薪資對標，關鍵人才留任率提升至 92%。
- 推動年度人才盤點與接班梯隊計畫，辨識 45 位高潛力人才並規劃個人發展藍圖。
- 建立雇主品牌與校園招募策略，年度招募週期縮短 20%，並提升新人到職率 15%。
- 處理勞資爭議與勞動檢查，確保公司遵循勞基法及相關法令，達成零重大裁罰紀錄。
#strong[關鍵字]：人才策略、組織發展、績效管理、薪酬設計、員工關係、招募甄選、勞動法令、HRIS

#resume-subheading[資深人力資源顧問][#link("https://www.zhilian-consulting.com")[https\:\/\/www\.zhilian\-consulting\.com]][智聯國際顧問股份有限公司][2016年7月–2021年2月]
- 提供科技、製造與零售客戶組織設計、職等職級與薪酬制度顧問服務，累積 30 個以上專案。
- 主導人才盤點與接班計畫，協助客戶建立關鍵職位勝任力模型與發展路徑。
- 設計訓練發展藍圖與講師培育制度，協助客戶將內部訓練時數提升 40%。
- 協助企業因應勞動法令修法，進行風險盤點、制度修訂與主管培訓。
- 管理 3 人專案團隊，負責提案簡報、專案時程、預算控制與客戶關係維護。
#strong[關鍵字]：人力資源顧問、組織設計、職等職級、人才盤點、訓練發展、勞動法令、專案管理

#resume-subheading[人力資源專員][#link("https://www.hongya-retail.com")[https\:\/\/www\.hongya\-retail\.com]][宏亞零售集團][2014年8月–2016年6月]
- 負責零售門市人員招募、考勤薪酬、教育訓練與員工活動規劃。
- 建立招募漏斗與面試評分表，將門市人員平均招募天數由 35 天降至 24 天。
- 執行新人訓練與在職訓練，協助 200 位以上員工完成年度必修課程。
- 規劃員工關懷與家庭日活動，提升員工滿意度 12%。
#strong[關鍵字]：招募、考勤薪酬、教育訓練、員工活動、零售業
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語、商務書寫])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、IELTS 7\.5、跨國會議])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：初級水平], [#strong[關鍵字]：JLPT N4])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[人力資源策略]：專家], [#strong[關鍵字]：組織設計、人才盤點、接班計畫、人力預算、變革管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[招募與雇主品牌]：高級], [#strong[關鍵字]：校園招募、面試技巧、雇主品牌、招募漏斗、ATS])

#grid(columns: (1fr, auto), align: (left, right), [#strong[薪酬與績效管理]：高級], [#strong[關鍵字]：薪酬架構、職等職級、KPI、OKR、獎酬設計])

#grid(columns: (1fr, auto), align: (left, right), [#strong[勞動法令與員工關係]：高級], [#strong[關鍵字]：勞基法、勞資爭議、員工關係、合規管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[人力資源資訊系統]：中級], [#strong[關鍵字]：SAP SuccessFactors、Workday、Power BI、Excel])

#grid(columns: (1fr, auto), align: (left, right), [#strong[教育訓練與發展]：中級], [#strong[關鍵字]：TNA、訓練藍圖、講師培育、學習平台])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳人力資源團隊獎][][中華人力資源管理協會][2023年11月]
- 表揚在人才策略、員工體驗與組織變革具卓越成效之人資團隊。
- 帶領團隊完成薪酬架構改革與雇主品牌計畫，獲得評審一致肯定。

#resume-subheading[卓越雇主品牌獎][][亞太人力資源評論][2022年9月]
- 肯定公司在校園招募、員工價值主張與多元共融政策之表現。
- 成功提升品牌知名度與新人到職率，並降低招募成本。
]

= 證書
#resume-pad[
#resume-subheading[全方位人力資源管理師][#link("https://www.chrma.org.tw/certification/hr-manager")[https\:\/\/www\.chrma\.org\.tw\/certification\/hr\-manager]][中華人力資源管理協會][2018年3月]

#resume-subheading[國際專案管理師 PMP][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][國際專案管理學會][2019年6月]

#resume-subheading[勞動法令遵循專家][#link("https://www.taiwanlaborlaw.org/certification/compliance")[https\:\/\/www\.taiwanlaborlaw\.org\/certification\/compliance]][台灣勞動法學會][2020年10月]
]

= 出版刊物
#resume-pad[
#resume-subheading[數位轉型下的人才策略：以台灣科技業為例][#link("https://doi.org/10.1234/hrmj.2022.001")[https\:\/\/doi\.org\/10\.1234\/hrmj\.2022\.001]][人力資源管理學報][2022年12月]
- 探討數位轉型對科技業人才策略、組織設計與關鍵職能之影響。
- 以三家台灣上市科技公司為個案，提出人才培育與接班規劃建議。

#resume-subheading[從員工體驗出發的留才策略][#link("https://www.aphrreview.com/articles/employee-experience-retention")[https\:\/\/www\.aphrreview\.com\/articles\/employee\-experience\-retention]][亞太人力資源評論][2021年5月]
- 分析員工體驗對留任意願之影響，提出五大員工旅程改善方向。
- 提供人資主管可執行之留才措施與衡量指標。
]

= 項目
#resume-pad[
#resume-subheading[人才發展與接班計畫][#link("https://www.yunhui-tech.com/esg/talent-development")[https\:\/\/www\.yunhui\-tech\.com\/esg\/talent\-development]][為關鍵職位建立人才盤點、發展藍圖與接班梯隊，確保組織中長期人才供給。][2022年1月–2023年12月]
- 盤點 12 個關鍵職位與 45 位高潛力人才，建立九宮格人才地圖。
- 設計個人發展計畫與導師制度，兩年內內部晉升比例提升至 65%。
- 建立接班梯隊檢視機制，每季向高階管理層報告人才準備度。
#strong[關鍵字]：人才盤點、接班梯隊、發展藍圖、關鍵職位

#resume-subheading[員工體驗平台導入][#link("https://www.yunhui-tech.com/hr/employee-experience")[https\:\/\/www\.yunhui\-tech\.com\/hr\/employee\-experience]][導入一站式員工服務平台，整合入離職、考勤、薪酬查詢與意見回饋流程。][2021年3月–2021年11月]
- 與 IT 及外部供應商協作，完成需求訪談、流程設計與系統上線。
- 將常見人資問題處理時間縮短 40%，員工服務滿意度提升至 88%。
- 建立人資數據儀表板，追蹤服務量、處理時效與員工回饋趨勢。
#strong[關鍵字]：員工體驗、流程自動化、HRIS、服務中心
]

= 興趣愛好
#resume-pad[
#strong[人力資源社群]：專業分享、講座、讀書會

#strong[運動]：瑜伽、慢跑、登山

#strong[閱讀]：管理學、心理學、人物傳記
]

= 志願服務
#resume-pad[
#resume-subheading[志工講師][#link("https://www.chrma.org.tw")[https\:\/\/www\.chrma\.org\.tw]][中華人力資源管理協會][2019年1月至今]
- 擔任人力資源管理師認證課程講師，分享薪酬設計與員工關係實務。
- 協助協會辦理年度論壇與企業參訪，促進人資專業交流。

#resume-subheading[職涯導師][#link("https://www.twyouthcareer.org.tw")[https\:\/\/www\.twyouthcareer\.org\.tw]][台灣青年職涯發展協會][2020年3月–2023年12月]
- 提供青年一對一職涯諮詢，協助履歷健檢、面試準備與職涯規劃。
- 參與校園職涯講座，分享人資產業趨勢與求職技巧。
]