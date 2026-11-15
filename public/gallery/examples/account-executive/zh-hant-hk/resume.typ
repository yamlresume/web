#set document(
  title: "陳嘉豪 - 資深客戶經理 | 企業軟件及科技解決方案",
  author: "陳嘉豪",
  keywords: "銷售管理, 客戶關係, 技術知識, 簡報技巧",
  description: "Résumé of 陳嘉豪",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳嘉豪]] #v(-0.2em)

#text(size: 1.44em)[資深客戶經理 | 企業軟件及科技解決方案]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kaho.chan@example.com")[kaho\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.kahochan.com")[https\:\/\/www\.kahochan\.com]

中國香港，香港島，香港，中環皇后大道中99號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kahochan")[kahochan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M380.9 97.1c-41.9-42-97.7-65.1-157-65.1-122.4 0-222 99.6-222 222 0 39.1 10.2 77.3 29.6 111L0 480 117.7 449.1c32.4 17.7 68.9 27 106.1 27l.1 0c122.3 0 224.1-99.6 224.1-222 0-59.3-25.2-115-67.1-157zm-157 341.6c-33.2 0-65.7-8.9-94-25.7l-6.7-4-69.8 18.3 18.6-68.1-4.4-7c-18.5-29.4-28.2-63.3-28.2-98.2 0-101.7 82.8-184.5 184.6-184.5 49.3 0 95.6 19.2 130.4 54.1s56.2 81.2 56.1 130.5c0 101.8-84.9 184.6-186.6 184.6zM325.1 300.5c-5.5-2.8-32.8-16.2-37.9-18-5.1-1.9-8.8-2.8-12.5 2.8s-14.3 18-17.6 21.8c-3.2 3.7-6.5 4.2-12 1.4-32.6-16.3-54-29.1-75.5-66-5.7-9.8 5.7-9.1 16.3-30.3 1.8-3.7 .9-6.9-.5-9.7s-12.5-30.1-17.1-41.2c-4.5-10.8-9.1-9.3-12.5-9.5-3.2-.2-6.9-.2-10.6-.2s-9.7 1.4-14.8 6.9c-5.1 5.6-19.4 19-19.4 46.3s19.9 53.7 22.6 57.4c2.8 3.7 39.1 59.7 94.8 83.8 35.2 15.2 49 16.5 66.6 13.9 10.7-1.6 32.8-13.4 37.4-26.4s4.6-24.1 3.2-26.4c-1.3-2.5-5-3.9-10.5-6.6z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://wa.me/85291234567")[kahochan]
]

= 簡介

#resume-pad[
- 擁有 8 年 B2B 軟件及科技解決方案銷售經驗，專注於企業客戶開發與關係管理
- 擅長從需求分析、方案演示到合約談判的完整銷售週期，連續超額完成配額
- 熟悉 SaaS、雲端服務及數碼轉型方案，能與技術團隊緊密協作
- 具備優秀的粵語、英語及普通話溝通能力，善於建立高層客戶信任
]

= 教育背景
#resume-pad[
#resume-subheading[香港大學][#link("https://www.hku.hk")[https\:\/\/www\.hku\.hk]][學士，市場學及管理學，成績：3\.5][2013年9月–2017年7月]
- 主修市場學及管理學，副修商業分析
- 曾獲院長嘉許名單
- 積極參與商業個案比賽，獲得亞軍
#strong[課程]：市場營銷原理、消費者行為、企業財務、商業統計、談判技巧、策略管理
]

= 工作經歷
#resume-pad[
#resume-subheading[高級客戶經理][#link("https://www.cloudtech.hk")[https\:\/\/www\.cloudtech\.hk]][雲端科技解決方案有限公司][2021年1月至今]
- 負責香港及華南地區企業客戶的軟件即服務（SaaS）銷售，年度配額達港幣 800 萬元
- 開發超過 50 個新企業客戶，包括金融、零售及物流行業，客戶續約率達 95%
- 與產品及技術團隊合作，為客戶設計度身訂造的雲端轉型方案
- 主導銷售週期管理，從潛在客戶開發、方案演示、報價到合約談判
- 連續三年超額完成年度銷售目標，2023 年達到 125% 配額
#strong[關鍵字]：企業銷售、客戶關係、雲端服務、合約談判

