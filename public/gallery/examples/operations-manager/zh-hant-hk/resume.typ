#set document(
  title: "陳嘉雯 - 資深營運經理 | 零售及供應鏈轉型",
  author: "陳嘉雯",
  keywords: "營運管理, 供應鏈與物流, 數據分析與工具, 領導與溝通",
  description: "Résumé of 陳嘉雯",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳嘉雯]] #v(-0.2em)

#text(size: 1.44em)[資深營運經理 | 零售及供應鏈轉型]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ka.man.chan@example.com")[ka\.man\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.kamanchan.com")[https\:\/\/www\.kamanchan\.com]

中國香港，九龍，香港，香港九龍尖沙咀彌敦道100號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chan-ka-man-ops")[chan\-ka\-man\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@kamanchan-ops")[kamanchan\-ops]
]

= 簡介

#resume-pad[
具備超過十年零售及供應鏈營運管理經驗，專注以數據驅動流程改善、成本控制及團隊效能提升。

- 曾管理逾80人跨區域團隊，負責年度營業額港幣2\.5億元業務之損益管理
- 擅長將營運指標可視化，透過Power BI及SAP推動補貨、庫存及門店流程優化
- 主導六西格瑪及精實項目，三年內累計節省營運成本逾港幣1,200萬元
- 具備跨部門協作與變革管理經驗，能協調採購、物流、銷售及客服團隊達成目標
]

= 教育背景
#resume-pad[
#resume-subheading[香港中文大學][#link("https://www.cuhk.edu.hk")[https\:\/\/www\.cuhk\.edu\.hk]][碩士，供應鏈與物流管理，成績：3\.8][2018\-09\-01–2020\-06\-30]
- 以系統動力學及數據模型研究零售補貨策略，畢業項目獲教授推薦作教學案例
- 協助本地物流企業分析最後一公里配送成本，提出路線整合建議
#strong[課程]：策略採購、物流網絡設計、營運分析、供應鏈風險管理、服務營運管理

#resume-subheading[香港理工大學][#link("https://www.polyu.edu.hk")[https\:\/\/www\.polyu\.edu\.hk]][學士，工商管理（營運管理），成績：3\.6][2010\-09\-01–2014\-06\-30]
- 主修營運管理，建立流程分析、品質管理及成本控制基礎
- 曾代表學系參與企業個案比賽，負責營運改善方案設計
#strong[課程]：管理會計、作業管理、統計學、商業流程分析、項目管理
]

= 工作經歷
#resume-pad[
#resume-subheading[營運經理][#link("https://www.hanwui-retail.com.hk")[https\:\/\/www\.hanwui\-retail\.com\.hk]][恒匯零售集團有限公司][2021\-03\-01至今]
- 管理3個區域、12間門店及80人團隊，負責年度營業額港幣2\.5億元之營運及損益
- 建立每週營運儀表板，追蹤銷售、客流、庫存周轉及人力成本，帶動門店生產力提升18%
- 主導智能補貨及中央庫存調撥項目，將缺貨率由9%降至3\.5%，庫存周轉天數縮短22%
- 與採購、物流及市場部協作推出季節性推廣，連續兩年超額完成營業額目標
- 制定標準作業程序及培訓計劃，將前線員工流失率降低15%
#strong[關鍵字]：零售營運、損益管理、流程改善、團隊領導、數據分析

#resume-subheading[高級營運主任][#link("https://www.wahchun-logistics.com.hk")[https\:\/\/www\.wahchun\-logistics\.com\.hk]][華駿物流有限公司][2017\-07\-01–2021\-02\-28]
- 負責香港及華南地區第三方物流營運，管理倉儲面積逾10萬平方呎及60人團隊
- 優化倉庫布局與揀貨路線，將訂單履行時間縮短25%，準時交付率提升至98\.5%
- 導入ISO 9001品質管理流程，完成內部審核及糾正預防措施，年度審核零重大缺失
- 分析運輸及人力成本，重新議定承運商合約，每年節省港幣約380萬元
#strong[關鍵字]：第三方物流、倉儲管理、ISO 9001、成本控制、準時交付

