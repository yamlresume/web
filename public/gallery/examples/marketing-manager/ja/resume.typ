#set document(
  title: "佐藤 美咲 - マーケティングマネージャー | デジタルマーケティング戦略",
  author: "佐藤 美咲",
  keywords: "マーケティング戦略, デジタルマーケティング, データ分析・CRM, マネジメント",
  description: "Résumé of 佐藤 美咲",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine", "Noto Serif CJK JP", "Noto Sans CJK JP", "Hiragino Mincho ProN", "Yu Mincho", "MS Mincho", "Hiragino Sans", "Yu Gothic", "Meiryo"),
  size: 10pt,
  lang: "ja", number-type: "lining",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[佐藤 美咲]] #v(-0.2em)

#text(size: 1.44em)[マーケティングマネージャー | デジタルマーケティング戦略]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:misaki.sato@example.com")[misaki\.sato\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.example.com/misaki-sato")[https\:\/\/www\.example\.com\/misaki\-sato]

日本、東京都、渋谷区、東京都渋谷区神宮前1\-2\-3、150\-0001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/misaki-sato")[misaki\-sato] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/misaki_marketing")[misaki\_marketing]
]

= 基本情報

#resume-pad[
- デジタルマーケティングとブランド戦略を中心に8年以上の経験を持つマーケティングマネージャー
- B2B\/B2C両領域で、市場調査から施策立案、実行、分析までの一連のプロセスをリード
- データドリブンな意思決定とクロスファンクショナルなチームマネジメントを得意とする
- SEO\/SEM、SNS、コンテンツマーケティング、CRMを活用した集客と顧客エンゲージメントに強み
- マーケティング予算の最適配分とROI改善を通じて、売上成長に貢献
]

= 学歴
#resume-pad[
#resume-subheading[慶應義塾大学][#link("https://www.keio.ac.jp/")[https\:\/\/www\.keio\.ac\.jp\/]][学士、商学部 マーケティング専攻、成績：3\.7][2012\-04\-01～2016\-03\-31]
- マーケティングと経営学を中心に履修し、消費者インサイトとデータ分析の基礎を習得
- ゼミでは企業との共同研究に参加し、新商品の市場投入戦略を提案
- 卒業論文では「ソーシャルメディアが消費者購買行動に与える影響」をテーマに研究
#strong[コース]：マーケティング原理、消費者行動論、市場調査、ブランド戦略、統計学、経営戦略、デジタルマーケティング
]

= 職歴
#resume-pad[
#resume-subheading[マーケティングマネージャー][#link("https://www.nextbridge.co.jp")[https\:\/\/www\.nextbridge\.co\.jp]][株式会社ネクストブリッジ][2021\-04\-01～現在]
- マーケティング部門のマネージャーとして、5名のチームをリードし年間マーケティング戦略を策定
- 市場調査と競合分析に基づき、ターゲットセグメントの再定義とポジショニングを刷新
- デジタル広告、SEO、コンテンツ、SNSを統合したキャンペーンを実行し、リード獲得数を前年比150%に増加
- マーケティング予算を四半期ごとに見直し、ROIを20%改善
- 営業部門と連携し、リードナーチャリング施策を構築して商談化率を向上
#strong[キーワード]：マーケティング戦略、チームマネジメント、デジタル広告、ROI改善、リード獲得

#resume-subheading[デジタルマーケティングスペシャリスト][#link("https://www.digitalshift.co.jp")[https\:\/\/www\.digitalshift\.co\.jp]][株式会社デジタルシフト][2018\-04\-01～2021\-03\-31]
- B2B SaaS企業において、SEO\/SEM、メールマーケティング、Webinarを活用した集客を担当
- コンテンツマーケティング戦略を立案し、オーガニックトラフィックを2年間で200%増加
- Google AnalyticsとCRMデータを連携し、顧客行動に基づくパーソナライズ施策を実施
- マーケティングオートメーションを導入し、リードスコアリングとナーチャリングを自動化
- 広告代理店と連携し、キャンペーンごとのクリエイティブ改善とA\/Bテストを実施
#strong[キーワード]：SEO、SEM、コンテンツマーケティング、MA、データ分析

