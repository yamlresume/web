#set document(
  title: "陳嘉俊 - 資深 DevOps 工程師 | 雲端架構與自動化交付專家",
  author: "陳嘉俊",
  keywords: "雲端平台, 容器與編排, 基礎架構即程式碼, CI/CD 與 GitOps, 監控與可觀測性, 程式語言與腳本",
  description: "Résumé of 陳嘉俊",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陳嘉俊]] #v(-0.2em)

#text(size: 1.44em)[資深 DevOps 工程師 | 雲端架構與自動化交付專家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+852 9123 4567")[\+852 9123 4567] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kachun.chan@example.com")[kachun\.chan\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://kachunchan.dev")[https\:\/\/kachunchan\.dev]

中國香港，九龍，香港，香港九龍觀塘鴻圖道 88 號創紀大廈 12 樓

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/kachunchan")[kachunchan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kachunchan")[kachunchan] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/1842371/kachunchan")[kachunchan]
]

= 簡介

#resume-pad[
- 8 年雲端基礎架構與 DevOps 經驗，專注於大規模容器化平台、CI\/CD 自動化與可觀測性建設
- 主導單體式系統重構為 Kubernetes 微服務架構，部署頻率由每月 2 次提升至每日 10 次以上
- 以 Terraform 與 Ansible 全面實踐基礎架構即程式碼（IaC），環境建置時間由 3 個工作日縮短至 45 分鐘
- 建立 Prometheus、Grafana 與 ELK 監控堆疊，平均故障恢復時間（MTTR）下降 70%，系統可用率達 99\.98%
- 雲端成本治理經驗豐富，透過資源調度與預留實例策略，每年節省逾 180 萬港元雲端支出
熱衷推動 DevOps 文化與 blameless 事後檢討機制，擅長跨部門溝通協作，並定期主持內部技術工作坊與新人培訓。
]

= 教育背景
#resume-pad[
#resume-subheading[香港科技大學][#link("https://www.ust.hk")[https\:\/\/www\.ust\.hk]][學士，計算機科學，成績：3\.6][2012年9月–2016年6月]
- 主修計算機科學，成績位列全系前 15%，連續三年獲院長嘉許名單
- 畢業專題為以容器技術建置校園課程排程系統，獲得學系最佳專題獎
- 擔任計算機學會幹事，籌辦校內黑客松與技術講座
#strong[課程]：資料結構與演算法、作業系統、電腦網絡、資料庫系統、分散式系統、雲端運算導論、資訊安全基礎
]

= 工作經歷
#resume-pad[
#resume-subheading[資深 DevOps 工程師][#link("https://www.cloudhorizon.com.hk")[https\:\/\/www\.cloudhorizon\.com\.hk]][雲際科技（香港）有限公司][2021年4月至今]
- 帶領 5 人平台工程小組，負責 12 條產品線的 Kubernetes（Amazon EKS）多集群架構設計、升級與維運
- 以 Terraform 模組化管理 AWS 資源（VPC、EKS、RDS、IAM、S3），將新環境交付時間由 3 個工作日縮短至 45 分鐘
- 建置 GitLab CI 與 Argo CD 的 GitOps 流水線，實現每日 10 次以上零停機部署，回滾時間少於 3 分鐘
- 導入 Prometheus、Grafana、Loki 與 OpenTelemetry，建立 SLO 告警與錯誤預算機制，MTTR 由 90 分鐘降至 25 分鐘
- 推動雲端成本治理（FinOps），透過 Karpenter 自動擴縮與 Savings Plans 規劃，年度雲端支出下降 32%
- 主持每月內部技術工作坊及事故事後檢討，推動知識文件化與值班輪替制度
#strong[關鍵字]：Kubernetes、Terraform、GitOps、Observability、FinOps

#resume-subheading[DevOps 工程師][#link("https://www.apacdata.com.hk")[https\:\/\/www\.apacdata\.com\.hk]][亞太數據服務有限公司][2018年7月–2021年3月]
- 將單體式 Java 應用拆分為 20 個微服務並容器化部署至 Kubernetes，發佈週期由季度縮短至雙週
- 以 Jenkins 與 Ansible 建立自動化建置、測試與部署流程，人工操作步驟減少 85%
- 設計香港與新加坡多區域災難復原架構，RTO 由 8 小時降至 30 分鐘，RPO 控制在 5 分鐘內
- 導入 HashiCorp Vault 集中管理密鑰與憑證，消除設定檔中的明文密碼與共用帳號
- 與開發團隊協作推行測試自動化與品質閘門，單元測試覆蓋率由 42% 提升至 81%
#strong[關鍵字]：Jenkins、Ansible、Docker、Vault、Disaster Recovery

#resume-subheading[系統運維工程師][#link("https://www.kaidata-its.com")[https\:\/\/www\.kaidata\-its\.com]][凱達資訊科技顧問有限公司][2016年8月–2018年6月]
- 負責 200 多台 Linux 伺服器的日常維運、效能調校、修補管理與容量規劃
- 建置 Zabbix 與 Nagios 監控告警系統，將被動故障處理轉為主動預警
- 撰寫 Shell 與 Python 自動化腳本，將例行備份與巡檢工作壓縮至每日 15 分鐘內完成
- 協助三家客戶完成 AWS EC2 與 RDS 遷移，平均節省 40% 自建機房維運成本
#strong[關鍵字]：Linux、Shell、Python、Zabbix
]

= 語言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[粵語]：母語或雙語水平], [#strong[關鍵字]：母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全專業水平], [#strong[關鍵字]：IELTS 7\.5、商務書信與技術簡報])

#grid(columns: (1fr, auto), align: (left, right), [#strong[普通話]：完全專業水平], [#strong[關鍵字]：普通話水平測試二級甲等])
]

