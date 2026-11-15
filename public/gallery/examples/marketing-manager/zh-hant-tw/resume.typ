#set document(
  title: "林雅婷 - 資深行銷經理 | 品牌策略與數位成長",
  author: "林雅婷",
  keywords: "數位行銷, 品牌與內容策略, 數據分析與 CRM, 專案與團隊管理",
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

#text(size: 1.44em)[資深行銷經理 | 品牌策略與數位成長]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yating.lin@example.com")[yating\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.yatinglin.com")[https\:\/\/www\.yatinglin\.com]

中國臺灣，臺北市，臺北市，臺北市信義區松高路 88 號 12 樓，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yating-lin-marketing")[yating\-lin\-marketing] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yating.marketing")[yating\.marketing] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M224.3 141a115 115 0 1 0 -.6 230 115 115 0 1 0 .6-230zm-.6 40.4a74.6 74.6 0 1 1 .6 149.2 74.6 74.6 0 1 1 -.6-149.2zm93.4-45.1a26.8 26.8 0 1 1 53.6 0 26.8 26.8 0 1 1 -53.6 0zm129.7 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM399 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.instagram.com/yating.marketing")[yating\.marketing]
]

= 簡介

#resume-pad[
- 超過 8 年行銷經驗，專注品牌策略、數位成長與全通路行銷，擅長以數據驅動決策。
- 曾帶領 6 人團隊管理新台幣 8,000 萬元年度預算，帶動電商營收年增 35%。
- 熟悉 Google Analytics 4、Meta Ads、CRM 與行銷自動化，具備跨部門協作與專案管理能力。
- 擁有國際交換與跨文化溝通經驗，能以中、英、日語與不同市場團隊合作。
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw/")[https\:\/\/www\.ntu\.edu\.tw\/]][碩士，企業管理研究所，成績：4\.1\/4\.3][2016年9月–2018年6月]
- 專攻品牌管理與數位行銷，論文探討社群媒體對消費者購買意願的影響
- 擔任行銷研究助理，協助企業進行市場調查與數據分析
- 獲選為商學院國際交換學生，赴荷蘭鹿特丹管理學院進修一學期
#strong[課程]：行銷管理、消費者行為、品牌策略、數位行銷分析、市場研究、策略管理

#resume-subheading[國立政治大學][#link("https://www.nccu.edu.tw/")[https\:\/\/www\.nccu\.edu\.tw\/]][學士，廣告學系，成績：3\.9\/4\.0][2012年9月–2016年6月]
- 奠定廣告、公關與整合行銷傳播的理論基礎
- 畢業專題以「行動支付品牌年輕化策略」獲得系上最佳專題獎
- 主辦校園行銷營，吸引超過 200 位學生參與
#strong[課程]：廣告理論、公關策略、媒體規劃、行銷學、統計學、創意策略
]

= 工作經歷
#resume-pad[
#resume-subheading[資深行銷經理][#link("https://www.momoshop.com.tw/")[https\:\/\/www\.momoshop\.com\.tw\/]][富邦媒體科技股份有限公司][2021年3月至今]
- 負責台灣與東南亞市場的品牌策略、數位廣告與會員成長，管理年度行銷預算新台幣 8,000 萬元
- 帶領 6 人行銷團隊，規劃並執行全通路 campaign，帶動電商營收年增 35%
- 建立數據驅動的行銷決策流程，整合 Google Analytics、Meta Ads 與 CRM，提升 ROAS 至 4\.8
- 主導品牌重塑專案，重新定位品牌訊息與視覺識別，使品牌好感度提升 22%
- 與產品、業務及數據團隊跨部門協作，推動個人化推薦與自動化行銷
#strong[關鍵字]：品牌策略、數位廣告、會員成長、數據分析、團隊領導、全通路行銷

#resume-subheading[行銷經理][#link("https://www.ogilvy.com/tw")[https\:\/\/www\.ogilvy\.com\/tw]][奧美整合行銷傳播集團][2018年7月–2021年2月]
- 服務科技、金融與快速消費品客戶，負責整合行銷傳播策略與專案管理
- 規劃社群媒體內容與 KOL 合作，單一 campaign 觸及超過 500 萬人次
- 管理客戶關係與提案簡報，成功爭取 3 個新客戶，年度合約金額成長 40%
- 分析市場趨勢與競品動態，提供客戶即時的策略建議
#strong[關鍵字]：整合行銷、社群媒體、KOL 合作、客戶管理、提案簡報

