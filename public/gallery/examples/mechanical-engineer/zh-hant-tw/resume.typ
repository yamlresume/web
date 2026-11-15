#set document(
  title: "林冠宇 - 資深機械工程師 | 產品開發與精密製造",
  author: "林冠宇",
  keywords: "機構設計與產品開發, 電腦輔助工程, 製造與品質工程, 專案與團隊管理",
  description: "Résumé of 林冠宇",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林冠宇]] #v(-0.2em)

#text(size: 1.44em)[資深機械工程師 | 產品開發與精密製造]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:guanyu.lin.engineer@gmail.com")[guanyu\.lin\.engineer\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/guanyu-lin-me")[https\:\/\/www\.linkedin\.com\/in\/guanyu\-lin\-me]

中國臺灣，台北市，台北市，台北市內湖區瑞光路 168 號，114

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/guanyu-lin-me")[guanyu\-lin\-me] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/guanyulin-me")[guanyulin\-me]
]

= 簡介

#resume-pad[
資深機械工程師，具備十年以上產品開發、精密製造與熱管理系統整合經驗，熟悉從概念設計、工程分析、原型驗證到量產導入的完整流程。

- 專精機構設計、電腦輔助工程分析與可製造性設計，能有效平衡性能、成本與量產需求
- 具備跨部門專案領導經驗，曾主導電動車電池模組與工業設備散熱方案開發
- 熟悉 ISO 9001、幾何尺寸與公差、FMEA 與供應商技術管理，擅長以數據驅動設計決策
- 重視團隊協作與技術傳承，能將複雜工程問題轉化為可執行方案
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw/")[https\:\/\/www\.ntu\.edu\.tw\/]][碩士，機械工程學系，成績：3\.92\/4\.0][2014年9月–2016年6月]
- 專攻熱流與精密機械設計，完成多項電腦輔助工程分析專題
- 碩士論文聚焦多孔介質散熱器性能優化，獲學院論文獎肯定
- 擔任研究助理，協助實驗設備建置與量測數據分析
#strong[課程]：熱傳學、流體力學、有限元素分析、機械設計、精密製造、控制系統

#resume-subheading[國立清華大學][#link("https://www.nthu.edu.tw/")[https\:\/\/www\.nthu\.edu\.tw\/]][學士，動力機械工程學系，成績：3\.78\/4\.0][2010年9月–2014年6月]
- 建立紮實的機械工程基礎，並選修機電整合與產品設計課程
- 參與太陽能車隊，負責傳動系統設計與測試
#strong[課程]：機械製造、材料力學、熱力學、機構學、自動控制
]

= 工作經歷
#resume-pad[
#resume-subheading[資深機械工程師][#link("https://www.tppowertech.com.tw")[https\:\/\/www\.tppowertech\.com\.tw]][台灣精密動力科技股份有限公司][2021年3月至今]
- 主導電動車電池模組熱管理系統開發，從概念設計到量產導入，降低模組最高溫度約 12%
- 建立機構設計審查流程與可製造性檢核表，縮短設計迭代時間並降低模具修改成本
- 與電子、韌體、製造及供應商品質團隊協作，完成多項跨國客戶專案
- 指導 3 位初階工程師，負責技術文件、圖面審核與實驗計畫規劃
#strong[關鍵字]：熱管理系統、電池模組、機構設計、可製造性設計、專案領導

#resume-subheading[機械工程師][#link("https://www.hongrui-precision.com.tw")[https\:\/\/www\.hongrui\-precision\.com\.tw]][鴻銳精密機械股份有限公司][2016年7月–2021年2月]
- 負責線性滑軌與傳動元件機構設計，完成多項客製化規格開發
- 執行有限元素分析與振動測試，改善產品剛性與使用壽命
- 協助新產品試產、治具設計與製程異常分析，提升良率約 8%
- 撰寫設計規範與技術報告，支援業務與客戶技術討論
#strong[關鍵字]：傳動元件、有限元素分析、振動測試、治具設計、良率改善
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、技術簡報、跨國專案溝通])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[機構設計與產品開發]：專家], [#strong[關鍵字]：產品結構設計、傳動系統設計、散熱設計、組裝性設計、工程圖繪製])

#grid(columns: (1fr, auto), align: (left, right), [#strong[電腦輔助工程]：高級], [#strong[關鍵字]：SolidWorks、Creo、ANSYS、有限元素分析、熱流模擬])

#grid(columns: (1fr, auto), align: (left, right), [#strong[製造與品質工程]：高級], [#strong[關鍵字]：精密加工、射出成型、幾何尺寸與公差、失效模式分析、統計製程管制])

#grid(columns: (1fr, auto), align: (left, right), [#strong[專案與團隊管理]：高級], [#strong[關鍵字]：跨部門協作、供應商管理、設計審查、技術文件、時程規劃])
]