= 專業技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[雲端平台]：專家], [#strong[關鍵字]：AWS、Google Cloud、Azure、Amazon EKS、Lambda])

#grid(columns: (1fr, auto), align: (left, right), [#strong[容器與編排]：專家], [#strong[關鍵字]：Docker、Kubernetes、Helm、Istio、Karpenter])

#grid(columns: (1fr, auto), align: (left, right), [#strong[基礎架構即程式碼]：高級], [#strong[關鍵字]：Terraform、Ansible、Pulumi、CloudFormation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CI\/CD 與 GitOps]：高級], [#strong[關鍵字]：GitLab CI、Jenkins、GitHub Actions、Argo CD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[監控與可觀測性]：高級], [#strong[關鍵字]：Prometheus、Grafana、Loki、OpenTelemetry、ELK Stack])

#grid(columns: (1fr, auto), align: (left, right), [#strong[程式語言與腳本]：高級], [#strong[關鍵字]：Python、Go、Bash、SQL])
]

= 榮譽
#resume-pad[
#resume-subheading[年度卓越工程團隊獎][][雲際科技（香港）有限公司][2023年12月]
表揚在雲端成本治理專案中的傑出表現，透過自動擴縮與資源調度策略，於 12 個月內為公司節省逾 180 萬港元雲端支出，同時維持服務可用率 99\.98%。

#resume-subheading[最佳自動化專案獎][][亞太數據服務有限公司][2020年1月]
肯定在 CI\/CD 自動化改造專案中的貢獻，將部署流程由人工操作轉為全自動流水線，發佈失誤率下降 76%。
]

= 證書
#resume-pad[
#resume-subheading[Certified Kubernetes Administrator (CKA)][#link("https://www.cncf.io/certification/cka/")[https\:\/\/www\.cncf\.io\/certification\/cka\/]][Cloud Native Computing Foundation][2022年3月]

#resume-subheading[Certified Kubernetes Security Specialist (CKS)][#link("https://www.cncf.io/certification/cks/")[https\:\/\/www\.cncf\.io\/certification\/cks\/]][Cloud Native Computing Foundation][2023年8月]

#resume-subheading[AWS Certified DevOps Engineer – Professional][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2021年11月]

#resume-subheading[HashiCorp Certified\: Terraform Associate][#link("https://www.hashicorp.com/certification")[https\:\/\/www\.hashicorp\.com\/certification]][HashiCorp][2023年5月]
]

= 出版刊物
#resume-pad[
#resume-subheading[以 GitOps 實現多集群 Kubernetes 的零停機交付][#link("https://www.cloudnativehk.org/journal/2023/gitops-multi-cluster")[https\:\/\/www\.cloudnativehk\.org\/journal\/2023\/gitops\-multi\-cluster]][香港雲端原生技術年刊 2023][2023年8月]
- 探討以 Argo CD 與 ApplicationSet 管理跨區域多集群部署的實務模式
- 比較 push\-based 與 pull\-based 交付流程在合規與安全層面的差異
- 分享將回滾時間由 20 分鐘壓縮至 3 分鐘的具體調校經驗
]

= 引薦
#resume-pad[
#resume-subheading[李婉婷][雲際科技（香港）有限公司 平台工程總監][wendy\.lee\@example\.com][\+852 2765 4321]
嘉俊在任職期間主導了我們整個 Kubernetes 平台的現代化工程，他不僅技術紮實，更具備難得的推動力與溝通能力，能將複雜的架構議題轉化為團隊可執行的路線圖，是任何工程組織都值得擁有的人才。
]

= 項目
#resume-pad[
#resume-subheading[KubeSaver][#link("https://github.com/kachunchan/kubesaver")[https\:\/\/github\.com\/kachunchan\/kubesaver]][開源的 Kubernetes 資源使用率分析與成本優化工具，協助團隊找出閒置工作負載並提出調整建議][2022年3月至今]
- 以 Go 語言開發，定期抓取 Prometheus 指標並計算每個命名空間的成本分攤
- 提供 CLI 與網頁儀表板，可輸出建議的 requests\/limits 調整清單
- 累積超過 1,200 個 GitHub Star，並獲多間香港初創企業採用於內部成本治理
#strong[關鍵字]：Kubernetes、FinOps、Go、Prometheus

#resume-subheading[CICD 樣板庫][#link("https://github.com/kachunchan/pipeline-templates")[https\:\/\/github\.com\/kachunchan\/pipeline\-templates]][為公司內部 30 多個專案提供一致化的 CI\/CD 樣板與安全掃描閘門][2021年9月–2022年6月]
- 整合 Trivy、Semgrep 與 SBOM 產生流程，於流水線中自動攔截高風險漏洞
- 將新專案導入 CI\/CD 的時間由 2 日縮短至 30 分鐘內完成
#strong[關鍵字]：GitLab CI、DevSecOps、Trivy
]

= 興趣愛好
#resume-pad[
#strong[運動]：長跑、龍舟、游泳

#strong[個人興趣]：攝影、開源社群、手沖咖啡
]

= 志願服務
#resume-pad[
#resume-subheading[講者及工作坊導師][#link("https://www.cloudnativehk.org")[https\:\/\/www\.cloudnativehk\.org]][香港雲端原生社群][2021年3月至今]
- 每季主持 Kubernetes、CI\/CD 及可觀測性主題工作坊，累計參與人數超過 600 人
- 協助籌辦年度香港 DevOps 年會，負責議程規劃、講者邀請與現場技術支援
- 為初創團隊提供雲端架構諮詢，協助其在有限預算下建立可靠的自動化交付流程
]