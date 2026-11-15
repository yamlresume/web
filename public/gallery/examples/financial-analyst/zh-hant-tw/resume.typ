#set document(
  title: "林冠宇 - 資深財務分析師｜企業財務、投資評價與風險分析",
  author: "林冠宇",
  keywords: "財務分析與評價, 資料分析與自動化, 風險管理與法遵",
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

#text(size: 1.44em)[資深財務分析師｜企業財務、投資評價與風險分析]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 912 345 678")[\+886 912 345 678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kuanyu.lin@finmail.tw")[kuanyu\.lin\@finmail\.tw] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.kuanyulin.finance")[https\:\/\/www\.kuanyulin\.finance]

中國臺灣，信義區，台北市，台北市信義區松高路 88 號 12 樓，110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kuanyu-lin-finance")[kuanyu\-lin\-finance] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@kuanyu.finance")[kuanyu\.finance]
]

= 簡介

#resume-pad[
- 具備 6 年以上企業財務、投資分析與預算管理經驗，熟悉三表模型、DCF 評價與情境分析。
- 曾協助管理層完成年度預算、滾動預測與月度經營分析，支援定價、投資與資源配置決策。
- 擅長以 SQL、Python 與 Power BI 自動化財務資料流程，將報表編製時間縮短並提升資料品質。
- 具備跨部門溝通與簡報能力，能以財務數據轉譯營運洞察，推動成本優化與績效改善。
]

= 教育背景
#resume-pad[
#resume-subheading[國立政治大學][#link("https://www.nccu.edu.tw/")[https\:\/\/www\.nccu\.edu\.tw\/]][碩士，財務管理學系，成績：3\.9\/4\.0][2018年9月–2020年6月]
- 碩士論文聚焦企業現金流量預測與資本結構，獲指導教授推薦投稿財務管理學刊。
- 擔任財務計量助教，協助批改作業與帶領個案討論，培養數據分析與溝通能力。
#strong[課程]：高等財務管理、投資學專題、財務計量方法、企業評價與併購、衍生性金融商品

#resume-subheading[國立臺北大學][#link("https://www.ntpu.edu.tw/")[https\:\/\/www\.ntpu\.edu\.tw\/]][學士，會計學系，成績：3\.8\/4\.0][2014年9月–2018年6月]
- 建立會計與財務報表分析基礎，熟悉 IFRS 與企業財務揭露規範。
- 參與校內投資研究社，負責產業研究與財務模型簡報。
#strong[課程]：中級會計學、成本會計、審計學、財務報表分析、稅務法規
]

= 工作經歷
#resume-pad[
#resume-subheading[資深財務分析師][#link("https://www.hongyuancapital.com.tw")[https\:\/\/www\.hongyuancapital\.com\.tw]][宏遠資本管理顧問股份有限公司][2023年3月至今]
- 負責消費與科技產業投資案之財務盡職調查、估值建模與投資備忘錄撰寫，累積評估案件金額逾新台幣 20 億元。
- 建立三表整合模型與敏感度分析，協助投資委員會評估成長情境、資本支出與退出報酬。
- 主導月度經營分析與滾動預測，追蹤營收、毛利率、現金流量與關鍵營運指標，提出改善建議。
- 與會計、法務及業務團隊協作，優化預算編製流程並將報表彙整時間縮短約 30%。
#strong[關鍵字]：財務建模、投資評價、盡職調查、預算管理、經營分析

#resume-subheading[財務分析師][#link("https://www.twd-fintech.com.tw")[https\:\/\/www\.twd\-fintech\.com\.tw]][台灣數位金融科技股份有限公司][2020年7月–2023年2月]
- 編製年度預算與季度滾動預測，涵蓋損益表、資產負債表與現金流量表，支援管理層資源配置決策。
- 建立產品別獲利分析與客戶終身價值模型，協助定價策略與行銷預算優化。
- 使用 SQL 與 Power BI 建置財務儀表板，整合 ERP 與 CRM 資料，提升月度結帳分析效率。
- 參與融資規劃與銀行關係維護，準備授信文件、財務預測與還款能力分析。
#strong[關鍵字]：財務報表分析、現金流量預測、SQL、Power BI、融資規劃
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：繁體中文、商務寫作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、英文簡報、財務報告撰寫])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[財務分析與評價]：專家], [#strong[關鍵字]：三表模型、DCF 評價、情境分析、預算編製、管理層報告])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資料分析與自動化]：高級], [#strong[關鍵字]：Excel VBA、SQL、Python、Power BI、Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[風險管理與法遵]：高級], [#strong[關鍵字]：信用風險、市場風險、內部控制、IFRS、法規遵循])
]

