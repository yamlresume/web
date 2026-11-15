#set document(
  title: "陳家豪 - 資深網絡安全工程師 | 雲端安全與滲透測試",
  author: "陳家豪",
  keywords: "網絡安全, 雲端與基礎架構, 安全工具, 程式與自動化, 合規與治理",
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

#text(size: 1.44em)[資深網絡安全工程師 | 雲端安全與滲透測試]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:ka.ho.chan@example.com")[ka\.ho\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.chanhk-security.com")[https\:\/\/www\.chanhk\-security\.com]

中國香港，九龍，香港，香港九龍旺角彌敦道 700 號

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chankaho-cyber")[chankaho\-cyber] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/chankaho-sec")[chankaho\-sec]
]

= 簡介

#resume-pad[
具 8 年網絡安全工程經驗，專注雲端安全架構、滲透測試與事故應變。

- 熟悉零信任架構、SIEM、EDR 與 IAM，曾為金融及零售企業降低風險
- 持有 CISSP、OSCP 及 CKS，擅長跨部門協作與合規審計
- 以務實態度和清晰溝通推動安全左移，提升開發團隊安全意識
]

= 教育背景
#resume-pad[
#resume-subheading[香港科技大學][#link("https://www.ust.hk")[https\:\/\/www\.ust\.hk]][學士，電腦科學，成績：3\.7][2012年9月–2016年6月]
- 主修電腦科學，專注網絡與資訊安全
- 畢業專題研究入侵偵測系統與機器學習應用
- 曾獲院長嘉許名單
#strong[課程]：資料結構與演算法、作業系統、電腦網絡、資料庫系統、資訊安全導論、密碼學基礎、雲端運算
]

= 工作經歷
#resume-pad[
#resume-subheading[高級網絡安全工程師][#link("https://www.hengxin-fintech.com")[https\:\/\/www\.hengxin\-fintech\.com]][恒信金融科技有限公司][2021年6月至今]
- 設計及推行雲端安全架構，覆蓋 AWS 與 Azure，落實零信任存取及最少權限原則
- 主導 SIEM 與 EDR 規則優化，將告警誤報率降低 35%，平均事故回應時間縮短至 20 分鐘
- 執行內部滲透測試與紅隊演練，協助修補高風險漏洞並建立修復追蹤流程
- 與合規團隊完成 ISO 27001 與 PCI DSS 審計，維持零重大不符合項
- 培訓開發團隊推行安全左移，將 SAST\/DAST 納入 CI\/CD 流程
#strong[關鍵字]：雲端安全、零信任、事故應變、SIEM、安全左移

#resume-subheading[網絡安全工程師][#link("https://www.chundaretail.com")[https\:\/\/www\.chundaretail\.com]][駿達零售集團][2018年3月–2021年5月]
- 負責零售支付系統的安全評估與監控，保護每日逾 50 萬筆交易
- 部署及管理防火牆、WAF 與 IDS\/IPS，定期進行規則檢視與調整
- 主導弱點管理計劃，協調跨部門修補漏洞，季度高風險漏洞清零
- 參與 ISO 27001 認證準備，撰寫風險評估與安全政策文件
#strong[關鍵字]：滲透測試、弱點管理、ISO 27001、防火牆、WAF

#resume-subheading[資訊安全分析師][#link("https://www.anwang-consulting.com")[https\:\/\/www\.anwang\-consulting\.com]][安網顧問有限公司][2016年7月–2018年2月]
- 於 SOC 監控安全事件，進行初步分析、升級與事故記錄
- 使用 Nessus、Burp Suite 等工具執行弱點掃描及滲透測試
- 協助客戶完成安全基線檢查與合規差距分析
- 撰寫事故報告與修復建議，向管理層匯報風險狀況
#strong[關鍵字]：SOC、弱點掃描、風險評估、合規審計
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5、商務溝通])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：有限工作水平], [#strong[關鍵字]：日常會話])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[網絡安全]：專家], [#strong[關鍵字]：滲透測試、紅隊演練、事故應變、弱點管理、風險評估])

#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端與基礎架構]：高級], [#strong[關鍵字]：AWS、Azure、Kubernetes、Docker、Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[安全工具]：高級], [#strong[關鍵字]：Splunk、CrowdStrike、Burp Suite、Nessus、Wireshark])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式與自動化]：中級], [#strong[關鍵字]：Python、Bash、PowerShell、Git、Ansible])

#grid(columns: (1fr, auto), align: (left, right), [#strong[合規與治理]：高級], [#strong[關鍵字]：ISO 27001、PCI DSS、NIST CSF、零信任、安全政策])
]

