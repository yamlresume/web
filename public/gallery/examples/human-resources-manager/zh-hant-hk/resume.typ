#set document(
  title: "陳嘉欣 - 人力資源經理｜人才發展與組織效能",
  author: "陳嘉欣",
  keywords: "人力資源策略, 招聘與僱主品牌, 薪酬與福利, 員工關係與合規, 學習與發展, 人力資源資訊系統",
  description: "Résumé of 陳嘉欣",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳嘉欣]] #v(-0.2em)

#text(size: 1.44em)[人力資源經理｜人才發展與組織效能]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ka.yan.chan@example.com")[ka\.yan\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.chan-kayan-hr.com")[https\:\/\/www\.chan\-kayan\-hr\.com]

中國香港，香港島，香港，香港中環皇后大道中99號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chan-kayan-hr")[chan\-kayan\-hr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@chan-kayan-hr")[chan\-kayan\-hr]
]

= 簡介

#resume-pad[
具備超過十年香港及大中華區人力資源管理經驗，專注人才策略、組織發展與員工體驗。擅長在快速變化的零售及科技環境中，將業務目標轉化為可執行的人才方案。

- 曾領導 8 人人力資源團隊，支持逾 1,200 名員工，並將年度流失率降低 18%。
- 主導薪酬架構重整及績效管理制度優化，提升員工投入度分數 12 個百分點。
- 熟悉香港僱傭條例、強積金、稅務及跨境用工合規，並具備勞資協商經驗。
- 以數據驅動人力規劃，建立招聘漏斗、離職分析及人才盤點儀表板。
]

= 教育背景
#resume-pad[
#resume-subheading[香港中文大學][#link("https://www.cuhk.edu.hk")[https\:\/\/www\.cuhk\.edu\.hk]][碩士，人力資源管理，成績：3\.8][2012\-09\-01–2014\-06\-30]
- 深入研究人才策略與組織效能，並以零售業個案完成畢業論文
- 透過小組項目建立薪酬設計、人才盤點及變革管理實務能力
- 獲選參與學院與企業合辦的人力資源顧問項目
#strong[課程]：策略人力資源管理、組織行為學、薪酬與績效管理、招聘與選才、培訓與發展、勞動法規與僱傭實務

#resume-subheading[香港城市大學][#link("https://www.cityu.edu.hk")[https\:\/\/www\.cityu\.edu\.hk]][學士，心理學，成績：3\.6][2008\-09\-01–2012\-06\-30]
- 以心理學角度理解員工行為、團隊動力與組織文化
- 完成關於工作動機與員工投入度的專題研究
- 培養數據分析、訪談及問卷設計的基礎能力
#strong[課程]：工業與組織心理學、研究方法與統計、消費者行為、社會心理學、溝通與人際關係
]

= 工作經歷
#resume-pad[
#resume-subheading[人力資源經理][#link("https://www.hongkei-retail.com")[https\:\/\/www\.hongkei\-retail\.com]][宏基零售集團有限公司][2021\-04\-01至今]
- 帶領 8 人人力資源團隊，負責招聘、薪酬、員工關係、培訓及人力資源資訊系統
- 與管理層制定三年人才策略，支持 12 間門店及逾 1,200 名員工的業務擴展
- 重整薪酬架構與年度調薪機制，將薪酬預算準確度提升至 98%
- 建立月度人力數據儀表板，追蹤流失率、招聘周期及員工投入度
- 處理複雜勞資個案及紀律調查，確保符合香港僱傭條例及公司政策
#strong[關鍵字]：人才策略、組織發展、員工關係、績效管理、薪酬架構

#resume-subheading[高級人力資源主任][#link("https://www.excellence-tech.com.hk")[https\:\/\/www\.excellence\-tech\.com\.hk]][卓越科技顧問有限公司][2017\-07\-01–2021\-03\-31]
- 負責香港及深圳兩地辦公室的全流程招聘，每年處理逾 150 個職位
- 設計校園招聘及實習生計劃，將應屆畢業生留任率提升 20%
- 協助推行績效管理制度，培訓 30 位部門主管進行目標設定與回饋面談
- 與財務部門合作優化薪酬預算及福利方案，控制年度人力成本增長
- 建立員工手冊及入職流程，提升新員工首 90 天體驗
#strong[關鍵字]：全流程招聘、校園招聘、績效管理、員工手冊、跨境用工

