#set document(
  title: "佐藤美咲 - データアナリスト | データ可視化・ビジネスインサイト",
  author: "佐藤美咲",
  keywords: "データ分析, データ可視化, ビジネスインテリジェンス, 機械学習",
  description: "Résumé of 佐藤美咲",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[佐藤美咲]] #v(-0.2em)

#text(size: 1.44em)[データアナリスト | データ可視化・ビジネスインサイト]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:080-1234-5678")[080\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:misaki.sato@example.com")[misaki\.sato\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://misaki-sato.dev")[https\:\/\/misaki\-sato\.dev]

日本、渋谷区、東京都、東京都渋谷区神南1\-2\-3、150\-0001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/misaki-sato")[misaki\-sato] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/misaki-sato")[misaki\-sato]
]

= 基本情報

#resume-pad[
データに基づく意思決定を支援するデータアナリスト。小売・EC業界でSQL・Python・Tableauを駆使し、売上分析、顧客セグメンテーション、予測モデル構築などに従事。ビジネス課題を数値で可視化し、チームのKPI改善に貢献。統計・機械学習の知識を活かした実践的な分析に強みを持つ。
]

= 学歴
#resume-pad[
#resume-subheading[東京大学][#link("https://www.u-tokyo.ac.jp/")[https\:\/\/www\.u\-tokyo\.ac\.jp\/]][学士、経済学部 経済学科、成績：3\.7][2017年4月～2021年3月]
- 統計学・計量経済学を中心に、データ分析の基礎を学ぶ
- 卒業論文では、POSデータを用いた購買行動分析を実施
- 学外のデータ分析コンテストに参加し、可視化とプレゼンテーションを経験
#strong[コース]：統計学、計量経済学、データ解析基礎、プログラミング入門 (Python)、マーケティングリサーチ
]

= 職歴
#resume-pad[
#resume-subheading[データアナリスト][#link("https://www.insight-example.co.jp")[https\:\/\/www\.insight\-example\.co\.jp]][株式会社インサイト][2021年4月～現在]
- 小売・EC事業の売上・在庫・顧客データを統合し、ダッシュボードを構築
- SQL・Pythonによるデータ抽出・加工・分析を行い、週次・月次レポートを自動作成
- 顧客セグメンテーション分析を実施し、マーケティング施策の効果検証を支援
- Tableauを用いて経営陣向けのKPIダッシュボードを開発し、意思決定を支援
#strong[キーワード]：SQL、Python、Tableau、KPI分析、ダッシュボード

#resume-subheading[リサーチアシスタント][#link("https://www.bright-research-example.co.jp")[https\:\/\/www\.bright\-research\-example\.co\.jp]][株式会社ブライトリサーチ][2020年7月～2021年3月]
- 市場調査データのクリーニング・集計を担当
- Excel・Rを用いた統計解析と結果の可視化を支援
- 調査レポートの作成に協力し、クライアントへの提案を補助
#strong[キーワード]：Excel、R、統計解析、市場調査
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：母国語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 920、ビジネス文書作成])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[データ分析]：エキスパート], [#strong[キーワード]：Python、R、SQL、統計解析、予測モデル])

#grid(columns: (1fr, auto), align: (left, right), [#strong[データ可視化]：上級], [#strong[キーワード]：Tableau、Power BI、Looker Studio、matplotlib、ggplot2])

#grid(columns: (1fr, auto), align: (left, right), [#strong[ビジネスインテリジェンス]：上級], [#strong[キーワード]：KPI管理、マーケティング分析、顧客セグメンテーション、A\/Bテスト])

#grid(columns: (1fr, auto), align: (left, right), [#strong[機械学習]：中級], [#strong[キーワード]：scikit\-learn、回帰分析、クラスタリング、意思決定木])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[社内データ分析コンテスト 最優秀賞][][株式会社インサイト][2022年12月]
購買データを用いた顧客離反予測モデルを提案し、社内のビジネスコンテストで最優秀賞を受賞。
]

= 資格・免状
#resume-pad[
#resume-subheading[統計検定2級][#link("https://www.toukei-kentei.jp/")[https\:\/\/www\.toukei\-kentei\.jp\/]][日本統計学会][2022年6月]

#resume-subheading[Google Data Analytics Professional Certificate][#link("https://www.coursera.org/professional-certificates/google-data-analytics")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-data\-analytics]][Google][2021年3月]
]

= 出版・著作
#resume-pad[
#resume-subheading[データドリブンマーケティングの実践\: 小売業における顧客セグメント分析][#link("https://misaki-sato.dev/articles/data-driven-marketing")[https\:\/\/misaki\-sato\.dev\/articles\/data\-driven\-marketing]][社内テクニカルレポート][2023年11月]
小売業の購買データを活用した顧客セグメンテーションの実践手法をまとめた。RFM分析とクラスタリングを組み合わせたアプローチを紹介。
]

= プロジェクト
#resume-pad[
#resume-subheading[EC売上予測ダッシュボード][#link("https://misaki-sato.dev/projects/ec-sales-forecast")[https\:\/\/misaki\-sato\.dev\/projects\/ec\-sales\-forecast]][ECサイトの売上予測モデルと可視化ダッシュボードを開発。][2023年1月～2023年6月]
- 過去3年分の売上データを基に、季節性を考慮した予測モデルを構築
- StreamlitとPlotlyを用いて、担当者が簡単に予測を確認できるダッシュボードを提供
- 在庫計画やプロモーション効果の事前検証に貢献
#strong[キーワード]：Python、Streamlit、Plotly、時系列分析

#resume-subheading[顧客セグメンテーション分析][#link("https://misaki-sato.dev/projects/segmentation")[https\:\/\/misaki\-sato\.dev\/projects\/segmentation]][購買履歴を基にした顧客セグメンテーションの分析プロジェクト。][2022年4月～2022年9月]
- RFM分析とk\-meansクラスタリングを組み合わせて顧客を分類
- セグメントごとの特徴を分析し、マーケティング施策の提案につなげた
- リピート率向上に向けた施策の優先順位付けを支援
#strong[キーワード]：RFM分析、k\-means、Tableau、マーケティング
]

= 興味・関心
#resume-pad[
#strong[ランニング]：マラソン、トレーニング

#strong[読書]：データサイエンス、ビジネス書

#strong[データ可視化コミュニティ]：勉強会、ハンズオン
]

= ボランティア活動
#resume-pad[
#resume-subheading[データ分析ボランティア][#link("https://www.data-support-npo.example.org")[https\:\/\/www\.data\-support\-npo\.example\.org]][NPO法人 データ支援ネット][2022年4月～現在]
- 非営利団体向けに、アンケート集計や業務改善のためのデータ分析を支援
- 事務局メンバー向けにExcelや可視化ツールの使い方研修を実施
]