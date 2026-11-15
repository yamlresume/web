#set document(
  title: "陳家豪 - 資深機械工程師 | 精密製造與產品研發",
  author: "陳家豪",
  keywords: "機械設計與建模, 分析與模擬, 製造工藝, 品質與流程改善, 項目管理",
  description: "Résumé of 陳家豪",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳家豪]] #v(-0.2em)

#text(size: 1.44em)[資深機械工程師 | 精密製造與產品研發]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kaho.chan.eng@gmail.com")[kaho\.chan\.eng\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.kahohan-engineering.com")[https\:\/\/www\.kahohan\-engineering\.com]

中國香港，九龍，香港，九龍紅磡海逸道 8 號海逸豪園 5 座 18 樓 B 室

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kahochan-eng")[kahochan\-eng] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/kahochan")[kahochan]
]

= 簡介

#resume-pad[
- 八年以上機械設計與產品開發經驗，專注於精密傳動系統、消費電子結構件及電動車零部件
- 精通 SolidWorks、Creo 及 ANSYS，能獨立完成由概念設計、3D 建模、有限元分析至量產導入的完整流程
- 熟悉 CNC 加工、注塑成型、壓鑄及衝壓等製造工藝，善用 GD&T 與 DFMEA 提升產品良率
- 曾帶領五人工程團隊，與香港、深圳及東莞供應商跨地域協作，成功將七款產品由原型推進至量產
#strong[專業理念]：以數據驅動設計決策，在成本、性能與可製造性之間取得最佳平衡，並重視團隊知識傳承。
]

= 教育背景
#resume-pad[
#resume-subheading[香港理工大學][#link("https://www.polyu.edu.hk")[https\:\/\/www\.polyu\.edu\.hk]][碩士，機械工程學，成績：優異][2019年9月–2021年11月]
- 以兼讀形式完成碩士課程，論文主題為電動車電池模組液冷流道優化
- 在職期間將課堂所學的 CFD 方法應用於公司實際項目，獲部門嘉許
#strong[課程]：高等有限元分析、傳熱與流體數值模擬、先進製造技術、產品可靠性工程

#resume-subheading[香港科技大學][#link("https://www.ust.hk")[https\:\/\/www\.ust\.hk]][學士，機械工程學，成績：3\.62\/4\.0][2014年9月–2018年6月]
- 主修機械工程，成績位列學系前 15%，連續三年獲頒院長嘉許名單
- 畢業設計「電動車電池冷卻模組」獲系內最佳設計獎
- 擔任學生機械人隊伍結構組組長，負責底盤與傳動機構設計
#strong[課程]：工程力學與材料科學、熱力學與流體力學、機械設計原理、電腦輔助設計與製造、有限元分析、控制系統與機電整合、製造工程與品質管理、畢業設計：電動車電池冷卻模組
]

= 工作經歷
#resume-pad[
#resume-subheading[資深機械工程師][#link("https://www.chuntat-precision.com.hk")[https\:\/\/www\.chuntat\-precision\.com\.hk]][駿達精密科技有限公司][2021年3月至今]
- 帶領五人研發小組，負責汽車傳動部件與消費電子精密結構件的設計及量產導入
- 主導電動車熱管理模組開發，透過 CFD 模擬優化流道設計，散熱效率提升 22%
- 建立 GD&T 圖面規範與 DFMEA 流程，使新產品試產階段的設計變更減少 35%
- 與深圳及東莞供應商緊密協作，完成模具驗收、試產跟進及量產放行
- 推行 SolidWorks PDM 系統，縮短圖檔審批週期約 40%，並統一零件命名標準
#strong[關鍵字]：精密傳動設計、熱管理系統、GD&T、DFMEA、量產導入

#resume-subheading[機械工程師][#link("https://www.asia-power-systems.com")[https\:\/\/www\.asia\-power\-systems\.com]][亞洲動力系統有限公司][2018年7月–2021年2月]
- 負責工業泵浦與齒輪箱的結構設計、2D 工程圖繪製及 BOM 維護
- 運用 ANSYS 進行靜力與模態分析，改善軸承座剛性，降低振動噪音 3\.5 dB
- 參與舊機型成本優化項目，透過材料替代與結構簡化，每年節省約港幣 120 萬元
- 協助品質部門處理客訴，完成根因分析並提出八項設計改善對策
#strong[關鍵字]：齒輪箱設計、ANSYS、成本優化、振動分析、BOM 管理
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5、技術文件撰寫、客戶簡報])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：內地供應商協調])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：初級水平], [#strong[關鍵字]：JLPT N4])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[機械設計與建模]：專家], [#strong[關鍵字]：SolidWorks、Creo、AutoCAD、3D 建模、工程圖繪製、公差分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[分析與模擬]：高級], [#strong[關鍵字]：ANSYS Mechanical、Abaqus、Fluent \/ CFD、熱傳分析、模態分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[製造工藝]：高級], [#strong[關鍵字]：CNC 加工、注塑成型、壓鑄、衝壓、模具驗收])

#grid(columns: (1fr, auto), align: (left, right), [#strong[品質與流程改善]：高級], [#strong[關鍵字]：GD&T、DFMEA \/ PFMEA、ISO 9001、六西格瑪、8D 報告])

#grid(columns: (1fr, auto), align: (left, right), [#strong[項目管理]：中級], [#strong[關鍵字]：跨部門協作、供應商管理、風險評估、進度控管])
]