#resume-subheading[營運分析師][#link("https://www.chuntat-scm.com.hk")[https\:\/\/www\.chuntat\-scm\.com\.hk]][駿達供應鏈管理有限公司][2014\-07\-01–2017\-06\-30]
- 為零售客戶建立需求預測及補貨模型，將預測準確度提升12%
- 編製營運月報及管理層簡報，追蹤KPI、成本差異及改善措施進度
- 參與供應商績效評核及訂單履行流程重組，縮短採購前置時間8%
#strong[關鍵字]：需求預測、供應商管理、KPI、報表分析
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語、粵語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：HKDSE English Level 5、商務書信])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等、跨地區溝通])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[營運管理]：專家], [#strong[關鍵字]：策略規劃、流程改善、損益分析、資源配置、風險管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[供應鏈與物流]：高級], [#strong[關鍵字]：採購、庫存控制、倉儲管理、第三方物流、需求預測])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析與工具]：高級], [#strong[關鍵字]：Excel、Power BI、Tableau、SQL、SAP])

#grid(columns: (1fr, auto), align: (left, right), [#strong[領導與溝通]：專家], [#strong[關鍵字]：團隊培訓、跨部門協作、變革管理、績效管理])
]

= 榮譽
#resume-pad[
#resume-subheading[傑出營運改善大獎][][香港零售管理協會][2023\-11\-15]
表揚智能補貨與跨店庫存調撥項目，成功降低缺貨率並提升門店銷售表現。

#resume-subheading[年度優秀團隊領袖][][恒匯零售集團有限公司][2022\-03\-10]
帶領營運團隊連續兩年超額完成營業額及成本控制目標，獲管理層嘉許。
]

= 證書
#resume-pad[
#resume-subheading[六西格瑪綠帶認證][#link("https://asq.org/cert/six-sigma-green-belt")[https\:\/\/asq\.org\/cert\/six\-sigma\-green\-belt]][美國品質學會（ASQ）][2019\-05\-20]

#resume-subheading[ISO 9001\:2015 內部稽核員證書][#link("https://www.hkqaa.org")[https\:\/\/www\.hkqaa\.org]][香港品質保證局][2020\-09\-12]

#resume-subheading[精實供應鏈管理證書][#link("https://www.hkpc.org")[https\:\/\/www\.hkpc\.org]][香港生產力促進局][2021\-06\-18]
]

= 出版刊物
#resume-pad[
#resume-subheading[零售營運數碼轉型實務指南][#link("https://www.hkla.org.hk/publications/retail-ops-digital-guide")[https\:\/\/www\.hkla\.org\.hk\/publications\/retail\-ops\-digital\-guide]][香港物流協會月刊][2022\-08\-01]
- 分析零售企業如何以數據儀表板、需求預測及自動補貨提升營運效率
- 提出由試點到規模化的數碼轉型路線圖，並列舉成本與效益評估方法
]

= 項目
#resume-pad[
#resume-subheading[智能補貨與庫存優化計劃][#link("https://www.hanwui-retail.com.hk/projects/smart-replenishment")[https\:\/\/www\.hanwui\-retail\.com\.hk\/projects\/smart\-replenishment]][為12間門店建立自動補貨建議及跨店庫存調撥機制。][2022\-01\-01–2022\-12\-31]
- 整合POS、庫存及客流數據，建立每週補貨建議模型
- 與採購及物流團隊制定跨店調撥規則，減少滯銷及缺貨
- 項目完成後缺貨率由9%降至3\.5%，庫存周轉天數縮短22%
#strong[關鍵字]：自動補貨、庫存優化、數據儀表板

#resume-subheading[倉庫流程精實改善項目][#link("https://www.wahchun-logistics.com.hk/projects/lean-warehouse")[https\:\/\/www\.wahchun\-logistics\.com\.hk\/projects\/lean\-warehouse]][以精實方法重整揀貨及包裝流程，提升第三方物流倉庫效率。][2019\-03\-01–2019\-12\-31]
- 進行時間研究及流程盤點，識別揀貨路線重複與包裝瓶頸
- 重新劃分倉儲區域並導入標準作業程序，訂單履行時間縮短25%
- 建立每日改善會議及視覺化管理看板，前線參與度顯著提升
#strong[關鍵字]：精實管理、倉儲流程、標準作業
]

= 興趣愛好
#resume-pad[
#strong[戶外運動]：行山、跑步、單車

#strong[閱讀]：營運管理、供應鏈、歷史

#strong[義工服務]：職涯指導、社區活動
]

= 志願服務
#resume-pad[
#resume-subheading[職涯導師][#link("https://www.hkfyg.org.hk")[https\:\/\/www\.hkfyg\.org\.hk]][香港青年協會][2019\-01\-01至今]
- 為準備投入職場的青年提供履歷撰寫、面試技巧及職涯規劃指導
- 協助舉辦模擬面試及行業分享會，累計服務超過120名青年
]