#resume-subheading[マーケティングアシスタント][#link("https://www.creativeworks.co.jp")[https\:\/\/www\.creativeworks\.co\.jp]][株式会社クリエイティブワークス][2016\-04\-01～2018\-03\-31]
- マーケティングキャンペーンの企画・運用をサポートし、SNSアカウントの運用を担当
- プレスリリースの作成とメディアリレーションを通じて、ブランド認知度の向上に貢献
- イベントや展示会の企画・運営を補助し、リード獲得と顧客接点の創出を支援
- 市場調査データの収集・分析を行い、レポートを作成してチームに共有
#strong[キーワード]：SNS運用、PR、イベント企画、市場調査
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：日本語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 920、ビジネス英会話])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[マーケティング戦略]：エキスパート], [#strong[キーワード]：市場調査、競合分析、ブランド戦略、ポジショニング、KPI設計])

#grid(columns: (1fr, auto), align: (left, right), [#strong[デジタルマーケティング]：上級], [#strong[キーワード]：SEO、SEM、SNS広告、コンテンツマーケティング、メールマーケティング])

#grid(columns: (1fr, auto), align: (left, right), [#strong[データ分析・CRM]：上級], [#strong[キーワード]：Google Analytics、CRM、マーケティングオートメーション、A\/Bテスト、データ可視化])

#grid(columns: (1fr, auto), align: (left, right), [#strong[マネジメント]：上級], [#strong[キーワード]：チームマネジメント、予算管理、プロジェクト管理、クロスファンクショナル連携])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[年間最優秀マーケティングチーム賞][][株式会社ネクストブリッジ][2023\-12\-01]
- 統合マーケティングキャンペーンの成果が評価され、社内表彰を受賞
- リード獲得数とブランド認知度の大幅な向上に貢献

#resume-subheading[デジタルマーケティングコンテスト 優秀賞][][日本マーケティング協会][2017\-11\-01]
- 若手マーケター向けコンテストにおいて、データ活用型キャンペーンを提案し優秀賞を受賞
]

= 資格・免状
#resume-pad[
#resume-subheading[Google Analytics 4 認定資格][#link("https://skillshop.exceedlms.com/student/catalog")[https\:\/\/skillshop\.exceedlms\.com\/student\/catalog]][Google][2023\-06\-01]

#resume-subheading[HubSpot コンテンツマーケティング認定][#link("https://academy.hubspot.com/courses/content-marketing")[https\:\/\/academy\.hubspot\.com\/courses\/content\-marketing]][HubSpot Academy][2022\-09\-01]

#resume-subheading[日商簿記検定2級][][日本商工会議所][2015\-11\-01]
]

= 出版・著作
#resume-pad[
#resume-subheading[データドリブン時代のブランド構築術][#link("https://www.example.com/publications/data-driven-branding")[https\:\/\/www\.example\.com\/publications\/data\-driven\-branding]][マーケティングジャーナル][2023\-03\-01]
- 顧客データと市場インサイトを活用したブランド戦略の最新手法を解説
- B2B\/B2C企業の事例を交え、実践的なフレームワークを提示
]

= プロジェクト
#resume-pad[
#resume-subheading[統合マーケティングキャンペーン「Next Wave」][#link("https://www.example.com/projects/next-wave")[https\:\/\/www\.example\.com\/projects\/next\-wave]][新製品の市場投入に向けた統合マーケティングキャンペーン][2022\-04\-01～2022\-09\-30]
- ターゲット顧客の再定義からクリエイティブ制作、メディアプランニングまでを統括
- デジタルとオフラインを組み合わせ、認知度を45%向上、リード数を目標比130%達成
- キャンペーン後の顧客満足度調査でNPSが15ポイント改善
#strong[キーワード]：統合マーケティング、新製品投入、ブランド認知
]

= 興味・関心
#resume-pad[
#strong[旅行]：海外旅行、温泉

#strong[読書]：マーケティング、ビジネス書、心理学

#strong[ランニング]：フルマラソン、ジョギング
]

= ボランティア活動
#resume-pad[
#resume-subheading[メンター][#link("https://www.example.org/marketing-support")[https\:\/\/www\.example\.org\/marketing\-support]][一般社団法人マーケティング支援ネットワーク][2020\-06\-01～現在]
- スタートアップや小規模事業者向けに、デジタルマーケティングの無料相談を担当
- マーケティング戦略の立案やSNS運用のアドバイスを通じて、地域企業の成長を支援
- 定期的な勉強会を企画し、若手マーケターのスキルアップに貢献
]