= 榮譽
#resume-pad[
#resume-subheading[香港工程師學會最佳畢業設計獎][][香港工程師學會][2018年10月]
以「電動車電池冷卻模組輕量化設計」獲頒年度最佳畢業設計獎，評審肯定其在散熱效能、重量與製造成本之間取得的平衡。

#resume-subheading[年度傑出員工獎][][駿達精密科技有限公司][2023年1月]
表揚其在電動車熱管理模組項目中的技術領導與跨部門協調貢獻，為公司開拓新能源汽車客戶的關鍵人物。
]

= 證書
#resume-pad[
#resume-subheading[註冊專業工程師（機械工程）][#link("https://www.hkie.org.hk")[https\:\/\/www\.hkie\.org\.hk]][香港工程師學會][2022年6月]

#resume-subheading[六西格瑪綠帶認證][#link("https://www.hkpc.org")[https\:\/\/www\.hkpc\.org]][香港生產力促進局][2020年11月]

#resume-subheading[項目管理專業人士（PMP）][#link("https://www.pmi.org")[https\:\/\/www\.pmi\.org]][Project Management Institute][2023年9月]
]

= 出版刊物
#resume-pad[
#resume-subheading[電動車電池模組液冷流道之數值模擬與實驗驗證][#link("https://www.hkie.org.hk/journal")[https\:\/\/www\.hkie\.org\.hk\/journal]][香港工程師學會學報][2021年12月]
- 以 CFD 模擬比較三種流道設計的散熱表現與壓降特性
- 實驗結果顯示蛇形流道在溫差均勻性與泵功耗之間取得最佳平衡
- 研究成果已應用於兩款量產車型的電池模組設計
]

= 項目
#resume-pad[
#resume-subheading[電動車電池熱管理模組][#link("https://www.chuntat-precision.com.hk/projects/btms")[https\:\/\/www\.chuntat\-precision\.com\.hk\/projects\/btms]][為本地電動車廠開發的液冷電池熱管理模組，涵蓋結構設計、流道優化與量產導入][2022年1月–2023年8月]
- 以 CFD 模擬優化流道幾何，模組散熱能力提升 22%
- 採用鋁合金壓鑄配合攪拌摩擦焊，整體減重 15%
- 通過振動、氣密與耐壓測試，順利由原型推進至量產
#strong[關鍵字]：電動車、液冷系統、CFD、壓鑄

#resume-subheading[智能倉儲輸送機構][][針對自動化倉儲系統設計的模組化輸送與分揀機構，可依場地彈性擴展][2019年3月–2020年12月]
- 設計標準化鋁擠型框架與皮帶輸送模組，現場組裝時間縮短 30%
- 完成鏈條與軸承壽命計算，並以 ANSYS 驗證滿載工況下的結構強度
- 於客戶倉庫完成為期三個月的實地測試，分揀準確率達 99\.5%
#strong[關鍵字]：自動化、輸送機構、模組化設計、結構分析
]

= 興趣愛好
#resume-pad[
#strong[運動]：公路單車、遠足、游泳

#strong[手作與創作]：3D 打印、木工、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[義務委員][#link("https://www.hkie.org.hk")[https\:\/\/www\.hkie\.org\.hk]][香港工程師學會青年會員組][2020年9月至今]
- 籌辦「工程師周」校園分享活動，走訪十二間中學推廣工程學科
- 為基層學生設計 STEM 工作坊，教授 3D 打印與簡易機械設計

#resume-subheading[STEM 義務導師][#link("https://www.hkfyg.org.hk")[https\:\/\/www\.hkfyg\.org\.hk]][香港青年協會][2019年1月–2021年8月]
- 每月為中三至中六學生提供機械設計入門課程，累計服務超過 200 名學生
- 指導學生隊伍參加本地機械人比賽，並獲最佳設計獎
]