#set document(
  title: "林彥廷 - 資深資安工程師 | 紅隊演練與事件回應",
  author: "林彥廷",
  keywords: "滲透測試與紅隊, 事件回應與鑑識, 程式與自動化, 雲端與容器安全, 資安治理與合規",
  description: "Résumé of 林彥廷",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林彥廷]] #v(-0.2em)

#text(size: 1.44em)[資深資安工程師 | 紅隊演練與事件回應]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+886 2 2712 3456")[\+886 2 2712 3456] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yenting.lin@cybersec.tw")[yenting\.lin\@cybersec\.tw] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.yen-ting-lin.dev")[https\:\/\/www\.yen\-ting\-lin\.dev]

中國臺灣，台北市，台北市，台北市大安區復興南路一段 123 號 8 樓，106

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yentinglin-cyber")[yentinglin\-cyber] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yentinglin-cyber")[yentinglin\-cyber] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/12345678/yenting-lin")[yenting\-lin]
]

= 簡介

#resume-pad[
- 具備超過 8 年資訊安全經驗，專注於滲透測試、紅隊演練、事件回應與資安維運。
- 熟悉 MITRE ATT&CK、OWASP Top 10、NIST CSF 與 ISO 27001 等框架，能將攻擊手法轉化為可執行的防禦策略。
- 擅長使用 Python、Go 與 Shell 開發自動化工具，提升弱點管理與威脅偵測效率。
- 具備跨部門溝通與專案管理能力，曾帶領 4 人小組完成金融業零信任架構導入。
]

= 教育背景
#resume-pad[
#resume-subheading[國立臺灣大學][#link("https://www.ntu.edu.tw/")[https\:\/\/www\.ntu\.edu\.tw\/]][碩士，資訊工程學系，成績：4\.1\/4\.3][2014\-09\-01–2016\-06\-30]
- 研究主題聚焦於入侵偵測與惡意流量分析
- 參與實驗室與企業合作之資安專案，建立威脅情報分析流程
- 擔任課程助教，協助教授計算機安全與密碼學課程
#strong[課程]：計算機安全、密碼學、網路安全、作業系統、資料庫系統、分散式系統

#resume-subheading[國立交通大學][#link("https://www.nctu.edu.tw/")[https\:\/\/www\.nctu\.edu\.tw\/]][學士，資訊工程學系，成績：3\.9\/4\.3][2010\-09\-01–2014\-06\-30]
- 建立程式設計與計算機網路基礎
- 參加校內資安社團，開始接觸 CTF 競賽
#strong[課程]：資料結構、演算法、計算機組織、作業系統、網路程式設計
]

= 工作經歷
#resume-pad[
#resume-subheading[資深資安工程師][#link("https://www.blueshield-sec.tw/")[https\:\/\/www\.blueshield\-sec\.tw\/]][藍盾資訊安全股份有限公司][2021\-03\-01至今]
- 主導滲透測試與紅隊演練專案，涵蓋金融、電商與政府單位，年均完成 20 餘件專案
- 建立以 MITRE ATT&CK 為基礎的攻擊模擬與偵測規則，提升 SIEM 告警準確率 35%
- 規劃與執行事件回應流程，協調跨部門進行入侵調查、橫向移動分析與復原
- 帶領 4 人資安小組，負責專案排程、技術指導與客戶溝通
- 推動 ISO 27001 與 NIST CSF 控制措施落地，協助客戶通過第三方稽核
#strong[關鍵字]：滲透測試、紅隊演練、事件回應、MITRE ATT&CK、SIEM、弱點管理、ISO 27001

#resume-subheading[資安工程師][#link("https://www.cloudpeak-tech.tw/")[https\:\/\/www\.cloudpeak\-tech\.tw\/]][雲峰科技股份有限公司][2018\-04\-01–2021\-02\-28]
- 負責企業客戶資安健診、弱點掃描與滲透測試，提供修補建議與風險排序
- 建置與維運 ELK 日誌分析平台，設計威脅偵測規則與儀表板
- 協助客戶處理資安事件，進行惡意程式初步分析與數位鑑識
- 撰寫資安報告與 SOP，並對客戶進行資安意識教育訓練
#strong[關鍵字]：弱點掃描、滲透測試、ELK、數位鑑識、資安健診、教育訓練

