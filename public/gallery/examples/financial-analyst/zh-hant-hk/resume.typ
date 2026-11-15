#set document(
  title: "陳家豪 - 高級財務分析師 | CFA 特許金融分析師",
  author: "陳家豪",
  keywords: "財務分析與建模, 數據分析與視覺化, 會計與報告, 金融工具",
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

#text(size: 1.44em)[高級財務分析師 | CFA 特許金融分析師]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ka.ho.chan@example.com")[ka\.ho\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.chan-kaho-finance.com")[https\:\/\/www\.chan\-kaho\-finance\.com]

中國香港，香港島，香港，香港中環皇后大道中99號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chan-ka-ho-finance")[chan\-ka\-ho\-finance] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@chan.kaho.finance")[chan\.kaho\.finance]
]

= 簡介

#resume-pad[
具備 7 年投資銀行與資產管理經驗的高級財務分析師，專注於財務建模、估值分析、預算預測及管理層決策支援。

- 精通三表模型、DCF、可比公司分析及情境分析，能將複雜數據轉化為可執行洞察
- 熟悉香港上市公司財務披露、IFRS 及 ESG 報告要求
- 擅長以 Excel、SQL、Python 及 Power BI 建立自動化儀表板，提升月度結算與差異分析效率
- 持有 CFA 特許資格，具備優秀的中英文溝通及跨部門協作能力
]

= 教育背景
#resume-pad[
#resume-subheading[香港中文大學][#link("https://www.cuhk.edu.hk")[https\:\/\/www\.cuhk\.edu\.hk]][學士，計量金融學，成績：3\.7\/4\.0][2014年9月–2018年6月]
- 主修計量金融，成績排名前 10%，連續兩年獲院長榮譽錄
- 完成企業估值、投資組合管理及固定收益證券等專題研究
- 擔任金融學會學術幹事，組織行業分享會及模擬投資比賽
#strong[課程]：財務管理、投資分析與資產定價、衍生工具與風險管理、計量方法與統計推論、會計學原理、企業估值、金融市場與機構、程式設計與數據分析
]

= 工作經歷
#resume-pad[
#resume-subheading[高級財務分析師][#link("https://www.hkex.com.hk")[https\:\/\/www\.hkex\.com\.hk]][香港交易所][2021年3月至今]
- 負責集團月度及季度財務分析，涵蓋收入、成本、資本開支及現金流，支援管理層制定年度預算
- 建立並維護三表財務模型、DCF 及可比公司估值模型，用於新業務投資及策略評估
- 主導差異分析與滾動預測，將預測週期由 4 週縮短至 10 個工作天
- 與業務、風險及合規部門協作，編製董事會及監管機構匯報材料
- 指導初級分析師，制定財務建模及數據視覺化最佳實務
#strong[關鍵字]：財務建模、估值分析、預算預測、差異分析、管理層匯報、團隊指導

#resume-subheading[財務分析師][#link("https://www.hangseng.com")[https\:\/\/www\.hangseng\.com]][恒生銀行][2018年7月–2021年2月]
- 支援零售銀行業務的預算編製、月度結算及績效追蹤，管理年度預算逾 8 億港元
- 分析產品盈利能力及客戶分群表現，提出定價及資源配置建議
- 開發 Excel VBA 及 Power BI 自動化報表，減少每月手動處理時間約 60%
- 參與 IFRS 9 撥備模型校驗及監管報表準備工作
#strong[關鍵字]：預算管理、績效分析、產品盈利、監管報表、Power BI、Excel VBA
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5、商務簡報])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等、跨區業務溝通])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[財務分析與建模]：專家], [#strong[關鍵字]：三表財務模型、DCF 估值、可比公司分析、情境與敏感度分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[數據分析與視覺化]：高級], [#strong[關鍵字]：Excel VBA、SQL、Python、Power BI、Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[會計與報告]：高級], [#strong[關鍵字]：IFRS、管理層報告、預算與預測、差異分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[金融工具]：高級], [#strong[關鍵字]：Bloomberg Terminal、Capital IQ、FactSet、SAP ERP])
]

= 榮譽
#resume-pad[
#resume-subheading[最佳財務分析項目獎][][香港交易所][2022年12月]
表揚在集團新業務投資評估中建立自動化估值模型，將分析週期縮短 35%，並提升董事會決策資料的準確性。

#resume-subheading[院長榮譽錄][][香港中文大學][2017年5月]
因學術成績優異而獲頒，連續兩年位列商學院前 10%。
]

= 證書
#resume-pad[
#resume-subheading[CFA 特許金融分析師資格][#link("https://www.cfainstitute.org")[https\:\/\/www\.cfainstitute\.org]][CFA 協會][2022年8月]

#resume-subheading[金融風險管理師（FRM）][#link("https://www.garp.org")[https\:\/\/www\.garp\.org]][全球風險管理專業人員協會][2020年11月]
]

= 出版刊物
#resume-pad[
#resume-subheading[香港上市公司 ESG 披露與估值相關性研究][#link("https://www.hksfa.org/publications/esg-valuation")[https\:\/\/www\.hksfa\.org\/publications\/esg\-valuation]][香港財務分析師學會期刊][2023年6月]
- 分析 2018 至 2022 年香港上市公司 ESG 評分與市盈率、資金成本的關係
- 發現高 ESG 評分企業在市場波動期間展現較低資金成本
- 提出適用於本地市場的 ESG 整合估值框架
]

= 項目
#resume-pad[
#resume-subheading[港股 ESG 估值整合模型][#link("https://github.com/chan-ka-ho-finance/esg-valuation-model")[https\:\/\/github\.com\/chan\-ka\-ho\-finance\/esg\-valuation\-model]][結合 ESG 評分、財務預測及情境分析的可配置估值模型，供投資研究團隊使用。][2023年1月–2023年6月]
- 以 Python 串接公開 ESG 數據及財務報表，自動計算調整後資金成本
- 建立行業中性評分及敏感度分析，支援投資委員會討論
- 模型獲研究部門採用於 20 間恒生指數成分股之初步篩選
#strong[關鍵字]：ESG、估值模型、Python、情境分析

#resume-subheading[零售銀行預算自動化儀表板][#link("https://github.com/chan-ka-ho-finance/budget-dashboard")[https\:\/\/github\.com\/chan\-ka\-ho\-finance\/budget\-dashboard]][為零售銀行業務設計的預算監控與差異分析儀表板，整合多個資料來源並自動更新。][2020年2月–2020年11月]
- 使用 SQL 及 Power BI 建立產品、渠道及客戶分群維度的預算追蹤
- 將每月管理報表編製時間由 3 天縮短至半天
- 增設異常警示及下鑽分析，協助業務主管快速定位偏差原因
#strong[關鍵字]：Power BI、SQL、預算管理、差異分析
]

= 興趣愛好
#resume-pad[
#strong[金融科技]：區塊鏈、量化交易、數據視覺化

#strong[運動]：跑步、羽毛球、遠足
]

= 志願服務
#resume-pad[
#resume-subheading[社區理財教育義工][#link("https://www.ifphk.org")[https\:\/\/www\.ifphk\.org]][香港財務策劃師學會][2019年9月–2023年12月]
- 為中學生及基層家庭主持理財教育工作坊，主題包括預算管理、儲蓄及風險保障
- 協助設計互動教材及案例，累計服務超過 300 名參加者
- 與社區中心合作統籌年度理財同樂日，協調義工及活動流程
]