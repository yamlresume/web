#set document(
  title: "陳嘉怡 - 註冊護士｜內科及老人科護理",
  author: "陳嘉怡",
  keywords: "臨床護理, 老人科及復康護理, 感染控制, 醫療資訊系統, 溝通與團隊協作",
  description: "Résumé of 陳嘉怡",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳嘉怡]] #v(-0.2em)

#text(size: 1.44em)[註冊護士｜內科及老人科護理]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chankayi.rn@gmail.com")[chankayi\.rn\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/chankayi-rn")[https\:\/\/www\.linkedin\.com\/in\/chankayi\-rn]

中國香港，九龍，香港，九龍旺角彌敦道 700 號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chankayi-rn")[chankayi\-rn] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@chankayi.rn")[chankayi\.rn]
]

= 簡介

#resume-pad[
具備五年內科及老人科臨床經驗的註冊護士，專注於病人評估、藥物管理、感染控制及出院規劃。能在高壓環境中保持細心、冷靜，並與跨專業團隊緊密合作。

- 熟悉香港公立醫院臨床流程及電子健康紀錄系統
- 擅長與長者、家屬及照顧者溝通，提供適切健康教育
- 曾參與病房質素改善項目，提升跌倒預防及壓瘡護理成效
- 持有 BLS、ACLS 及感染控制相關證書
]

= 教育背景
#resume-pad[
#resume-subheading[香港大學護理學院][#link("https://nursing.hku.hk/")[https\:\/\/nursing\.hku\.hk\/]][學士，護理學，成績：3\.6\/4\.0][2016年9月–2020年6月]
- 完成超過 1,000 小時臨床實習，涵蓋內科、外科、急症室及社區護理
- 畢業論文探討長者跌倒風險評估工具在病房中的應用
- 獲選為護理學院臨床傑出表現學生
#strong[課程]：基礎護理學、內科護理學、外科護理學、老人科護理、急症及創傷護理、藥理學、感染控制、社區健康護理
]

= 工作經歷
#resume-pad[
#resume-subheading[註冊護士（內科及老人科）][#link("https://www.ha.org.hk/qmh")[https\:\/\/www\.ha\.org\.hk\/qmh]][瑪麗醫院][2022年1月至今]
- 負責內科及老人科病房約 30 名病人的日常護理，包括生命表徵監測、藥物管理及傷口護理
- 進行入院評估、跌倒風險及壓瘡風險篩查，制定個人化護理計劃
- 與醫生、物理治療師、職業治療師及社工協作，安排出院規劃及社區支援
- 指導新入職護士及護士學生，提供臨床技巧及感染控制培訓
- 參與病房質素改善小組，推行跌倒預防及手部衛生依從性提升計劃
#strong[關鍵字]：內科護理、老人科護理、出院規劃、臨床評估、感染控制

#resume-subheading[註冊護士（急症室）][#link("https://www.ha.org.hk/qeh")[https\:\/\/www\.ha\.org\.hk\/qeh]][伊利沙伯醫院][2020年7月–2021年12月]
- 於急症室分流站進行初步評估及生命表徵監測，按病情優先次序安排診治
- 協助醫生進行急救、縫合、石膏固定及小型手術程序
- 處理靜脈輸液、藥物注射、血液樣本採集及化驗安排
- 向病人及家屬解釋治療流程，提供離院護理指示及社區資源轉介
- 參與急症室感染控制及災難應變演練
#strong[關鍵字]：急症護理、病人分流、急救護理、靜脈治療、災難應變
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5、臨床英語溝通])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：有限工作水平], [#strong[關鍵字]：基本會話])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[臨床護理]：專家], [#strong[關鍵字]：病人評估、藥物管理、傷口護理、靜脈治療、生命表徵監測])

#grid(columns: (1fr, auto), align: (left, right), [#strong[老人科及復康護理]：高級], [#strong[關鍵字]：跌倒風險評估、壓瘡預防、失智症護理、出院規劃、照顧者支援])

#grid(columns: (1fr, auto), align: (left, right), [#strong[感染控制]：高級], [#strong[關鍵字]：手部衛生、隔離措施、醫療廢物處理、個人防護裝備])

#grid(columns: (1fr, auto), align: (left, right), [#strong[醫療資訊系統]：中級], [#strong[關鍵字]：電子健康紀錄、臨床資訊系統、病歷管理、數據記錄])

#grid(columns: (1fr, auto), align: (left, right), [#strong[溝通與團隊協作]：高級], [#strong[關鍵字]：跨專業合作、病人教育、家屬溝通、臨床指導])
]

