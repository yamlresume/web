#set document(
  title: "林怡君 - 資深使用者經驗設計師 ｜ 打造以人為本的數位體驗",
  author: "林怡君",
  keywords: "使用者研究, 互動設計, 視覺設計, 原型開發",
  description: "Résumé of 林怡君",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林怡君]] #v(-0.2em)

#text(size: 1.44em)[資深使用者經驗設計師 ｜ 打造以人為本的數位體驗]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yichun.lin@example.com")[yichun\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.behance.net/yichunlin")[https\:\/\/www\.behance\.net\/yichunlin]

中國臺灣，大安區，台北市，信義路二段 100 號 8 樓，106

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M232 237.2c31.8-15.2 48.4-38.2 48.4-74 0-70.6-52.6-87.8-113.3-87.8l-167.1 0 0 354.4 171.8 0c64.4 0 124.9-30.9 124.9-102.9 0-44.5-21.1-77.4-64.7-89.7zM77.9 135.9l73.1 0c28.1 0 53.4 7.9 53.4 40.5 0 30.1-19.7 42.2-47.5 42.2l-79 0 0-82.7zm83.3 233.7l-83.3 0 0-97.6 84.9 0c34.3 0 56 14.3 56 50.6 0 35.8-25.9 47-57.6 47zM519.7 128.9l-143.7 0 0-34.9 143.7 0 0 34.9zM576 305.2c0-75.9-44.4-139.2-124.9-139.2-78.2 0-131.3 58.8-131.3 135.8 0 79.9 50.3 134.7 131.3 134.7 61.3 0 101-27.6 120.1-86.3l-62.2 0c-6.7 21.9-34.3 33.5-55.7 33.5-41.3 0-63-24.2-63-65.3l185.1 0c.3-4.2 .6-8.7 .6-13.2zM390.4 274c2.3-33.7 24.7-54.8 58.5-54.8 35.4 0 53.2 20.8 56.2 54.8l-114.7 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.behance.net/yichunlin")[yichunlin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yichunlin")[yichunlin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yichunlin")[yichunlin]
]

= 簡介

#resume-pad[
擁有 8 年以上產品設計與使用者研究經驗，專精於 Web 與 App 的 UX 策略、互動設計與設計系統。

- 主導超過 20 個跨國與本土專案，涵蓋金融科技、電商、SaaS 與醫療照護領域
- 擅長以質化與量化研究發掘使用者需求，並將研究洞見轉化為具體設計決策
- 熟悉 Design Sprint、雙鑽石流程與敏捷開發，能有效與產品、工程團隊協作
- 透過設計系統與反覆原型測試，協助團隊提升開發效率與產品易用性
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣科技大學][#link("https://www.ntust.edu.tw")[https\:\/\/www\.ntust\.edu\.tw]][碩士，設計系 互動設計組，成績：3\.9][2012年9月–2014年7月]
- 碩士論文以「高齡者行動支付應用程式之介面設計研究」獲選為系所優秀論文
- 協助教授執行科技部研究計畫，負責使用者訪談、數據整理與原型測試
#strong[課程]：人機互動、認知心理學、使用者經驗研究、互動多媒體設計、服務設計

#resume-subheading[國立臺北科技大學][#link("https://www.ntut.edu.tw")[https\:\/\/www\.ntut\.edu\.tw]][學士，工業設計系，成績：3\.7][2008年9月–2012年7月]
- 畢業專題「城市公共座椅設計」入圍全國設計專題競賽前 10 名
- 在校期間參與跨系所合作案，學習將工程技術與設計思維整合
#strong[課程]：產品設計、人因工程、色彩學、設計素描、材料與製造程序
]

= 工作經歷
#resume-pad[
#resume-subheading[資深 UX Designer][#link("https://www.chengxin-design.example.com")[https\:\/\/www\.chengxin\-design\.example\.com]][澄心設計顧問股份有限公司][2021年1月至今]
- 主導金融科技與醫療照護產品的 UX 策略，包含使用者研究、資訊架構、互動流程與設計系統建置
- 與產品經理、前後端工程師協作，透過設計衝刺與快速原型測試，將新功能上線時間縮短 30%
- 建立以使用者為中心的設計流程，導入易用性測試與數據分析，提升產品滿意度與留存率
- 擔任設計導師，協助資淺設計師提升研究與視覺傳達能力
#strong[關鍵字]：使用者研究、設計策略、設計系統、跨職能協作、敏捷開發

#resume-subheading[UX Designer][#link("https://www.futurelab.example.com")[https\:\/\/www\.futurelab\.example\.com]][FutureLab 科技股份有限公司][2018年7月–2020年12月]
- 負責 B2B SaaS 產品線的介面設計與使用流程優化，涵蓋資料儀表板、權限管理與報表系統
- 執行超過 15 場使用者訪談與遠端易用性測試，持續將研究發現轉化為設計迭代
- 與工程團隊共同建立元件庫與設計規範，降低跨團隊溝通成本並提升開發效率
- 參與產品需求定義與優先級排序，提出以數據驅動的設計方案，協助達成年度留存目標
#strong[關鍵字]：B2B SaaS、易用性測試、設計系統、數據分析、使用者訪談

