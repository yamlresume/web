#set document(
  title: "佐藤 健太 - データエンジニア / データ基盤アーキテクト",
  author: "佐藤 健太",
  keywords: "データエンジニアリング, クラウド & インフラ, データウェアハウス, 分析 & 可視化",
  description: "Résumé of 佐藤 健太",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[佐藤 健太]] #v(-0.2em)

#text(size: 1.44em)[データエンジニア \/ データ基盤アーキテクト]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kenta.sato@example.jp")[kenta\.sato\@example\.jp] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://kenta-sato.dev")[https\:\/\/kenta\-sato\.dev]

日本、東京都、東京、東京都渋谷区神南1\-2\-3、150\-0041

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/kenta-data")[kenta\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kenta-sato-data")[kenta\-sato\-data]
]

= 基本情報

#resume-pad[
データエンジニアとして8年以上の経験を持ち、大規模データ基盤の設計・構築・運用を一貫して担当してきました。ビジネス要件を深く理解し、信頼性と拡張性の高いデータパイプラインを提供することで、データドリブンな意思決定を支援します。

- クラウド（AWS\/GCP）を活用したデータレイク・データウェアハウスの構築と運用
- Apache Spark、Airflow、dbt を用いたバッチ\/ストリーム処理の設計・実装
- データガバナンス、品質管理、コスト最適化の推進
- クロスファンクショナルなチームでのリードとメンタリング
]

= 学歴
#resume-pad[
#resume-subheading[東京大学][#link("https://www.u-tokyo.ac.jp")[https\:\/\/www\.u\-tokyo\.ac\.jp]][学士、情報理工学、成績：3\.7][2011\-04\-01～2015\-03\-31]
- 情報理工学を専攻し、データベース、分散システム、機械学習の基礎を習得
- 卒業研究では大規模データ処理の効率化をテーマに研究を実施
- チーム開発やプレゼンテーションを通じて協働スキルを向上
#strong[コース]：データ構造とアルゴリズム、データベースシステム、分散システム、機械学習、統計学、情報理論
]

= 職歴
#resume-pad[
#resume-subheading[シニアデータエンジニア][#link("https://www.dataforge.example.jp")[https\:\/\/www\.dataforge\.example\.jp]][株式会社データフォージ][2021\-04\-01～現在]
- データ基盤のアーキテクチャ設計をリードし、Snowflake と dbt を中心とした分析基盤を構築
- Airflow による数百本のデータパイプラインのオーケストレーションを設計・運用
- データ品質監視の仕組みを導入し、重要指標の信頼性を向上
- ジュニアエンジニアのメンタリングとコードレビューを実施
#strong[キーワード]：データ基盤、Snowflake、dbt、Airflow、データ品質

#resume-subheading[データエンジニア][#link("https://www.nextretail.example.jp")[https\:\/\/www\.nextretail\.example\.jp]][株式会社ネクストリテイル][2018\-04\-01～2021\-03\-31]
- AWS 上にデータレイクを構築し、POS や EC サイトのデータを統合
- Apache Spark を用いた大規模バッチ処理の設計・実装を担当
- データカタログを整備し、社内のデータ探索と利用を促進
- コスト最適化のため、S3 ライフサイクルポリシーと EMR の実行計画を改善
#strong[キーワード]：AWS、Apache Spark、データレイク、データカタログ、コスト最適化

#resume-subheading[データ分析エンジニア][#link("https://www.infometrics.example.jp")[https\:\/\/www\.infometrics\.example\.jp]][株式会社インフォメトリクス][2015\-04\-01～2018\-03\-31]
- 受託分析プロジェクトにて、データ抽出・加工・可視化を担当
- SQL と Python を用いた分析基盤の構築とレポーティングの自動化
- 顧客向けの KPI ダッシュボードを Tableau で設計・開発
- 要件定義から運用までを一貫して経験
#strong[キーワード]：Python、SQL、Tableau、自動化、KPI
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：日本語ネイティブ])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 900、技術文書読解])

#grid(columns: (1fr, auto), align: (left, right), [#strong[中国語]：限定的な実務レベル], [#strong[キーワード]：HSK 4級])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[データエンジニアリング]：エキスパート], [#strong[キーワード]：Python、SQL、Apache Spark、Airflow、dbt、Kafka])

#grid(columns: (1fr, auto), align: (left, right), [#strong[クラウド & インフラ]：上級], [#strong[キーワード]：AWS、GCP、Terraform、Docker、Kubernetes])

#grid(columns: (1fr, auto), align: (left, right), [#strong[データウェアハウス]：上級], [#strong[キーワード]：Snowflake、BigQuery、Redshift、PostgreSQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[分析 & 可視化]：中級], [#strong[キーワード]：Tableau、Looker、Pandas、Jupyter])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[技術表彰 最優秀賞][][株式会社データフォージ][2023\-10\-01]
データ基盤の刷新プロジェクトにおいて、設計・実装・運用面で顕著な成果を上げたとして表彰。
]

= 資格・免状
#resume-pad[
#resume-subheading[AWS Certified Data Analytics \- Specialty][#link("https://aws.amazon.com/certification/certified-data-analytics-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-data\-analytics\-specialty\/]][Amazon Web Services][2022\-03\-01]

#resume-subheading[Google Cloud Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google Cloud][2020\-06\-01]
]

= 出版・著作
#resume-pad[
#resume-subheading[データ基盤の内製化におけるAirflow活用事例][#link("https://gihyo.jp/article/data-platform-airflow")[https\:\/\/gihyo\.jp\/article\/data\-platform\-airflow]][技術評論社][2022\-11\-01]
- データ基盤の内製化を進める際のAirflow活用方法を解説
- パイプライン設計、運用監視、チーム体制づくりに焦点
- 実案件での課題と解決策を紹介
]

= プロジェクト
#resume-pad[
#resume-subheading[顧客360度データ基盤の構築][#link("https://www.dataforge.example.jp/case/customer360")[https\:\/\/www\.dataforge\.example\.jp\/case\/customer360]][顧客データを統合し、マーケティングとサービス改善を支援するデータ基盤][2022\-01\-01～2022\-12\-31]
- 複数システムの顧客データをSnowflakeに統合
- dbtによるデータモデル整備と品質テストの自動化
- BIツール向けのセマンティックレイヤーを設計
- マーケティング部門と連携し、施策立案のリードタイムを短縮
#strong[キーワード]：顧客データ、Snowflake、dbt、データモデリング
]

= 興味・関心
#resume-pad[
#strong[オープンソース]：Airflow、dbt、コミュニティ活動

#strong[読書]：技術書、データアーキテクチャ
]

= ボランティア活動
#resume-pad[
#resume-subheading[メンター][#link("https://data-engineer-community.example.jp")[https\:\/\/data\-engineer\-community\.example\.jp]][データエンジニア勉強会コミュニティ][2020\-01\-01～現在]
- データエンジニアを目指す参加者向けに勉強会やハンズオンを実施
- キャリア相談や技術的な質問への回答を通じて成長を支援
- コミュニティ運営にも携わり、継続的な学びの場を提供
]