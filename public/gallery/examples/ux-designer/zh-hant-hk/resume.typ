#set document(
  title: "林曉彤 - 資深用戶體驗設計師，專注金融科技及流動應用程式",
  author: "林曉彤",
  keywords: "用戶研究, 原型與設計工具, 互動設計, 前端協作",
  description: "Résumé of 林曉彤",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林曉彤]] #v(-0.2em)

#text(size: 1.44em)[資深用戶體驗設計師，專注金融科技及流動應用程式]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:hello@lamhiutung.design")[hello\@lamhiutung\.design] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.lamhiutung.design")[https\:\/\/www\.lamhiutung\.design]

中國香港，香港島，香港，中環皇后大道中 100 號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M232 237.2c31.8-15.2 48.4-38.2 48.4-74 0-70.6-52.6-87.8-113.3-87.8l-167.1 0 0 354.4 171.8 0c64.4 0 124.9-30.9 124.9-102.9 0-44.5-21.1-77.4-64.7-89.7zM77.9 135.9l73.1 0c28.1 0 53.4 7.9 53.4 40.5 0 30.1-19.7 42.2-47.5 42.2l-79 0 0-82.7zm83.3 233.7l-83.3 0 0-97.6 84.9 0c34.3 0 56 14.3 56 50.6 0 35.8-25.9 47-57.6 47zM519.7 128.9l-143.7 0 0-34.9 143.7 0 0 34.9zM576 305.2c0-75.9-44.4-139.2-124.9-139.2-78.2 0-131.3 58.8-131.3 135.8 0 79.9 50.3 134.7 131.3 134.7 61.3 0 101-27.6 120.1-86.3l-62.2 0c-6.7 21.9-34.3 33.5-55.7 33.5-41.3 0-63-24.2-63-65.3l185.1 0c.3-4.2 .6-8.7 .6-13.2zM390.4 274c2.3-33.7 24.7-54.8 58.5-54.8 35.4 0 53.2 20.8 56.2 54.8l-114.7 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.behance.net/lamhiutung")[lamhiutung] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lamhiutung")[lam\-hiu\-tung] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M256 8a248 248 0 1 0 0 496 248 248 0 1 0 0-496zM420 122.4c29.5 36 47.4 82 47.8 132-7-1.5-77-15.7-147.5-6.8-5.8-14-11.2-26.4-18.6-41.6 78.3-32 113.8-77.5 118.3-83.5zM396.4 97.9c-3.8 5.4-35.7 48.3-111 76.5-34.7-63.8-73.2-116.2-79-124 67.2-16.2 138 1.3 190.1 47.5zM165.9 64.6c5.6 7.7 43.4 60.1 78.5 122.5-99.1 26.3-186.4 25.9-195.8 25.8 13.7-65.7 58-120.4 117.3-148.3zM44.2 256.3c0-2.2 0-4.3 .1-6.5 9.3 .2 111.9 1.5 217.7-30.1 6.1 11.9 11.9 23.9 17.2 35.9-76.6 21.6-146.2 83.5-180.5 142.3-33.8-37.6-54.5-87.2-54.5-141.6zM126 423.4c22.1-45.2 82.2-103.6 167.6-132.8 29.7 77.3 42 142.1 45.2 160.6-68.1 29-150 21.1-212.8-27.9zm248.4 8.5c-2.2-12.9-13.4-74.9-41.2-151 66.4-10.6 124.7 6.8 131.9 9.1-9.4 58.9-43.3 109.8-90.8 142z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://dribbble.com/lamhiutung")[lamhiutung]
]

= 簡介

#resume-pad[
具超過六年經驗的用戶體驗設計師，擅長為金融科技及流動應用程式提供以用戶為中心的設計方案。

- 主導大型銀行應用程式的用戶體驗重塑，提升用戶滿意度達 35%
- 熟悉設計系統建立及管理，確保產品一致性及開發效率
- 善於透過用戶研究及可用性測試，發掘用戶需要並轉化為具體設計方案
- 與產品經理及工程師緊密合作，推動設計主導的產品開發流程
]

= 教育背景
#resume-pad[
#resume-subheading[香港理工大學][#link("https://www.polyu.edu.hk/")[https\:\/\/www\.polyu\.edu\.hk\/]][學士，設計學（互動媒體），成績：3\.5][2015年9月–2019年6月]
- 專攻互動媒體設計，畢業作品獲學院頒發「最佳設計項目」獎
- 透過多個跨學科項目，累積用戶研究、原型設計及可用性測試的實戰經驗
- 積極參與設計學會活動，並擔任學生設計展覽的策展人
#strong[課程]：用戶體驗設計、人機互動、視覺傳達設計、設計研究方法、流動應用程式設計、設計心理學
]

