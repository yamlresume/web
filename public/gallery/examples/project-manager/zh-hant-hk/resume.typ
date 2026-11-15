#set document(
  title: "陳嘉敏 - 資深項目經理 | 數碼轉型與產品交付",
  author: "陳嘉敏",
  keywords: "項目管理, 數碼轉型, 工具",
  description: "Résumé of 陳嘉敏",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳嘉敏]] #v(-0.2em)

#text(size: 1.44em)[資深項目經理 | 數碼轉型與產品交付]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chan.ka.man.pm@gmail.com")[chan\.ka\.man\.pm\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.chan-ka-man.com")[https\:\/\/www\.chan\-ka\-man\.com]

中國香港，九龍，香港，香港九龍旺角彌敦道700號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chan-ka-man-pm")[chan\-ka\-man\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/chanpmhk")[chanpmhk]
]

= 簡介

#resume-pad[
資深項目經理，擁有超過 10 年資訊科技及數碼轉型項目管理經驗。擅長領導跨部門團隊，從需求分析、資源規劃到交付上線，確保項目按時、按預算及符合質量標準完成。

持有 PMP 及 PMI\-ACP 專業認證，精通敏捷與傳統項目管理方法。曾成功交付多個超過港幣 2,000 萬的大型項目，涵蓋金融科技、電訊及客戶服務平台。

- 卓越的持份者管理及溝通能力
- 數據驅動的決策與風險管理
- 擅長推動變更管理及團隊賦能
]

= 教育背景
#resume-pad[
#resume-subheading[香港科技大學][#link("https://www.ust.hk")[https\:\/\/www\.ust\.hk]][學士，資訊系統與管理，成績：3\.6][2010\-09\-01–2014\-06\-30]
- 主修資訊系統與管理，副修商業分析
- 曾獲院長嘉許名單
- 畢業專題為智慧城市交通管理系統
#strong[課程]：資料庫管理系統、系統分析與設計、專案管理、企業資源規劃、商業智能、軟件工程
]

= 工作經歷
#resume-pad[
#resume-subheading[高級項目經理][#link("https://www.hkt.com")[https\:\/\/www\.hkt\.com]][香港電訊數碼有限公司][2021\-04\-01至今]
- 領導跨部門團隊交付多個大型數碼轉型項目，總預算超過港幣 2,000 萬
- 制定項目路線圖、資源分配及風險管理計劃，確保按時按預算交付
- 與產品、工程及業務團隊協作，推動敏捷開發流程及持續改進
- 建立項目績效指標及匯報機制，定期向管理層匯報進度
- 指導初級項目經理及項目協調員，提升團隊整體交付能力
#strong[關鍵字]：數碼轉型、敏捷開發、風險管理、持份者管理

#resume-subheading[項目經理][#link("https://www.shkf.com")[https\:\/\/www\.shkf\.com]][新鴻基金融集團][2018\-07\-01–2021\-03\-31]
- 管理金融科技項目，包括網上銀行平台及流動支付系統
- 協調內部開發團隊與外部供應商，確保系統整合順利
- 主持需求收集工作坊，將業務需求轉化為技術規格
- 實施項目治理框架，降低項目延誤及超支風險
#strong[關鍵字]：金融科技、網上銀行、供應商管理、需求分析

#resume-subheading[助理項目經理][#link("https://www.pccw.com")[https\:\/\/www\.pccw\.com]][電訊盈科有限公司][2014\-08\-01–2018\-06\-30]
- 協助管理客戶關係管理系統升級項目，涵蓋 10 個業務部門
- 負責項目文件、會議記錄及進度追蹤
- 參與用戶驗收測試及培訓安排
- 協調跨部門溝通，確保項目里程碑達成
#strong[關鍵字]：CRM、用戶驗收測試、項目協調、培訓
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5、HKDSE English 5\*])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：初級水平], [#strong[關鍵字]：JLPT N4])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[項目管理]：專家], [#strong[關鍵字]：敏捷開發、Scrum、瀑布模型、風險管理、持份者管理、預算控制])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數碼轉型]：高級], [#strong[關鍵字]：流程自動化、雲端遷移、數據分析、變更管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[工具]：高級], [#strong[關鍵字]：Jira、Confluence、MS Project、Trello、Asana、Power BI])
]

