#set document(
  title: "陳偉明 - 資深業務分析師 | 數據驅動決策與流程優化",
  author: "陳偉明",
  keywords: "業務分析, 數據分析, 項目管理, 工具",
  description: "Résumé of 陳偉明",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳偉明]] #v(-0.2em)

#text(size: 1.44em)[資深業務分析師 | 數據驅動決策與流程優化]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chan.waiming@example.com")[chan\.waiming\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/chanwaiming")[https\:\/\/www\.linkedin\.com\/in\/chanwaiming]

中國香港，香港島，香港，中環皇后大道中99號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chanwaiming")[chanwaiming]
]

= 簡介

#resume-pad[
- 擁有超過6年業務分析經驗，專注於金融與電訊行業的數字化轉型
- 擅長需求收集、業務流程建模、數據分析及利益相關者管理
- 精通敏捷開發方法，熟練運用SQL、Tableau、Power BI等工具
- 具備優秀的溝通與協調能力，能有效橋接業務與技術團隊
- 持有CBAP、PMP及IIBA\-AAC等專業認證
]

= 教育背景
#resume-pad[
#resume-subheading[香港大學][#link("https://www.hku.hk")[https\:\/\/www\.hku\.hk]][學士，工商管理學士（資訊系統），成績：3\.6\/4\.0][2014年9月–2018年6月]
- 主修資訊系統，副修統計學，成績優異
- 曾獲院長嘉許名單，並於畢業論文研究電子商務用戶行為
- 積極參與商業案例競賽，獲得校內二等獎
#strong[課程]：商業分析、資料庫管理、系統分析與設計、項目管理、統計學、財務會計、市場營銷、運營管理
]

= 工作經歷
#resume-pad[
#resume-subheading[高級業務分析師][#link("https://www.hsbc.com.hk")[https\:\/\/www\.hsbc\.com\.hk]][匯豐銀行][2021年3月至今]
- 領導零售銀行數字化轉型項目，負責需求收集與業務流程分析
- 與IT團隊協作，將業務需求轉化為技術規格，確保交付符合預期
- 主導CRM系統升級，提升客戶數據整合效率達30%
- 建立實時業務儀表板，監控關鍵績效指標，輔助管理層決策
- 指導初級分析師，推動團隊採用敏捷實踐
#strong[關鍵字]：需求收集、流程改善、數據分析、敏捷開發、SQL、Tableau、利益相關者管理

#resume-subheading[業務分析師][#link("https://www.hkt.com")[https\:\/\/www\.hkt\.com]][香港電訊][2018年7月–2021年2月]
- 負責電訊業務支撐系統的需求分析與流程優化
- 使用BPMN和UML繪製業務流程圖，識別瓶頸並提出改善方案
- 撰寫用戶故事與驗收標準，協調UAT測試，確保系統上線質量
- 參與跨部門項目，成功將訂單處理時間縮短20%
#strong[關鍵字]：業務流程建模、BPMN、UML、用戶故事、UAT、流程優化

#resume-subheading[業務分析實習生][#link("https://www.hkex.com.hk")[https\:\/\/www\.hkex\.com\.hk]][香港交易所][2017年6月–2017年8月]
- 協助分析市場數據，製作每週交易報告
- 參與需求研討會，記錄並整理業務需求
- 支援團隊完成系統測試案例編寫
#strong[關鍵字]：數據分析、報告製作、需求整理
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5、商業書寫])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：有限工作水平], [#strong[關鍵字]：HSK 5、基本會話])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[業務分析]：專家], [#strong[關鍵字]：需求收集、流程改善、差距分析、利益相關者管理、業務流程建模、用戶故事、驗收測試])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析]：高級], [#strong[關鍵字]：SQL、Python、Tableau、Power BI、Excel、統計分析、A\/B測試])

#grid(columns: (1fr, auto), align: (left, right), [#strong[項目管理]：高級], [#strong[關鍵字]：敏捷開發、Scrum、瀑布模型、JIRA、Confluence、風險管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[工具]：中級], [#strong[關鍵字]：Visio、Lucidchart、UML、BPMN、MS Project、Google Analytics])
]

= 榮譽
#resume-pad[
#resume-subheading[傑出員工獎][][匯豐銀行][2023年12月]
表彰在數字化轉型項目中的卓越貢獻，成功提升客戶數據整合效率。

#resume-subheading[院長嘉許名單][][香港大學][2017年6月]
表揚學術成績優異，位列學院前10%。
]

= 證書
#resume-pad[
#resume-subheading[認證業務分析師 (CBAP)][#link("https://www.iiba.org/certification/cbap/")[https\:\/\/www\.iiba\.org\/certification\/cbap\/]][IIBA][2022年11月]

#resume-subheading[敏捷分析認證 (IIBA\-AAC)][#link("https://www.iiba.org/certification/agile-analysis/")[https\:\/\/www\.iiba\.org\/certification\/agile\-analysis\/]][IIBA][2021年5月]

#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][PMI][2020年8月]
]

= 出版刊物
#resume-pad[
#resume-subheading[數據驅動的業務分析：香港金融業的實踐][#link("https://www.hkitjournal.com/data-driven-business-analysis")[https\:\/\/www\.hkitjournal\.com\/data\-driven\-business\-analysis]][香港資訊科技雜誌][2023年3月]
探討如何利用數據分析提升業務決策效率，並分享香港金融業的實際案例。
]

= 項目
#resume-pad[
#resume-subheading[客戶關係管理系統升級][][為匯豐銀行零售銀行部門升級CRM系統，整合客戶數據並提升銷售效率。][2023年1月–2023年12月]
- 負責需求收集與業務流程分析，定義系統功能與用戶故事
- 協調IT團隊與業務部門，確保系統按時交付
- 設計UAT測試案例，培訓用戶，系統上線後客戶滿意度提升15%
#strong[關鍵字]：CRM、Salesforce、需求收集、UAT

#resume-subheading[實時業務儀表板開發][][為香港電訊建立實時業務績效儀表板，監控關鍵指標。][2022年3月–2022年9月]
- 使用Tableau和SQL開發儀表板，視覺化呈現銷售與運營數據
- 與管理層合作定義KPI，確保儀表板滿足決策需求
- 儀表板上線後，報告生成時間減少50%
#strong[關鍵字]：Tableau、SQL、數據可視化、KPI
]

= 興趣愛好
#resume-pad[
#strong[遠足]：龍脊、鳳凰山、麥理浩徑

#strong[攝影]：風景攝影、街頭攝影

#strong[閱讀]：商業分析、數據科學、歷史
]

= 志願服務
#resume-pad[
#resume-subheading[職涯導師][#link("https://www.hkfyg.org.hk")[https\:\/\/www\.hkfyg\.org\.hk]][香港青年協會][2021年9月至今]
- 為大學生提供職涯規劃指導，分享業務分析行業經驗
- 協助舉辦模擬面試及履歷工作坊，累計服務超過50名學生
]