= 榮譽
#resume-pad[
#resume-subheading[網絡安全卓越獎][][香港金融科技協會][2023年3月]
表揚在金融雲端安全轉型及事故應變流程優化上的突出貢獻。

#resume-subheading[年度最佳安全項目][][駿達零售集團][2020年11月]
表彰在支付系統弱點管理及 ISO 27001 認證準備中的卓越表現。
]

= 證書
#resume-pad[
#resume-subheading[CISSP][#link("https://www.isc2.org/certifications/cissp")[https\:\/\/www\.isc2\.org\/certifications\/cissp]][ISC2][2022年8月]

#resume-subheading[OSCP][#link("https://www.offsec.com/courses/pen-200/")[https\:\/\/www\.offsec\.com\/courses\/pen\-200\/]][Offensive Security][2021年1月]

#resume-subheading[CKS][#link("https://training.linuxfoundation.org/certification/certified-kubernetes-security-specialist/")[https\:\/\/training\.linuxfoundation\.org\/certification\/certified\-kubernetes\-security\-specialist\/]][Linux Foundation][2023年5月]

#resume-subheading[AWS Certified Security – Specialty][#link("https://aws.amazon.com/certification/certified-security-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-security\-specialty\/]][Amazon Web Services][2021年9月]
]

= 出版刊物
#resume-pad[
#resume-subheading[雲端原生環境的零信任存取實踐][#link("https://www.hksecurityjournal.com/articles/zero-trust-cloud")[https\:\/\/www\.hksecurityjournal\.com\/articles\/zero\-trust\-cloud]][香港資訊安全期刊][2023年6月]
- 探討零信任架構在混合雲環境的落地方法
- 分享身份治理、微分段與持續驗證的實務經驗
]

= 項目
#resume-pad[
#resume-subheading[企業零信任轉型計劃][#link("https://www.chanhk-security.com/projects/zero-trust")[https\:\/\/www\.chanhk\-security\.com\/projects\/zero\-trust]][為跨國金融機構設計及實施零信任安全架構][2022年1月–2023年12月]
- 重新設計身份驗證與存取控制流程，覆蓋 3,000 名員工及 200 個應用系統
- 導入微分段及持續風險評估，降低橫向移動風險
- 與 IT 及合規團隊協作，確保符合監管要求
#strong[關鍵字]：零信任、身份治理、微分段、合規

#resume-subheading[自動化弱點管理平台][#link("https://www.chanhk-security.com/projects/vuln-management")[https\:\/\/www\.chanhk\-security\.com\/projects\/vuln\-management]][整合掃描、風險評分與修復追蹤的自動化平台][2021年3月–2021年10月]
- 以 Python 串接 Nessus 與 Jira，自動建立修復工單
- 建立風險導向評分模型，協助團隊優先處理高風險漏洞
- 將平均修復週期由 45 天縮短至 18 天
#strong[關鍵字]：Python、Nessus、Jira、自動化、風險評分
]

= 興趣愛好
#resume-pad[
#strong[網絡安全研究]：漏洞分析、威脅情報、CTF

#strong[戶外活動]：行山、單車、攝影
]

= 志願服務
#resume-pad[
#resume-subheading[社區導師][#link("https://www.hkcyberawareness.org")[https\:\/\/www\.hkcyberawareness\.org]][香港網絡安全意識協會][2019年9月–2023年7月]
- 為中學生及長者舉辦網絡安全講座，提升防騙意識
- 協助設計釣魚郵件辨識工作坊教材
- 參與年度網絡安全嘉年華的義工統籌
]