#resume-subheading[網路安全分析師][#link("https://www.twdigitalfinance.tw/")[https\:\/\/www\.twdigitalfinance\.tw\/]][台灣數位金融股份有限公司][2016\-07\-01–2018\-03\-31]
- 監控網路與端點安全事件，進行告警分流、調查與升級處理
- 維運防火牆、WAF 與 IDS\/IPS，定期檢視規則與調整政策
- 參與行動銀行 App 安全檢測，協助修補 OWASP Top 10 相關弱點
- 建立資安事件通報流程與每月營運報表
#strong[關鍵字]：事件監控、WAF、IDS\/IPS、OWASP Top 10、行動安全、通報流程
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：TOEIC 950、IELTS 7\.5])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日語]：初級水平], [#strong[關鍵字]：JLPT N4])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[滲透測試與紅隊]：專家], [#strong[關鍵字]：OWASP Top 10、Burp Suite、Metasploit、Nmap、Kali Linux、社交工程])

#grid(columns: (1fr, auto), align: (left, right), [#strong[事件回應與鑑識]：高級], [#strong[關鍵字]：SIEM、Splunk、ELK、數位鑑識、惡意程式分析、MITRE ATT&CK])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式與自動化]：高級], [#strong[關鍵字]：Python、Go、Bash、PowerShell、SQL、REST API])

#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端與容器安全]：中級], [#strong[關鍵字]：AWS、Azure、GCP、IAM、Kubernetes、容器安全])

#grid(columns: (1fr, auto), align: (left, right), [#strong[資安治理與合規]：高級], [#strong[關鍵字]：ISO 27001、NIST CSF、風險管理、合規稽核、資安政策])
]

= 榮譽
#resume-pad[
#resume-subheading[年度最佳資安專案獎][][藍盾資訊安全股份有限公司][2023\-12\-15]
- 表揚於金融業紅隊演練專案中發現重大風險並提出有效改善方案
- 專案協助客戶降低橫向移動風險並強化偵測能力

#resume-subheading[台灣資安 CTF 競賽第一名][][台灣資安社群聯盟][2019\-08\-10]
- 帶領 4 人團隊於 Web、Pwn 與 Reverse 題型中取得佳績
- 負責解題策略規劃與弱點利用腳本開發
]

= 證書
#resume-pad[
#resume-subheading[CISSP 國際資訊系統安全認證][#link("https://www.isc2.org/certifications/cissp")[https\:\/\/www\.isc2\.org\/certifications\/cissp]][ISC2][2022\-06\-20]

#resume-subheading[OSCP 滲透測試認證][#link("https://www.offsec.com/courses/pen-200/")[https\:\/\/www\.offsec\.com\/courses\/pen\-200\/]][Offensive Security][2020\-11\-30]

#resume-subheading[AWS Certified Security \- Specialty][#link("https://aws.amazon.com/certification/certified-security-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-security\-specialty\/]][Amazon Web Services][2021\-09\-15]

#resume-subheading[CEH 道德駭客認證][#link("https://www.eccouncil.org/programs/certified-ethical-hacker-ceh/")[https\:\/\/www\.eccouncil\.org\/programs\/certified\-ethical\-hacker\-ceh\/]][EC\-Council][2019\-05\-10]
]

= 出版刊物
#resume-pad[
#resume-subheading[以 MITRE ATT&CK 為基礎的供應鏈攻擊偵測方法][#link("https://www.taiwan-infosec-journal.tw/articles/attck-supply-chain")[https\:\/\/www\.taiwan\-infosec\-journal\.tw\/articles\/attck\-supply\-chain]][台灣資訊安全期刊][2022\-11\-01]
- 提出結合 ATT&CK 技術與 SIEM 規則的偵測框架
- 以實際事件案例驗證偵測覆蓋率與誤報率改善
]

= 項目
#resume-pad[
#resume-subheading[紅隊演練自動化平台][#link("https://github.com/yentinglin-cyber/redteam-automation")[https\:\/\/github\.com\/yentinglin\-cyber\/redteam\-automation]][以 Python 與 Go 開發的紅隊演練輔助平台，整合偵察、弱點驗證與報告產出。][2022\-01\-01–2023\-06\-30]
- 整合 Nmap、Burp Suite 與自製腳本，自動化執行偵察與弱點驗證
- 建立 ATT&CK 技術對應標籤，協助團隊快速彙整攻擊路徑與防禦建議
- 將報告產出時間由 2 天縮短至 4 小時
#strong[關鍵字]：自動化、紅隊演練、Python、Go、ATT&CK

#resume-subheading[金融業零信任架構導入][][協助金融客戶規劃與導入零信任架構，涵蓋身分驗證、裝置信任與微隔離。][2021\-08\-01–2022\-12\-31]
- 盤點關鍵資產與高風險存取路徑，制定分階段導入計畫
- 導入多因子驗證、條件式存取與網路微隔離控制
- 建立監控指標與異常行為告警，提升橫向移動偵測能力
#strong[關鍵字]：零信任、身分驗證、微隔離、條件式存取、金融安全
]

= 興趣愛好
#resume-pad[
#strong[CTF 競賽]：Web、Pwn、Reverse、Crypto

#strong[戶外活動]：登山、馬拉松、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[資安志工講師][#link("https://www.taiwan-cyber-edu.org/")[https\:\/\/www\.taiwan\-cyber\-edu\.org\/]][台灣資安教育推廣協會][2019\-01\-01–2023\-12\-31]
- 至大專院校與高中分享資安職涯與基礎防護觀念
- 協助辦理資安工作坊與 CTF 新手教學
- 參與偏鄉資訊教育營隊，教授網路安全與密碼學入門
]