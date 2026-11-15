#set document(
  title: "陳嘉欣 - 市場營銷經理 | 數碼品牌策略及增長專家",
  author: "陳嘉欣",
  keywords: "數碼營銷, 數據與分析, 營銷工具, 品牌與傳訊, 管理與協作",
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

#text(size: 1.44em)[市場營銷經理 | 數碼品牌策略及增長專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ka-yan.chan@example.com")[ka\-yan\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.kayanchan.com")[https\:\/\/www\.kayanchan\.com]

中國香港，香港島，香港，香港中環德輔道中 88 號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kayanchan")[kayanchan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@kayanchan")[kayanchan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M224.3 141a115 115 0 1 0 -.6 230 115 115 0 1 0 .6-230zm-.6 40.4a74.6 74.6 0 1 1 .6 149.2 74.6 74.6 0 1 1 -.6-149.2zm93.4-45.1a26.8 26.8 0 1 1 53.6 0 26.8 26.8 0 1 1 -53.6 0zm129.7 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM399 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.instagram.com/kayan.marketing")[kayan\.marketing]
]

= 簡介

#resume-pad[
擁有超過 8 年市場營銷經驗的專業經理，專注於數碼品牌策略、內容營銷及數據驅動增長。擅長策劃跨渠道營銷活動，提升品牌知名度與客戶轉化率，並善於以數據驗證營銷投資回報。

- 成功領導多個大型營銷項目，平均提升網站流量 120%，社交媒體互動率 85%
- 精通搜尋引擎優化、關鍵字廣告、社交媒體廣告、內容營銷及營銷自動化工具
- 具備團隊管理經驗，曾帶領 10 人跨職能團隊，協調設計、內容及數據分析工作
- 熟悉香港及大灣區市場，能制定本地化營銷策略並達成業務目標
]

= 教育背景
#resume-pad[
#resume-subheading[香港中文大學][#link("https://www.cuhk.edu.hk")[https\:\/\/www\.cuhk\.edu\.hk]][學士，市場學，成績：3\.6][2013年9月–2017年7月]
- 主修市場學，副修心理學，深入理解消費者決策過程
- 曾參與大學品牌策劃比賽，獲得亞軍
- 活躍於市場學系學會，協助籌辦業界講座及企業參觀
#strong[課程]：消費者行為、市場研究、品牌管理、數碼營銷、整合營銷傳播、策略管理
]

= 工作經歷
#resume-pad[
#resume-subheading[高級市場營銷經理][#link("https://www.starcreativetech.hk")[https\:\/\/www\.starcreativetech\.hk]][星創科技有限公司][2021年3月至今]
- 制定並執行集團整體數碼營銷策略，管理年度營銷預算逾港幣 1,200 萬元
- 帶領 10 人跨職能團隊，涵蓋內容創作、社交媒體、搜尋引擎優化及數據分析
- 重新設計品牌網站及內容架構，令自然搜尋流量於 12 個月內增長 120%
- 建立營銷自動化流程，將潛在客戶轉化率由 3\.1% 提升至 7\.4%
- 與產品及銷售團隊緊密協作，主導每季度市場推廣活動的定位與執行
#strong[關鍵字]：品牌策略、數碼營銷、團隊管理、營銷預算

#resume-subheading[市場營銷主任][#link("https://www.huidaglobal.com.hk")[https\:\/\/www\.huidaglobal\.com\.hk]][匯達廣告有限公司][2017年8月–2021年2月]
- 為零售及金融行業客戶策劃整合營銷活動，平均提升客戶品牌知名度 45%
- 負責關鍵字廣告及社交媒體廣告投放，控制每次獲取成本並優化廣告回報率
- 撰寫中英文營銷文案、新聞稿及社交媒體內容，每月產出超過 30 篇素材
- 定期製作營銷成效報告，向客戶管理層匯報數據洞察及優化建議
- 協助培訓新入職同事，建立團隊內部內容審核及品質標準流程
#strong[關鍵字]：整合營銷、廣告投放、內容創作、數據分析

