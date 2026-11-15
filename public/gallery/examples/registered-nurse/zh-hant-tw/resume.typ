#set document(
  title: "林雅婷 - 註冊護理師｜急重症與急診照護",
  author: "林雅婷",
  keywords: "臨床護理, 急重症照護, 病患溝通與衛教, 醫療資訊系統, 品質管理與教學",
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

#text(size: 1.44em)[註冊護理師｜急重症與急診照護]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yating.lin.rn@example.com")[yating\.lin\.rn\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/yating-lin-rn")[https\:\/\/www\.linkedin\.com\/in\/yating\-lin\-rn]

中國臺灣，台北市，台北市大安區仁愛路四段123號，106

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yating-lin-rn")[yating\-lin\-rn] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M512 256C512 114.6 397.4 0 256 0S0 114.6 0 256C0 376 82.7 476.8 194.2 504.5l0-170.3-52.8 0 0-78.2 52.8 0 0-33.7c0-87.1 39.4-127.5 125-127.5 16.2 0 44.2 3.2 55.7 6.4l0 70.8c-6-.6-16.5-1-29.6-1-42 0-58.2 15.9-58.2 57.2l0 27.8 83.6 0-14.4 78.2-69.3 0 0 175.9C413.8 494.8 512 386.9 512 256z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.facebook.com/yating.lin.rn")[yating\.lin\.rn]
]

= 簡介

#resume-pad[
具備六年以上急診與重症加護臨床經驗的註冊護理師，熟悉檢傷分類、生命徵象監測、靜脈注射、傷口照護及病患衛教。擅長在高壓環境中進行快速評估與跨團隊溝通，致力於提供以病人為中心的高品質照護。

曾參與急診流程優化與譫妄預防專案，具備臨床教學與品質改善經驗。持續進修進階護理與實證照護知能，期望於急重症單位發揮專業，提升病人安全與照護品質。
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學醫學院護理學系][#link("https://www.mc.ntu.edu.tw/nursing")[https\:\/\/www\.mc\.ntu\.edu\.tw\/nursing]][學士，護理學，成績：3\.9\/4\.0][2014年9月–2018年6月]
- 以優異成績完成護理學學士學位，並通過全國護理師高考
- 於臺大醫院完成臨床實習，累積內外科、急診與加護病房照護經驗
- 擔任護理系學會幹部，協助推動校內外健康促進活動
#strong[課程]：基本護理學、內外科護理學、急重症護理學、產科護理學、兒科護理學、精神科護理學、社區護理學、護理倫理與法律
]

= 工作經歷
#resume-pad[
#resume-subheading[註冊護理師][#link("https://www.ntuh.gov.tw")[https\:\/\/www\.ntuh\.gov\.tw]][臺大醫院急診部][2018年7月–2022年6月]
- 負責急診病患檢傷分類、生命徵象監測與初步處置，每日平均照護 20 至 30 位病患
- 執行靜脈注射、抽血、傷口換藥、導尿及心電圖監測等護理技術
- 與急診醫師、專科護理師及社工師協作，執行跨團隊照護與轉院\/住院安排
- 提供病患及家屬疾病衛教、出院準備與社區資源轉介
- 參與急診壅塞改善專案，協助優化檢傷流程與縮短候診時間
#strong[關鍵字]：急診護理、檢傷分類、靜脈注射、病患衛教、跨團隊照護