#resume-subheading[人力資源主任][#link("https://www.hkhrservices.com")[https\:\/\/www\.hkhrservices\.com]][香港人力資源服務有限公司][2014\-07\-01–2017\-06\-30]
- 為中小企客戶提供招聘、薪酬計算及僱傭合規支援
- 處理每月薪酬、強積金、報稅及假期管理，確保準時及準確
- 協助客戶編寫職位說明書及設計面試評分表
- 回應員工查詢並支援勞資糾紛初步調解
- 定期更新香港僱傭條例及市場薪酬資訊予客戶
#strong[關鍵字]：薪酬計算、強積金、僱傭合規、職位說明書、客戶支援
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語、香港粵語、商務溝通])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等、跨部門溝通])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：雅思 7\.5、商務書寫、簡報匯報])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[人力資源策略]：專家], [#strong[關鍵字]：人才規劃、組織設計、繼任計劃、變革管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[招聘與僱主品牌]：高級], [#strong[關鍵字]：全流程招聘、校園招聘、僱主品牌、面試評估])

#grid(columns: (1fr, auto), align: (left, right), [#strong[薪酬與福利]：高級], [#strong[關鍵字]：薪酬架構、市場薪酬調研、福利設計、薪酬預算])

#grid(columns: (1fr, auto), align: (left, right), [#strong[員工關係與合規]：高級], [#strong[關鍵字]：勞資協商、香港僱傭條例、員工手冊、紀律調查])

#grid(columns: (1fr, auto), align: (left, right), [#strong[學習與發展]：高級], [#strong[關鍵字]：培訓需求分析、課程設計、領導力發展、學習成效評估])

#grid(columns: (1fr, auto), align: (left, right), [#strong[人力資源資訊系統]：中級], [#strong[關鍵字]：人力數據分析、儀表板設計、報表自動化、流程數碼化])
]

= 榮譽
#resume-pad[
#resume-subheading[年度卓越人力資源領袖獎][][香港人力資源管理學會][2023\-11\-15]
表揚在人才策略、員工體驗及組織變革方面具傑出表現的人力資源領袖。

#resume-subheading[最佳僱主品牌項目金獎][][亞洲人力資源大獎][2022\-09\-01]
憑校園招聘品牌重塑及員工推薦計劃，提升僱主知名度及年輕人才申請量。
]

= 證書
#resume-pad[
#resume-subheading[全球人力資源專業人士認證（GPHR）][#link("https://www.hrci.org")[https\:\/\/www\.hrci\.org]][人力資源認證協會][2019\-06\-01]

#resume-subheading[認可調解員][#link("https://www.mediationcentre.org.hk")[https\:\/\/www\.mediationcentre\.org\.hk]][香港和解中心][2020\-11\-01]
]

= 出版刊物
#resume-pad[
#resume-subheading[以員工體驗驅動人才保留：香港零售業實證研究][#link("https://www.hkihrm.org")[https\:\/\/www\.hkihrm\.org]][香港人力資源管理學會月刊][2023\-08\-01]
- 分析零售業前線員工流失的關鍵因素
- 提出結合入職體驗、前線主管培訓及彈性排班的留才方案
- 以三家香港零售企業的試點數據說明員工投入度與留任率的關係
]

= 項目
#resume-pad[
#resume-subheading[員工體驗數碼轉型計劃][][整合入職、學習、績效與離職數據，建立員工體驗儀表板。][2022\-02\-01–2023\-05\-31]
- 與資訊科技及營運部門合作，將五個人力資源流程數碼化
- 建立離職風險指標，協助主管提前介入關鍵人才保留
- 將入職文件處理時間由 3 天縮短至 1 天
- 為 50 位主管提供數據解讀及員工關懷培訓
#strong[關鍵字]：員工體驗、流程數碼化、人力數據、留才

#resume-subheading[校園招聘品牌重塑][][重新設計校園招聘宣傳、面試流程及實習生體驗。][2019\-09\-01–2020\-02\-29]
- 與市場部合作製作僱主品牌內容，提升社交媒體互動率 35%
- 設計結構化面試評分表，統一不同部門的選才標準
- 舉辦線上職業講座，吸引逾 600 名應屆畢業生參加
- 實習生轉正率由 45% 提升至 62%
#strong[關鍵字]：僱主品牌、校園招聘、結構化面試、實習生計劃
]

= 興趣愛好
#resume-pad[
#strong[運動]：馬拉松、瑜伽、行山

#strong[文化]：閱讀、攝影、旅行
]

= 志願服務
#resume-pad[
#resume-subheading[職涯規劃義務顧問][#link("https://www.hkfyg.org.hk")[https\:\/\/www\.hkfyg\.org\.hk]][香港青年協會][2018\-09\-01至今]
- 為應屆畢業生提供履歷指導及模擬面試
- 主持職涯探索工作坊，協助青年了解人力資源及零售行業
- 協助設計求職技巧教材，供中心義工重複使用
- 每年服務超過 80 名青年
]