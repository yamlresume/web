#set document(
  title: "佐藤 美咲 - 人事マネージャー | 組織開発・人材育成の専門家",
  author: "佐藤 美咲",
  keywords: "人事戦略, 労務管理, データ分析, コミュニケーション",
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

#text(size: 1.44em)[人事マネージャー | 組織開発・人材育成の専門家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:misaki.sato@example.com")[misaki\.sato\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.misaki-sato-hr.com")[https\:\/\/www\.misaki\-sato\-hr\.com]

日本、東京、東京都、千代田区千代田1\-1、100\-0001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/misaki-sato-hr")[misaki\-sato\-hr] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/misaki_hr")[misaki\_hr]
]

= 基本情報

#resume-pad[
- 人事歴10年以上の経験を持つ人事マネージャー。採用から育成、評価制度の設計・運用まで幅広く担当。
- 組織開発とエンゲージメント向上に注力し、データドリブンな人事施策を推進。
- グローバル環境での人事業務経験あり。英語でのコミュニケーションも可能。
- 労働法や社会保険に関する深い知識を持ち、労務リスク管理にも強み。
]

= 学歴
#resume-pad[
#resume-subheading[青山学院大学][#link("https://www.aoyama.ac.jp")[https\:\/\/www\.aoyama\.ac\.jp]][学士、経営学部 マネジメント学科、成績：3\.8\/4\.0][2010年4月～2014年3月]
- 人事管理や組織行動学を中心に履修し、理論と実践の両面から人材マネジメントを学ぶ
- ゼミでは企業の人事制度に関する研究を行い、卒業論文を執筆
- 学内のキャリア支援ボランティアに参加し、学生の就職活動をサポート
#strong[コース]：人事管理論、組織行動学、労働法、産業心理学、統計学、マーケティング
]

= 職歴
#resume-pad[
#resume-subheading[人事マネージャー][#link("https://www.tech-sol.co.jp")[https\:\/\/www\.tech\-sol\.co\.jp]][株式会社テクノロジーソリューションズ][2020年1月～現在]
- 人事部門のマネージャーとして、採用・育成・評価・労務の全般を統括
- 年間50名以上の採用をリードし、採用プロセスの効率化と候補者体験の向上を実現
- 新評価制度（OKR＋360度評価）を設計・導入し、組織のパフォーマンスを向上
- 従業員エンゲージメント調査を実施し、離職率を15%低減
- 労務管理のデジタル化を推進し、業務効率を30%改善
#strong[キーワード]：採用、育成、評価制度、労務管理、組織開発

#resume-subheading[人事スペシャリスト][#link("https://www.global-shoji.co.jp")[https\:\/\/www\.global\-shoji\.co\.jp]][株式会社グローバル商事][2014年4月～2019年12月]
- 新卒・中途採用を担当し、年間30名以上の採用を実現
- 研修プログラムの企画・運営を行い、新入社員の早期戦力化を支援
- 給与計算・社会保険手続きなどの労務業務を正確かつ迅速に処理
- 人事データの分析を行い、経営層へのレポーティングを実施
#strong[キーワード]：採用、研修、給与計算、社会保険
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：漢字検定1級、日本語教育能力検定])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 950、英検1級])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[人事戦略]：エキスパート], [#strong[キーワード]：採用計画、人材育成、組織設計、パフォーマンス管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[労務管理]：上級], [#strong[キーワード]：労働法、社会保険、給与計算、就業規則])

#grid(columns: (1fr, auto), align: (left, right), [#strong[データ分析]：中級], [#strong[キーワード]：Excel、HR分析、統計])

#grid(columns: (1fr, auto), align: (left, right), [#strong[コミュニケーション]：エキスパート], [#strong[キーワード]：交渉、プレゼンテーション、ファシリテーション])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[年間最優秀人事賞][][株式会社テクノロジーソリューションズ][2022年12月]
人事改革プロジェクトのリーダーとして、採用・育成・評価制度の刷新に貢献し、組織のエンゲージメントスコアを20%向上させた。
]

= 資格・免状
#resume-pad[
#resume-subheading[社会保険労務士][#link("https://www.mhlw.go.jp")[https\:\/\/www\.mhlw\.go\.jp]][厚生労働省][2018年8月]

#resume-subheading[キャリアコンサルタント][#link("https://www.mhlw.go.jp")[https\:\/\/www\.mhlw\.go\.jp]][厚生労働省][2019年11月]
]

= 出版・著作
#resume-pad[
#resume-subheading[次世代人事戦略：データドリブンな人材マネジメント][#link("https://www.jinji-bu.jp")[https\:\/\/www\.jinji\-bu\.jp]][日本の人事部][2023年6月]
人事データ分析を活用した採用・育成の最適化について寄稿。データに基づく意思決定の重要性と具体的な手法を解説。
]

= プロジェクト
#resume-pad[
#resume-subheading[人事評価システム刷新プロジェクト][#link("https://www.tech-sol.co.jp/projects/hr-system")[https\:\/\/www\.tech\-sol\.co\.jp\/projects\/hr\-system]][プロジェクトの詳細説明。評価制度の設計からシステム選定、運用開始までを一貫して担当。][2022年4月～2023年3月]
評価制度の見直しとシステム導入をリード。360度評価とOKRを組み合わせた新評価制度を設計し、クラウド人事システムを導入。
#strong[キーワード]：評価制度、人事システム、プロジェクトマネジメント
]

= 興味・関心
#resume-pad[
#strong[読書]：ビジネス書、心理学、歴史小説

#strong[旅行]：国内旅行、海外旅行、温泉

#strong[ヨガ]：ヨガインストラクター資格、瞑想
]

= ボランティア活動
#resume-pad[
#resume-subheading[キャリアアドバイザー][#link("https://www.example-npo.org")[https\:\/\/www\.example\-npo\.org]][NPO法人 若者キャリア支援協会][2019年4月～現在]
大学生や若年求職者向けのキャリア相談を実施。履歴書添削や面接対策を通じて、就職活動を支援。
]