= 榮譽
#resume-pad[
#resume-subheading[年度傑出項目經理][][香港電訊數碼有限公司][2023\-12\-01]
表揚在數碼轉型項目中的卓越領導及交付表現，成功為公司節省 15% 營運成本。

#resume-subheading[最佳創新項目獎][][新鴻基金融集團][2020\-11\-01]
領導的流動支付項目獲得集團年度創新獎，用戶採用率超過 80%。
]

= 證書
#resume-pad[
#resume-subheading[專業項目管理師 (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][2019\-06\-01]

#resume-subheading[敏捷認證從業者 (PMI\-ACP)][#link("https://www.pmi.org/certifications/agile-acp")[https\:\/\/www\.pmi\.org\/certifications\/agile\-acp]][Project Management Institute][2021\-09\-01]

#resume-subheading[AWS Certified Cloud Practitioner][#link("https://aws.amazon.com/certification/certified-cloud-practitioner/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-cloud\-practitioner\/]][Amazon Web Services][2022\-03\-01]
]

= 出版刊物
#resume-pad[
#resume-subheading[香港企業數碼轉型的關鍵成功因素][#link("https://www.hkitjournal.com/digital-transformation-hk")[https\:\/\/www\.hkitjournal\.com\/digital\-transformation\-hk]][香港資訊科技期刊][2023\-05\-01]
- 探討香港企業在數碼轉型過程中常見的挑戰與機遇
- 提出項目管理在轉型中的關鍵角色及最佳實踐
- 分析敏捷方法與傳統項目管理的混合應用
]

= 引薦
#resume-pad[
#resume-subheading[李文傑博士][香港科技大學資訊系統學系教授][mankit\.lee\@ust\.hk][\+852 9876 5432]
陳嘉敏在任職期間展現卓越的項目領導能力，能有效協調跨部門團隊，並在多個關鍵項目中達成超預期成果。
]

= 項目
#resume-pad[
#resume-subheading[智慧客戶服務平台][#link("https://www.chan-ka-man.com/projects/smart-cs-platform")[https\:\/\/www\.chan\-ka\-man\.com\/projects\/smart\-cs\-platform]][為大型電訊商建立整合式客戶服務平台][2022\-01\-01–2022\-12\-31]
- 整合多渠道客服系統，包括電話、電郵、社交媒體及即時聊天
- 導入 AI 聊天機械人，處理 60% 常見查詢
- 項目提前兩週上線，客戶滿意度提升 25%
#strong[關鍵字]：客戶服務、AI、系統整合

#resume-subheading[金融數據儀表板][#link("https://www.chan-ka-man.com/projects/finance-dashboard")[https\:\/\/www\.chan\-ka\-man\.com\/projects\/finance\-dashboard]][為金融集團管理層開發實時業務數據儀表板][2019\-03\-01–2019\-11\-30]
- 整合多個內部系統數據，提供即時關鍵績效指標
- 與業務分析師合作定義指標及可視化需求
- 採用敏捷疊代方式交付，每兩週發布新功能
#strong[關鍵字]：數據可視化、Power BI、KPI
]

= 興趣愛好
#resume-pad[
#strong[運動]：跑步、游泳、遠足

#strong[音樂]：鋼琴、爵士樂

#strong[志願服務]：青年 mentorship、社區服務
]

= 志願服務
#resume-pad[
#resume-subheading[項目顧問][#link("https://www.hkfyg.org.hk")[https\:\/\/www\.hkfyg\.org\.hk]][香港青年協會][2020\-01\-01–2023\-12\-31]
- 為青年創業項目提供項目管理及商業策劃指導
- 協助舉辦創新創業比賽及工作坊
- 分享數碼轉型及職涯發展經驗
]