#resume-subheading[資深註冊護理師][#link("https://www.vghtpe.gov.tw")[https\:\/\/www\.vghtpe\.gov\.tw]][臺北榮民總醫院重症加護病房][2022年7月至今]
- 照護呼吸衰竭、敗血症、急性腎損傷及術後重症病患，熟悉呼吸器、血液透析與葉克膜輔助照護
- 執行重症病患之持續性生命徵象監測、給藥、輸液與侵入性管路照護
- 帶領新進護理師與實習生，規劃臨床教學與技術考核
- 參與加護病房譫妄評估與預防流程改善，降低譫妄發生率
- 與醫師、藥師、營養師及復健師合作，執行每日跨團隊查房與照護計畫
#strong[關鍵字]：重症照護、呼吸器、血液透析、臨床教學、品質改善
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語、國語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 850、護理英語])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[臨床護理]：專家], [#strong[關鍵字]：檢傷分類、生命徵象監測、靜脈注射、傷口照護、管路照護])

#grid(columns: (1fr, auto), align: (left, right), [#strong[急重症照護]：高級], [#strong[關鍵字]：呼吸器照護、血液透析、葉克膜輔助、敗血症照護、急救處置])

#grid(columns: (1fr, auto), align: (left, right), [#strong[病患溝通與衛教]：高級], [#strong[關鍵字]：醫病溝通、出院準備、家屬支持、健康促進])

#grid(columns: (1fr, auto), align: (left, right), [#strong[醫療資訊系統]：中級], [#strong[關鍵字]：HIS、電子病歷、醫囑系統])

#grid(columns: (1fr, auto), align: (left, right), [#strong[品質管理與教學]：高級], [#strong[關鍵字]：品質改善、臨床教學、實證護理、專案管理])
]

= 榮譽
#resume-pad[
#resume-subheading[優良護理人員獎][][臺大醫院][2021年12月]
表揚在急診照護、病人安全及團隊合作上表現優異之護理人員。

#resume-subheading[臨床教學優良獎][][臺北榮民總醫院][2023年11月]
肯定於新進護理師臨床教學與技能指導之卓越貢獻。
]

= 證書
#resume-pad[
#resume-subheading[高考護理師證書][#link("https://www.moex.gov.tw")[https\:\/\/www\.moex\.gov\.tw]][考選部][2018年9月]

#resume-subheading[進階護理師 N2 證書][#link("https://www.twna.org.tw")[https\:\/\/www\.twna\.org\.tw]][台灣護理學會][2020年12月]

#resume-subheading[高級心臟救命術 ACLS][#link("https://www.seccm.org.tw")[https\:\/\/www\.seccm\.org\.tw]][台灣急救加護醫學會][2022年3月]

#resume-subheading[基本生命支持 BLS][#link("https://www.seccm.org.tw")[https\:\/\/www\.seccm\.org\.tw]][台灣急救加護醫學會][2024年1月]
]

= 出版刊物
#resume-pad[
#resume-subheading[運用跨團隊照護改善急診檢傷分類流程之專案][#link("https://www.sem.org.tw")[https\:\/\/www\.sem\.org\.tw]][台灣急診醫學會雜誌][2022年6月]
- 探討急診檢傷流程瓶頸並提出改善策略
- 透過跨團隊合作與資訊系統優化，縮短病患候診時間
- 提升檢傷分類正確率與病人滿意度
]

= 項目
#resume-pad[
#resume-subheading[加護病房譫妄評估與預防流程改善][#link("https://www.vghtpe.gov.tw")[https\:\/\/www\.vghtpe\.gov\.tw]][針對加護病房重症病患推動譫妄評估與預防專案，透過標準化流程、教育訓練及跨團隊合作，提升護理人員對譫妄的識別與處置能力，進而改善病患預後。][2023年1月–2023年12月]
- 導入 CAM\-ICU 評估工具，建立標準化譫妄篩檢流程
- 規劃護理人員教育訓練與稽核機制
- 結合早期活動與睡眠促進措施，降低譫妄發生率
#strong[關鍵字]：譫妄、加護病房、品質改善、病人安全
]

= 興趣愛好
#resume-pad[
#strong[專業進修]：實證護理、急重症醫學、護理教育

#strong[休閒活動]：馬拉松、閱讀、登山
]

= 志願服務
#resume-pad[
#resume-subheading[急救教育志工][#link("https://www.redcross.org.tw")[https\:\/\/www\.redcross\.org\.tw]][台灣紅十字會][2019年3月至今]
- 協助推廣社區急救教育，教授 CPR 與 AED 使用
- 參與偏鄉義診與健康篩檢活動
- 協助大型活動醫護站輪值與緊急處置
]