= 榮譽
#resume-pad[
#resume-subheading[年度優秀工程師獎][][台灣精密動力科技股份有限公司][2023年11月]
- 表彰在電動車電池模組熱管理專案中的技術領導與跨部門協作貢獻
- 專案成功導入量產，並取得客戶年度品質評鑑優等

#resume-subheading[碩士論文獎][][國立臺灣大學機械工程學系][2016年6月]
- 以多孔介質散熱器性能優化為主題，獲系上所頒發之學術研究獎
]

= 證書
#resume-pad[
#resume-subheading[機械工程技師證書][#link("https://www.moex.gov.tw")[https\:\/\/www\.moex\.gov\.tw]][考試院][2016年7月]

#resume-subheading[SolidWorks 專業認證][#link("https://www.solidworks.com/certification")[https\:\/\/www\.solidworks\.com\/certification]][Dassault Systèmes][2019年3月]

#resume-subheading[ISO 9001 內部稽核員][#link("https://www.sgs.com.tw")[https\:\/\/www\.sgs\.com\.tw]][SGS Taiwan][2021年8月]
]

= 出版刊物
#resume-pad[
#resume-subheading[多孔介質散熱器之熱傳性能數值與實驗分析][#link("https://doi.org/10.1234/jcme.2020.5678")[https\:\/\/doi\.org\/10\.1234\/jcme\.2020\.5678]][中國機械工程學刊][2020年6月]
- 建立多孔介質散熱器之三維熱流模型，並以實驗驗證模擬結果
- 探討孔徑、孔隙率與流量對熱阻與壓降的影響
- 提出兼顧散熱效能與泵浦功耗之設計參數建議
]

= 項目
#resume-pad[
#resume-subheading[電動車電池模組熱管理系統][#link("https://www.tppowertech.com.tw/projects/ev-battery-thermal")[https\:\/\/www\.tppowertech\.com\.tw\/projects\/ev\-battery\-thermal]][針對高能量密度電池模組開發液冷式熱管理系統，整合流道設計、結構強度與量產製造需求。][2022年1月–2023年12月]
- 設計液冷板流道與導熱結構，改善電芯溫差與高溫熱點問題
- 使用 ANSYS Fluent 進行熱流模擬，並以環境測試驗證散熱性能
- 與供應商合作完成鋁擠型與摩擦攪拌銲接製程開發
- 建立 DFMEA 與關鍵尺寸管制計畫，支援量產品質監控
#strong[關鍵字]：電動車、液冷散熱、電池模組、熱流模擬、量產導入

#resume-subheading[工業機器人關節減速機測試平台][][建置機器人關節減速機之性能與耐久測試平台，用於評估背隙、效率與溫升特性。][2018年3月–2019年11月]
- 規劃測試機台機構、治具與感測器配置
- 撰寫測試程序並分析背隙、傳動效率與溫升數據
- 依據測試結果提出減速機結構與潤滑改善建議
#strong[關鍵字]：機器人、減速機、測試平台、機構設計
]

= 興趣愛好
#resume-pad[
#strong[戶外活動]：登山、自行車、露營

#strong[音樂與閱讀]：吉他、爵士樂、工程史
]

= 志願服務
#resume-pad[
#resume-subheading[志工講師][#link("https://www.csme.org.tw")[https\:\/\/www\.csme\.org\.tw]][台灣機械工程學會青年委員會][2019年3月–2022年12月]
- 參與高中職工程教育推廣，講授機械設計與 3D 建模基礎
- 協助規劃產業參訪與青年工程師交流活動
- 指導學生專題團隊參加全國機械設計競賽
]