#resume-subheading[市場推廣助理][#link("https://www.blueoceanmarketing.hk")[https\:\/\/www\.blueoceanmarketing\.hk]][藍海市場顧問有限公司][2016年7月–2017年7月]
- 支援各類線下推廣活動的籌備與執行，包括展覽、路演及產品發佈會
- 協助管理社交媒體帳號，維護品牌形象並回覆客戶查詢
- 收集市場及競爭對手資料，整理成月報供團隊參考
- 與供應商及場地單位協調，確保活動物資及預算符合計劃
#strong[關鍵字]：活動策劃、社交媒體、市場研究
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[數碼營銷]：專家], [#strong[關鍵字]：搜尋引擎優化、關鍵字廣告、社交媒體廣告、內容營銷])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據與分析]：高級], [#strong[關鍵字]：Google Analytics 4、Looker Studio、A\/B 測試、數據視覺化])

#grid(columns: (1fr, auto), align: (left, right), [#strong[營銷工具]：高級], [#strong[關鍵字]：HubSpot、Mailchimp、Salesforce、Meta Business Suite])

#grid(columns: (1fr, auto), align: (left, right), [#strong[品牌與傳訊]：高級], [#strong[關鍵字]：品牌定位、公關傳訊、文案撰寫、危機處理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[管理與協作]：高級], [#strong[關鍵字]：團隊領導、預算管理、跨部門協作、供應商談判])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳營銷團隊大獎][][香港廣告客戶協會][2023年11月]
帶領團隊為旗下金融科技產品策劃的整合營銷活動，於年度評選中擊敗逾 60 個參賽項目獲得金獎。

#resume-subheading[亞太數碼營銷卓越獎（銅獎）][][亞太營銷傳播協會][2022年9月]
憑藉以數據驅動的社交媒體內容策略，成功提升品牌互動率及客戶留存，獲評審團肯定。
]

= 證書
#resume-pad[
#resume-subheading[Google Analytics 4 Certification][#link("https://skillshop.exceedlms.com/student/catalog")[https\:\/\/skillshop\.exceedlms\.com\/student\/catalog]][Google][2023年2月]

#resume-subheading[HubSpot Inbound Marketing Certification][#link("https://academy.hubspot.com/courses")[https\:\/\/academy\.hubspot\.com\/courses]][HubSpot Academy][2021年6月]

#resume-subheading[Meta Certified Digital Marketing Associate][#link("https://www.facebook.com/business/learn/certification")[https\:\/\/www\.facebook\.com\/business\/learn\/certification]][Meta][2022年10月]
]

= 出版刊物
#resume-pad[
#resume-subheading[香港零售品牌的內容營銷突圍策略][#link("https://www.asiamarketingreview.com")[https\:\/\/www\.asiamarketingreview\.com]][亞洲營銷評論][2023年5月]
- 分析本地零售品牌如何在內容飽和的環境中建立差異化敘事
- 提出以客戶旅程為本的內容矩陣框架，並附上實際數據案例
- 探討人工智能工具在內容生產流程中的應用與限制
]

= 項目
#resume-pad[
#resume-subheading[「城巿綠行」品牌重塑計劃][#link("https://www.citygreenwalk.hk")[https\:\/\/www\.citygreenwalk\.hk]][為本地環保生活品牌進行的全面品牌重塑及數碼推廣項目][2023年1月–2023年8月]
- 重新定義品牌定位與視覺識別，統一線上線下傳訊語言
- 策劃為期六個月的內容營銷日曆，涵蓋社交媒體、電子報及短片
- 項目結束時品牌網站流量增長 140%，社交媒體追蹤人數增加 2\.3 倍
#strong[關鍵字]：品牌重塑、內容營銷、可持續發展

#resume-subheading[會員再營銷自動化系統][#link("https://www.example.com/crm-automation")[https\:\/\/www\.example\.com\/crm\-automation]][針對電商客戶設計的分層自動化再營銷流程與成效追蹤系統][2022年3月–2022年11月]
- 依據購買行為及互動紀錄將會員劃分為五個生命週期階段
- 設計對應的電郵及短訊觸發流程，並持續以 A\/B 測試優化文案
- 帶動回購率上升 28%，並將每次轉化成本降低 19%
#strong[關鍵字]：營銷自動化、客戶分層、成效追蹤
]

= 興趣愛好
#resume-pad[
#strong[內容創作]：專欄寫作、攝影、短片剪輯

#strong[運動與生活]：越野跑、瑜伽、咖啡沖煮
]

= 志願服務
#resume-pad[
#resume-subheading[義務導師][#link("https://www.hkyma.org.hk")[https\:\/\/www\.hkyma\.org\.hk]][香港青年營銷協會][2019年9月至今]
- 為大專院校學生提供營銷職涯指導，分享行業趨勢及求職準備經驗
- 協助籌辦年度數碼營銷工作坊，累計服務超過 400 名青年參加者
- 擔任模擬廣告企劃比賽評審，向參賽隊伍提供專業回饋

#resume-subheading[社區推廣義工][#link("https://www.greenearth.org.hk")[https\:\/\/www\.greenearth\.org\.hk]][綠惜地球][2021年3月–2022年12月]
- 策劃社區環保推廣活動的社交媒體宣傳，提升公眾參與度
- 協助撰寫活動新聞稿及宣傳文案，並協調媒體採訪安排
]