= 榮譽
#resume-pad[
#resume-subheading[護理學院臨床傑出表現獎][][香港大學護理學院][2020年6月]
表揚在臨床實習中展現卓越護理技巧、專業態度及病人溝通的畢業生。

#resume-subheading[優秀護士獎][][瑪麗醫院內科及老人科][2023年11月]
表揚在跌倒預防及病人安全教育方面的積極貢獻。
]

= 證書
#resume-pad[
#resume-subheading[註冊護士執業證明書][#link("https://www.nchk.org.hk/")[https\:\/\/www\.nchk\.org\.hk\/]][香港護士管理局][2020年8月]

#resume-subheading[基本生命支援（BLS）證書][#link("https://cpr.heart.org/")[https\:\/\/cpr\.heart\.org\/]][美國心臟協會][2024年3月]

#resume-subheading[高級心血管生命支援（ACLS）證書][#link("https://cpr.heart.org/")[https\:\/\/cpr\.heart\.org\/]][美國心臟協會][2024年5月]

#resume-subheading[感染控制基礎課程證書][#link("https://www.ha.org.hk/")[https\:\/\/www\.ha\.org\.hk\/]][醫院管理局][2023年1月]
]

= 出版刊物
#resume-pad[
#resume-subheading[長者跌倒風險評估工具於內科病房的應用][#link("https://www.hkna.org.hk/")[https\:\/\/www\.hkna\.org\.hk\/]][香港護理雜誌][2023年12月]
- 回顧常用跌倒風險評估工具在本地內科及老人科病房的適用性
- 分析護理人員執行評估時的常見困難及改善建議
- 提出結合電子健康紀錄提示的可行方案
]

= 項目
#resume-pad[
#resume-subheading[病房跌倒預防質素改善計劃][#link("https://www.ha.org.hk/qmh")[https\:\/\/www\.ha\.org\.hk\/qmh]][針對內科及老人科病房設計的跌倒預防改善項目][2023年3月–2023年11月]
- 分析病房跌倒事件數據及環境風險因素
- 設計床邊提示卡、家屬教育單張及夜間巡房流程
- 與物理治療師合作推行長者平衡訓練
- 計劃推行後病房跌倒率下降約 18%
#strong[關鍵字]：跌倒預防、質素改善、病人安全、長者護理
]

= 興趣愛好
#resume-pad[
#strong[身心健康]：瑜伽、遠足、跑步

#strong[社區服務]：長者探訪、健康講座、急救教育
]

= 志願服務
#resume-pad[
#resume-subheading[急救義工][#link("https://www.redcross.org.hk/")[https\:\/\/www\.redcross\.org\.hk\/]][香港紅十字會][2019年6月至今]
- 為大型社區活動提供急救支援及健康諮詢
- 協助舉辦心肺復甦法及基本急救訓練
- 向長者及照顧者推廣家居安全及跌倒預防

#resume-subheading[長者探訪義工][#link("https://www.hohcs.org.hk/")[https\:\/\/www\.hohcs\.org\.hk\/]][基督教靈實協會][2021年1月–2023年12月]
- 定期探訪獨居長者，提供情緒支援及健康監測
- 協助轉介社區資源及安排覆診交通
]