#resume-subheading[客戶經理][#link("https://www.asiadigital.com.hk")[https\:\/\/www\.asiadigital\.com\.hk]][亞洲數碼方案公司][2018年8月–2020年12月]
- 管理超過 80 個中小企業客戶，提供數碼營銷及電子商務解決方案
- 透過冷電話及網絡研討會開發新客戶，季度銷售增長平均達 15%
- 協調內部團隊以確保項目按時交付，客戶滿意度評分達 4\.8\/5
- 準備銷售報告及預測，協助區域總監制定業務策略
#strong[關鍵字]：數碼營銷、電子商務、銷售預測、客戶滿意度

#resume-subheading[企業銷售代表][#link("https://www.globsoft.com.hk")[https\:\/\/www\.globsoft\.com\.hk]][環球軟件服務][2017年7月–2018年7月]
- 負責企業資源規劃（ERP）系統的銷售，達成 110% 年度配額
- 建立並維護客戶關係管理系統中的銷售管道，每月新增 20 個潛在客戶
- 協助高級客戶經理準備提案及產品示範
- 獲得季度最佳新人獎
#strong[關鍵字]：企業資源規劃、銷售管道、潛在客戶開發、產品示範
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：粵語、母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：流利、普通話])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[銷售管理]：專家], [#strong[關鍵字]：企業銷售、客戶開發、銷售預測、渠道管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[客戶關係]：高級], [#strong[關鍵字]：客戶留存、續約談判、高層溝通、客戶滿意度])

#grid(columns: (1fr, auto), align: (left, right), [#strong[技術知識]：中級], [#strong[關鍵字]：軟件即服務、雲端運算、客戶關係管理、數據分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[簡報技巧]：高級], [#strong[關鍵字]：方案演示、公開演講、提案撰寫])
]

= 榮譽
#resume-pad[
#resume-subheading[年度頂尖銷售獎][][雲端科技解決方案有限公司][2023年12月]
表揚全年銷售額最高及客戶滿意度最佳的客戶經理。

#resume-subheading[最佳客戶關係管理獎][][亞洲數碼方案公司][2020年12月]
表彰在客戶留存及續約方面表現卓越的團隊成員。
]

= 證書
#resume-pad[
#resume-subheading[Salesforce 銷售雲顧問認證][#link("https://trailhead.salesforce.com/credentials/salescloudconsultant")[https\:\/\/trailhead\.salesforce\.com\/credentials\/salescloudconsultant]][Salesforce][2022年3月]

#resume-subheading[HubSpot 入站銷售認證][#link("https://academy.hubspot.com/courses/inbound-sales")[https\:\/\/academy\.hubspot\.com\/courses\/inbound\-sales]][HubSpot Academy][2021年6月]
]

= 項目
#resume-pad[
#resume-subheading[企業客戶 CRM 系統導入專案][][為一家金融機構導入 Salesforce CRM 系統，優化銷售流程及客戶數據管理。][2022年3月–2022年11月]
- 負責需求收集、供應商協調及用戶培訓
- 系統上線後，銷售週期縮短 20%，數據準確性提升至 98%
- 專案獲得客戶高層高度評價
#strong[關鍵字]：客戶關係管理、流程優化、用戶培訓

#resume-subheading[亞太區 SaaS 銷售流程優化][][重新設計亞太區銷售團隊的客戶開發及跟進流程。][2023年1月–2023年8月]
- 分析現有銷售管道，識別瓶頸並提出改善方案
- 導入自動化工具，減少 30% 行政工作時間
- 銷售轉換率提升 15%
#strong[關鍵字]：銷售流程、自動化、轉換率
]

= 興趣愛好
#resume-pad[
#strong[商業閱讀]：銷售策略、商業傳記、市場趨勢

#strong[戶外活動]：遠足、跑步、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[銷售導師][#link("https://www.jcihk.org")[https\:\/\/www\.jcihk\.org]][香港青年商會][2020年9月–2023年6月]
- 為初創企業及年輕創業者提供銷售技巧培訓
- 主持超過 10 場工作坊，分享 B2B 銷售經驗
- 協助籌辦年度商業個案比賽
]