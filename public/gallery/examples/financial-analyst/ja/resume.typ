#set document(
  title: "高橋 健司 - 財務分析 / FP&A / 企業価値評価",
  author: "高橋 健司",
  keywords: "財務分析, データ分析, 会計・報告, コミュニケーション",
  description: "Résumé of 高橋 健司",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[高橋 健司]] #v(-0.2em)

#text(size: 1.44em)[財務分析 \/ FP&A \/ 企業価値評価]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kenji.takahashi.finance@example.jp")[kenji\.takahashi\.finance\@example\.jp] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/kenji-takahashi-finance")[https\:\/\/www\.linkedin\.com\/in\/kenji\-takahashi\-finance]

日本、東京都、千代田区、東京都千代田区丸の内1\-2\-3、100\-0005

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kenji-takahashi-finance")[kenji\-takahashi\-finance] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/kenji_fpna")[kenji\_fpna]
]

= 基本情報

#resume-pad[
- 企業価値評価とFP&Aを専門とする財務アナリスト。7年以上の実務経験を通じ、予算策定、業績管理、M&Aデューデリジェンス、経営層向け報告資料の作成に従事。
- 財務モデリングとデータ分析を組み合わせ、経営判断に資する示唆を提供。Excel、SQL、Power BI、Pythonを活用した分析基盤の改善に強み。
- 銀行および事業会社での経験を活かし、会計・財務・事業部門の橋渡しを推進。日本語と英語でのコミュニケーションが可能。
]

= 学歴
#resume-pad[
#resume-subheading[一橋大学][#link("https://www.hit-u.ac.jp/")[https\:\/\/www\.hit\-u\.ac\.jp\/]][学士、商学部金融学科、成績：3\.7\/4\.0][2014年4月～2018年3月]
- 財務会計、コーポレートファイナンス、統計学を中心に履修
- ゼミナールで企業価値評価と資本市場の研究に従事
- グループワークを通じて財務分析とプレゼンテーション能力を養成
#strong[コース]：財務会計、管理会計、コーポレートファイナンス、投資理論、統計学、計量経済学、企業価値評価、資本市場論
]

= 職歴
#resume-pad[
#resume-subheading[シニア・ファイナンシャル・アナリスト][][みらいキャピタル株式会社][2021年4月～現在]
- 中期経営計画の策定支援として、部門別予算と5カ年財務モデルを構築し、経営会議向けのシナリオ分析を実施
- M&A案件において対象企業の財務デューデリジェンス、バリュエーション、PMI初期計画の策定を担当
- 月次・四半期の業績管理を高度化し、KPIダッシュボードと差異分析レポートを経営層へ提供
- 事業部門と連携して収益改善施策の定量評価を行い、原価低減と価格最適化の意思決定を支援
- 若手アナリスト2名の育成を担当し、財務モデリングの品質基準とレビュー体制を整備
#strong[キーワード]：財務モデリング、M&A、予算管理、FP&A、経営報告

#resume-subheading[ファイナンシャル・アナリスト][][東都銀行][2019年1月～2021年3月]
- 法人融資案件の信用分析、財務諸表分析、返済能力評価を担当
- 業種別のリスク要因を整理し、与信判断に必要な分析レポートを作成
- 融資先の月次モニタリングを設計し、早期警戒指標の可視化を推進
- Excel VBAとSQLを用いた集計業務の自動化により、月次作業時間を約40%削減
#strong[キーワード]：信用分析、融資審査、Excel、SQL、Power BI

#resume-subheading[アナリスト][][サクラ会計事務所][2018年4月～2018年12月]
- 上場企業および中小企業の財務諸表分析、監査支援、税務申告補助を担当
- 経理担当者へのヒアリングを通じて、改善提案と内部統制の整備を支援
- 決算整理仕訳の確認と分析資料の作成を実施
#strong[キーワード]：財務諸表分析、監査支援、IFRS、税務
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：日本語、ビジネス文書])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 920、英語財務報告、海外ステークホルダー対応])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[財務分析]：エキスパート], [#strong[キーワード]：財務モデリング、DCF法、企業価値評価、予算策定、差異分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[データ分析]：上級], [#strong[キーワード]：Excel、SQL、Power BI、Python、Tableau])

#grid(columns: (1fr, auto), align: (left, right), [#strong[会計・報告]：上級], [#strong[キーワード]：IFRS、JGAAP、連結決算、管理会計])

#grid(columns: (1fr, auto), align: (left, right), [#strong[コミュニケーション]：上級], [#strong[キーワード]：経営層向け報告資料作成、ステークホルダー調整、英語プレゼンテーション、チーム育成])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[優秀プロジェクト賞][][みらいキャピタル株式会社][2023年12月]
M&Aデューデリジェンスと買収後統合計画の定量分析が高く評価され、経営企画部門より表彰。
]

= 資格・免状
#resume-pad[
#resume-subheading[CFAレベル2合格][#link("https://www.cfainstitute.org/")[https\:\/\/www\.cfainstitute\.org\/]][CFA協会][2022年2月]

#resume-subheading[日商簿記1級][][日本商工会議所][2017年11月]

#resume-subheading[FMVA（財務モデリング・バリュエーション・アナリスト）][#link("https://corporatefinanceinstitute.com/")[https\:\/\/corporatefinanceinstitute\.com\/]][コーポレート・ファイナンス・インスティテュート][2020年6月]
]

= 出版・著作
#resume-pad[
#resume-subheading[国内製薬業界のM&A動向と企業価値評価][#link("https://www.example.com/research/pharma-ma-valuation")[https\:\/\/www\.example\.com\/research\/pharma\-ma\-valuation]][みらいキャピタル調査部][2023年10月]
- 国内製薬企業のM&A事例を対象に、シナジー評価とバリュエーション手法を比較分析
- 創薬パイプラインの価値評価におけるリスク調整アプローチを整理
- 経営企画・事業開発部門向けに、案件検討時の実務示唆を提供
]

= プロジェクト
#resume-pad[
#resume-subheading[FP&Aダッシュボード刷新プロジェクト][#link("https://www.example.com/projects/fpa-dashboard")[https\:\/\/www\.example\.com\/projects\/fpa\-dashboard]][経営層と事業部門向けに、予算・実績・予測を一元管理するFP&Aダッシュボードを再構築][2023年1月～2023年6月]
- 部門別の予算消化率、売上・利益の差異要因、キャッシュフロー予測を可視化
- SQLによるデータ整備とPower BIによるレポート自動更新を設計
- 経営会議の意思決定に必要な分析リードタイムを従来比で約50%短縮
#strong[キーワード]：FP&A、Power BI、SQL、予算管理、可視化
]

= 興味・関心
#resume-pad[
#strong[読書]：企業価値評価、経済史、英語ビジネス書

#strong[スポーツ]：テニス、ランニング、登山

#strong[金融教育]：金融リテラシー、コミュニティ活動
]

= ボランティア活動
#resume-pad[
#resume-subheading[金融リテラシー講師][#link("https://www.example.com/volunteer/financial-literacy")[https\:\/\/www\.example\.com\/volunteer\/financial\-literacy]][NPO法人金融教育推進ネットワーク][2022年9月～現在]
- 高校生・大学生向けに、家計管理、資産形成、投資の基礎をテーマとしたワークショップを実施
- 教材作成とグループディスカッションのファシリテーションを担当
- 参加者アンケートの分析をもとに、講座内容の改善を継続
]