= 榮譽
#resume-pad[
#resume-subheading[年度卓越分析獎][][宏遠資本管理顧問股份有限公司][2024年1月]
- 表彰在投資案評估、財務建模與跨部門協作上的傑出表現。
- 協助團隊完成年度重點投資案，提升投資委員會決策效率。

#resume-subheading[書卷獎][][國立臺北大學][2017年6月]
- 學期成績名列系上前 5%，獲頒書卷獎。
]

= 證書
#resume-pad[
#resume-subheading[特許金融分析師（CFA）第二級通過][#link("https://www.cfainstitute.org/programs/cfa")[https\:\/\/www\.cfainstitute\.org\/programs\/cfa]][CFA 協會][2022年8月]

#resume-subheading[金融風險管理師（FRM）第一部分通過][#link("https://www.garp.org/frm")[https\:\/\/www\.garp\.org\/frm]][全球風險管理專業協會][2021年11月]
]

= 出版刊物
#resume-pad[
#resume-subheading[台灣中小企業現金流量管理與財務韌性之實證研究][#link("https://www.twnfinancejournal.org/articles/2020-sme-cashflow")[https\:\/\/www\.twnfinancejournal\.org\/articles\/2020\-sme\-cashflow]][財務管理學刊][2020年12月]
- 探討中小企業現金流量管理對財務韌性與融資成本的影響。
- 使用台灣上市櫃與中小企業資料進行迴歸分析，提出營運資金管理建議。
]

= 項目
#resume-pad[
#resume-subheading[智慧預算編製平台][#link("https://www.hongyuancapital.com.tw/projects/budget-platform")[https\:\/\/www\.hongyuancapital\.com\.tw\/projects\/budget\-platform]][整合預算編製、版本控管與差異分析的內部平台，協助財務團隊提升預測效率與資料透明度。][2024年1月–2024年11月]
- 設計預算資料模型與權限流程，支援多部門協作與版本追蹤。
- 以 Power BI 建置預算執行儀表板，讓管理層即時掌握預算差異與現金流量狀況。
- 將人工彙整流程自動化，降低重複作業與人為錯誤。
#strong[關鍵字]：預算自動化、資料視覺化、流程改善

#resume-subheading[零售業信用風險儀表板][#link("https://www.twd-fintech.com.tw/projects/credit-dashboard")[https\:\/\/www\.twd\-fintech\.com\.tw\/projects\/credit\-dashboard]][針對零售客戶建立信用風險監控儀表板，整合還款行為、額度使用與逾期指標。][2022年3月–2022年12月]
- 以 SQL 清理與整合客戶交易及還款資料，建立風險分群指標。
- 設計逾期預警規則與視覺化報表，協助風險團隊優先處理高風險帳戶。
- 與風險管理部門合作定義 KPI，提升監控頻率與決策反應速度。
#strong[關鍵字]：信用風險、SQL、風險儀表板
]

= 興趣愛好
#resume-pad[
#strong[投資研究]：價值投資、總體經濟、產業分析

#strong[戶外活動]：登山、馬拉松、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[財務教育志工][#link("https://www.tfaa.org.tw/")[https\:\/\/www\.tfaa\.org\.tw\/]][台灣財務分析師協會][2021年9月至今]
- 參與偏鄉金融素養課程，設計預算管理與儲蓄規劃教材。
- 協助協會舉辦財務分析工作坊，擔任小組討論引導與簡報講師。
]