#resume-subheading[UI\/UX Designer][#link("https://www.goodidea.example.com")[https\:\/\/www\.goodidea\.example\.com]][好點子數位設計有限公司][2016年8月–2018年6月]
- 負責電商品牌與行銷活動網頁的視覺設計、RWD 切版與 Prototype 製作
- 與設計總監合作建立設計規範，統一元件樣式與互動行為，提升品牌一致性
- 運用 Google Analytics 與 Hotjar 分析使用者行為，提出頁面優化建議並提升轉換率 15%
#strong[關鍵字]：響應式設計、視覺設計、Prototype、電商、數據分析
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語、繁體中文])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 900、產品簡報、跨國協作])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[使用者研究]：專家], [#strong[關鍵字]：深度訪談、脈絡探查、易用性測試、問卷調查、Persona、顧客旅程地圖])

#grid(columns: (1fr, auto), align: (left, right), [#strong[互動設計]：專家], [#strong[關鍵字]：線框圖、互動原型、資訊架構、使用者流程、微互動])

#grid(columns: (1fr, auto), align: (left, right), [#strong[視覺設計]：高級], [#strong[關鍵字]：Figma、Adobe XD、Sketch、設計系統、排版與色彩])

#grid(columns: (1fr, auto), align: (left, right), [#strong[原型開發]：中級], [#strong[關鍵字]：HTML\/CSS、JavaScript、Framer、Principle、ProtoPie])
]

= 榮譽
#resume-pad[
#resume-subheading[金點設計獎][][台灣設計研究院][2022年11月]
以「記憶守護者」失智症照護 App 榮獲年度最佳設計獎，肯定其在介面設計、服務流程與社會關懷上的創新。

#resume-subheading[設計系所優秀論文獎][][國立臺灣科技大學][2014年7月]
碩士論文「高齡者行動支付應用程式之介面設計研究」獲選為當年度優秀論文。
]

= 證書
#resume-pad[
#resume-subheading[Google UX Design Professional Certificate][#link("https://www.coursera.org/")[https\:\/\/www\.coursera\.org\/]][Google][2023年1月]

#resume-subheading[NN\/g UX Certification][#link("https://www.nngroup.com/")[https\:\/\/www\.nngroup\.com\/]][Nielsen Norman Group][2022年3月]
]

= 出版刊物
#resume-pad[
#resume-subheading[以服務設計觀點探討智慧健康照護平台之使用者經驗][#link("https://www.jodesign.org.tw")[https\:\/\/www\.jodesign\.org\.tw]][設計學報][2023年7月]
探討智慧健康照護平台在使用者經驗上的挑戰，提出以服務藍圖與使用者旅程地圖整合的設計評估架構，並以實際案例驗證其可行性。
]

= 項目
#resume-pad[
#resume-subheading[記憶守護者（Memory Keeper）][#link("https://www.memorykeeper.example.com")[https\:\/\/www\.memorykeeper\.example\.com]][為失智症患者與家屬設計的照護協作 App，整合用藥提醒、日常紀錄與緊急聯絡功能。][2021年3月–2022年12月]
- 主導田野調查與訪談，深入理解照顧者與患者的痛點，建立人物誌與使用情境
- 設計完整的服務流程與互動原型，並進行 3 輪易用性測試，任務完成率提升 42%
- 與工程團隊密切協作，確保設計系統在 iOS 與 Android 平台上的一致體驗
#strong[關鍵字]：服務設計、使用者研究、原型測試、失智症照護、設計系統

#resume-subheading[遠距醫療預約平台 Redesign][#link("https://www.telehealth.example.com")[https\:\/\/www\.telehealth\.example\.com]][重新設計醫療院所遠距掛號與視訊看診流程，降低患者的操作焦慮並提升預約成功率。][2020年1月–2021年6月]
- 分析既有使用者流程與客服數據，找出 10 個關鍵斷點並進行重新設計
- 建立符合無障礙規範的設計元件，確保高齡使用者也能順利操作
- 系統上線後，預約成功率提升 27%，客服進線量減少 18%
#strong[關鍵字]：醫療設計、無障礙設計、使用者流程、數據分析
]

= 興趣愛好
#resume-pad[
#strong[設計寫作]：Medium、設計方法、個案研究

#strong[戶外運動]：登山、單車、露營
]

= 志願服務
#resume-pad[
#resume-subheading[實體活動志工][#link("https://uxpataiwan.example.com")[https\:\/\/uxpataiwan\.example\.com]][台灣使用者經驗設計協會][2019年1月–2022年12月]
- 協助籌辦年度使用者經驗研討會，負責講者邀請、工作坊規劃與現場活動執行
- 參與線上社群文章翻譯與推廣，促進台灣設計社群知識交流
]