#resume-subheading[行銷專員][#link("https://www.rakuten.com.tw/")[https\:\/\/www\.rakuten\.com\.tw\/]][台灣樂天市場股份有限公司][2016年7月–2018年6月]
- 執行電子報、EDM 與站內促銷活動，提升活躍會員數 18%
- 協助規劃年度檔期活動，包含雙 11、週年慶與品牌日
- 運用 Google Analytics 追蹤流量與轉換，優化 landing page 成效
#strong[關鍵字]：電商行銷、EDM、促銷活動、Google Analytics
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、國際交換經驗])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：有限工作水平], [#strong[關鍵字]：JLPT N3])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[數位行銷]：專家], [#strong[關鍵字]：SEO、SEM、Google Ads、Meta Ads、Google Analytics 4、LINE 官方帳號])

#grid(columns: (1fr, auto), align: (left, right), [#strong[品牌與內容策略]：高級], [#strong[關鍵字]：品牌定位、內容行銷、社群經營、公關溝通、文案撰寫])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析與 CRM]：高級], [#strong[關鍵字]：Looker Studio、SQL、CRM、A\/B Testing、行銷自動化])

#grid(columns: (1fr, auto), align: (left, right), [#strong[專案與團隊管理]：專家], [#strong[關鍵字]：跨部門協作、預算管理、敏捷開發、領導激勵、供應商管理])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳行銷專案獎][][台灣數位行銷協會][2023年12月]
以「全通路會員成長計畫」榮獲年度最佳行銷專案獎，該專案在 12 個月內提升會員回購率 28%。

#resume-subheading[傑出學生論文獎][][國立臺灣大學管理學院][2018年6月]
碩士論文《社群媒體內容對消費者購買意願之影響》獲選為傑出學生論文。
]

= 證書
#resume-pad[
#resume-subheading[Google Analytics 4 Certification][#link("https://skillshop.exceedlms.com/student/catalog")[https\:\/\/skillshop\.exceedlms\.com\/student\/catalog]][Google][2023年3月]

#resume-subheading[Meta Certified Digital Marketing Associate][#link("https://www.facebook.com/business/learn/certification")[https\:\/\/www\.facebook\.com\/business\/learn\/certification]][Meta][2022年8月]

#resume-subheading[行銷自動化專家認證][#link("https://academy.hubspot.com/")[https\:\/\/academy\.hubspot\.com\/]][HubSpot Academy][2021年1月]
]

= 出版刊物
#resume-pad[
#resume-subheading[從數據到決策：零售品牌的全通路行銷實踐][#link("https://www.businessweekly.com.tw/")[https\:\/\/www\.businessweekly\.com\.tw\/]][商業周刊][2023年11月]
分享如何整合線上與線下數據，建立可衡量的全通路行銷策略，並以實際案例說明會員成長與營收提升的關鍵。
]

= 項目
#resume-pad[
#resume-subheading[品牌年輕化再造計畫][#link("https://www.yatinglin.com/projects/brand-revamp")[https\:\/\/www\.yatinglin\.com\/projects\/brand\-revamp]][為台灣知名零售品牌重新定位，吸引 18\-35 歲年輕客群。][2022年1月–2022年12月]
- 進行消費者洞察與競品分析，重新定義品牌核心訊息與視覺風格
- 規劃社群挑戰賽、KOL 合作與線下快閃店，創造 1,200 萬次社群曝光
- 專案結束後，品牌在目標客群中的知名度提升 30%
#strong[關鍵字]：品牌定位、年輕化、社群行銷、消費者洞察

#resume-subheading[會員忠誠度提升計畫][#link("https://www.yatinglin.com/projects/loyalty-program")[https\:\/\/www\.yatinglin\.com\/projects\/loyalty\-program]][運用 CRM 數據與自動化行銷，提升會員回購率與終身價值。][2023年3月–2023年11月]
- 建立分群模型，針對不同消費週期設計個人化優惠與內容
- 導入自動化 Email 與 LINE 訊息，開信率提升 45%
- 會員回購率在 9 個月內成長 28%，帶動營收增加新台幣 3,200 萬元
#strong[關鍵字]：CRM、自動化行銷、會員經營、數據分析
]

= 興趣愛好
#resume-pad[
#strong[藝文與設計]：當代藝術、平面設計、攝影

#strong[戶外活動]：登山、馬拉松、單車

#strong[閱讀與寫作]：商業書寫、行銷趨勢、專欄投稿
]

= 志願服務
#resume-pad[
#resume-subheading[志工講師][][台灣行銷傳播專業認證協會][2020年3月–2023年12月]
- 擔任行銷認證課程志工講師，分享數位行銷與品牌策略實務
- 協助協會舉辦產業論壇與學生工作坊，累計參與者超過 500 人
- 參與偏鄉數位行銷教育計畫，協助在地小農建立社群媒體行銷能力
]