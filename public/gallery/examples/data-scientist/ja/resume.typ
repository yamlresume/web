#set document(
  title: "佐藤 恵子 - データサイエンティスト / 機械学習エンジニア",
  author: "佐藤 恵子",
  keywords: "データ分析・統計, 機械学習, データ基盤・クラウド",
  description: "Résumé of 佐藤 恵子",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[佐藤 恵子]] #v(-0.2em)

#text(size: 1.44em)[データサイエンティスト \/ 機械学習エンジニア]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:080-1234-5678")[080\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:keiko.sato@example.jp")[keiko\.sato\@example\.jp] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://keiko-sato.dev")[https\:\/\/keiko\-sato\.dev]

日本、東京都、東京、東京都千代田区丸の内1\-2\-3、100\-0001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/keikosato")[keikosato] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/keikosato")[keiko\-sato]
]

= 基本情報

#resume-pad[
データサイエンティストとして、顧客分析・需要予測・レコメンドシステムの構築に5年以上従事。
ビジネス課題を統計分析・機械学習で解決し、施策の意思決定を支援しています。

- Python\/Rを用いたデータ分析基盤の構築と運用
- 機械学習モデルの設計・実装・評価（分類、回帰、クラスタリング、レコメンド）
- ダッシュボード作成によるKPI可視化とインサイト共有
- ビジネス部門と連携し、PoCから本番適用まで一気通貫で推進
]

= 学歴
#resume-pad[
#resume-subheading[東京大学大学院][#link("https://www.u-tokyo.ac.jp/")[https\:\/\/www\.u\-tokyo\.ac\.jp\/]][修士、統計学、成績：4\.0][2018年4月～2020年3月]
- マーケティングデータのセグメンテーション手法に関する研究を行い、修士論文を執筆
- 統計モデリングとPythonによる実データ分析のスキルを習得
- 学会発表1回、論文投稿1件
#strong[コース]：多変量解析、機械学習、ベイズ統計学、時系列解析、実験計画法、データ可視化
]

= 職歴
#resume-pad[
#resume-subheading[データサイエンティスト][#link("https://insightlab.example.com")[https\:\/\/insightlab\.example\.com]][株式会社インサイトラボ][2021年4月～現在]
- 小売業向け需要予測モデルを開発し、在庫削減と売上向上に貢献
- 顧客セグメンテーションとLTV予測モデルを構築し、マーケティング施策のROI改善を実現
- 各種分析ダッシュボードをLooker Studioで整備し、非エンジニアでもデータ活用できる環境を提供
- データ基盤（BigQuery・dbt）の設計・運用を担当し、分析工数を50%削減
#strong[キーワード]：Python、BigQuery、Looker Studio、需要予測、セグメンテーション

#resume-subheading[データアナリスト][#link("https://market-analytics.example.com")[https\:\/\/market\-analytics\.example\.com]][株式会社マーケットアナリティクス][2020年4月～2021年3月]
- ウェブアクセスログと購買データを統合し、ユーザー行動分析を実施
- アンケートデータの統計解析（クロス集計・回帰分析）による顧客満足度要因の特定
- SQLやExcelを用いた定常レポートの自動作成により、レポート作成時間を短縮
#strong[キーワード]：SQL、Excel、統計解析、レポーティング
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：母国語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 920、技術文書読解、プレゼン])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[データ分析・統計]：エキスパート], [#strong[キーワード]：Python、R、SQL、統計モデリング、A\/Bテスト])

#grid(columns: (1fr, auto), align: (left, right), [#strong[機械学習]：上級], [#strong[キーワード]：scikit\-learn、LightGBM、TensorFlow、XGBoost、ハイパーパラメータ最適化])

#grid(columns: (1fr, auto), align: (left, right), [#strong[データ基盤・クラウド]：中級], [#strong[キーワード]：BigQuery、dbt、Airflow、Docker、Google Cloud])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[社内データ活用コンペ 最優秀賞][][株式会社インサイトラボ][2022年12月]
小売需要予測の精度改善をテーマにした社内データコンペティションで最優秀賞を受賞。
]

= 資格・免状
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2023年3月]
]

= 出版・著作
#resume-pad[
#resume-subheading[マーケティングデータに基づく顧客セグメンテーション手法の比較検討][#link("https://example.com/publications/segmentation")[https\:\/\/example\.com\/publications\/segmentation]][データサイエンスジャーナル][2020年9月]
実データを用いたクラスタリング手法の比較分析を行い、ビジネス適用における有効性を考察。
]

= プロジェクト
#resume-pad[
#resume-subheading[需要予測ダッシュボード][#link("https://github.com/keikosato/demand-forecast")[https\:\/\/github\.com\/keikosato\/demand\-forecast]][小売店舗向け需要予測および発注支援のためのWebダッシュボード][2021年6月～2021年9月]
- LightGBMとProphetによるアンサンブル予測
- BigQueryでのデータ集計パイプライン構築
- 店舗ごとの特性を考慮した特徴量エンジニアリング
#strong[キーワード]：Python、LightGBM、Prophet、BigQuery、Dash
]

= 興味・関心
#resume-pad[
#strong[データ活用コミュニティ]：勉強会、ハッカソン、データ可視化

#strong[読書]：統計学、SF小説、技術書
]

= ボランティア活動
#resume-pad[
#resume-subheading[運営スタッフ兼講師][#link("https://example.com/study-group")[https\:\/\/example\.com\/study\-group]][データ分析勉強会 Tokyo][2022年4月～現在]
- 初学者向けPythonデータ分析ハンズオンの講師を担当
- 参加者のコードレビューやLT会の企画運営を通じて、コミュニティの活性化に貢献
]