= 工作經歷
#resume-pad[
#resume-subheading[高級用戶體驗設計師][#link("https://www.fintastic.example")[https\:\/\/www\.fintastic\.example]][Fintastic 金融科技有限公司][2022年7月至今]
- 主導公司旗艦投資應用程式的設計策略，與產品及工程團隊合作推出新功能
- 建立及維護設計系統，統一組件規範，縮短設計到開發的交付時間約 30%
- 規劃及執行季度用戶研究計劃，包括深度訪談及可用性測試，為產品路線圖提供建議
- 指導初級設計師，並定期舉辦設計分享會，促進團隊專業成長
#strong[關鍵字]：設計系統、用戶研究、可用性測試、金融科技、團隊領導

#resume-subheading[用戶體驗設計師][#link("https://www.digitalgear.example")[https\:\/\/www\.digitalgear\.example]][Digital Gear Studio][2019年9月–2022年6月]
- 負責多個客戶項目的用戶體驗設計，涵蓋零售、旅遊及教育等行業
- 運用設計思考方法，與客戶共同定義問題，並製作線框圖及互動原型
- 進行競爭分析及用戶訪談，將研究結果轉化為清晰的用戶旅程地圖
- 與視覺設計師及開發人員協作，確保設計在技術上可行並符合品牌形象
#strong[關鍵字]：設計思考、用戶旅程地圖、互動原型、客戶溝通

#resume-subheading[用戶體驗設計實習生][#link("https://www.cloudinnovation.example")[https\:\/\/www\.cloudinnovation\.example]][雲創科技][2018年6月–2018年8月]
- 協助高級設計師進行用戶訪談及問卷調查，整理研究報告
- 參與設計工作坊，製作低保真原型及可用性測試材料
- 與開發團隊合作，撰寫設計規格文件及交接材料
#strong[關鍵字]：用戶訪談、問卷調查、低保真原型
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 8\.0、商業英語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[用戶研究]：專家], [#strong[關鍵字]：深度訪談、可用性測試、問卷調查、人物誌、用戶旅程地圖])

#grid(columns: (1fr, auto), align: (left, right), [#strong[原型與設計工具]：專家], [#strong[關鍵字]：Figma、Sketch、Adobe XD、InVision、Protopie])

#grid(columns: (1fr, auto), align: (left, right), [#strong[互動設計]：高級], [#strong[關鍵字]：線框圖、微互動、無障礙設計、設計系統])

#grid(columns: (1fr, auto), align: (left, right), [#strong[前端協作]：初級], [#strong[關鍵字]：HTML、CSS、JavaScript])
]

= 榮譽
#resume-pad[
#resume-subheading[香港設計師協會環球設計大獎 2022 – 銀獎][][香港設計師協會][2022年10月]
憑藉「智能銀行應用程式用戶體驗重塑」項目，獲得數碼介面組別銀獎，表揚項目在用戶體驗及視覺設計上的卓越表現。
]

= 證書
#resume-pad[
#resume-subheading[Certified Usability Analyst][#link("https://www.humanfactors.com/")[https\:\/\/www\.humanfactors\.com\/]][Human Factors International][2021年1月]
]

= 出版刊物
#resume-pad[
#resume-subheading[「建立可持續設計系統的五大原則」][#link("https://medium.com/ux-collective/design-system-principles")[https\:\/\/medium\.com\/ux\-collective\/design\-system\-principles]][Medium（UX Collective）][2023年3月]
分享在金融科技公司建立及管理設計系統的實際經驗，包括組件設計、文件規範及團隊協作流程。
]

= 項目
#resume-pad[
#resume-subheading[智能銀行應用程式重塑][#link("https://www.fintastic.example/projects/banking-app")[https\:\/\/www\.fintastic\.example\/projects\/banking\-app]][為一家主流銀行重新設計流動應用程式，整合帳戶管理、投資及支付功能，提升整體用戶體驗。
][2022年1月–2022年12月]
- 透過用戶研究及數據分析，辨識用戶痛點，並制定設計策略
- 設計全新的資訊架構及互動流程，簡化複雜交易步驟
- 建立可擴展的設計系統，支援 iOS 及 Android 平台
- 推出後應用程式商店評分由 3\.2 升至 4\.5 星
#strong[關鍵字]：金融科技、設計系統、用戶研究、可用性測試
]

= 興趣愛好
#resume-pad[
#strong[行山]：麥理浩徑、露營、攝影

#strong[烹飪]：烘焙、港式茶餐廳美食
]

= 志願服務
#resume-pad[
#resume-subheading[網站設計義工][#link("https://www.guidedogs.org.hk/")[https\:\/\/www\.guidedogs\.org\.hk\/]][香港導盲犬協會][2023年1月至今]
- 協助協會重新設計官方網站，改善資訊架構及捐款流程
- 拍攝及挑選照片，提升網站視覺吸引力及故事性
]