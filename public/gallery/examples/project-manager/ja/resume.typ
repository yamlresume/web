#set document(
  title: "佐藤 健一 - シニアプロジェクトマネージャー | ITシステム開発・DX推進",
  author: "佐藤 健一",
  keywords: "プロジェクトマネジメント, 開発手法, ツール, 技術リテラシー",
  description: "Résumé of 佐藤 健一",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[佐藤 健一]] #v(-0.2em)

#text(size: 1.44em)[シニアプロジェクトマネージャー | ITシステム開発・DX推進]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:kenichi.sato@example.com")[kenichi\.sato\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://kenichi-sato.example.com")[https\:\/\/kenichi\-sato\.example\.com]

日本、東京都、渋谷区、東京都渋谷区渋谷2\-14\-5 ネクサスビル8F、150\-0002

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/kenichi-sato-pm")[kenichi\-sato\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/kenichisato-pm")[kenichisato\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/kenichi_pm")[kenichi\_pm]
]

= 基本情報

#resume-pad[
IT業界で12年以上の実務経験を持ち、そのうち7年間はプロジェクトマネージャーとして基幹系システムの企画・開発・刷新をリードしてきました。

- ウォーターフォールとアジャイルの両手法に精通し、案件特性に応じたハイブリッド型マネジメントを実践
- 最大50名規模の多国籍チームを統括し、予算・スケジュール・品質・リスクを一貫してマネジメント
- 経営層と開発現場をつなぐ橋渡し役として、ステークホルダー間の合意形成と意思決定の迅速化を推進
- PMBOKおよびスクラムのベストプラクティスを組み合わせ、継続的なプロセス改善とPM人材育成を主導
]

= 学歴
#resume-pad[
#resume-subheading[慶應義塾大学大学院][#link("https://www.keio.ac.jp/")[https\:\/\/www\.keio\.ac\.jp\/]][修士、経営管理研究科 経営管理専攻（MBA）、成績：3\.8][2010年4月～2012年3月]
- プロジェクトの ROI 評価とポートフォリオマネジメントを中心に研究
- 修了研究では「IT投資プロジェクトの成功率を高めるガバナンス設計」をテーマに事例分析を実施
- 社会人学生とのグループワークを通じ、部門横断のリーダーシップとファシリテーション力を習得
#strong[コース]：プロジェクトマネジメント特論、オペレーションズ・マネジメント、企業財務と投資評価、組織行動論、情報システム戦略、データ分析と意思決定

#resume-subheading[東京理科大学][#link("https://www.tus.ac.jp/")[https\:\/\/www\.tus\.ac\.jp\/]][学士、工学部 情報工学科、成績：3\.6][2006年4月～2010年3月]
- ソフトウェア開発の基礎とシステム設計の考え方を体系的に習得
- 卒業研究として業務プロセス可視化ツールの設計・開発に取り組む
#strong[コース]：ソフトウェア工学、データベースシステム、アルゴリズムとデータ構造、オペレーティングシステム、ネットワーク工学、経営情報システム
]

= 職歴
#resume-pad[
#resume-subheading[シニアプロジェクトマネージャー][#link("https://www.next-solutions.example.com")[https\:\/\/www\.next\-solutions\.example\.com]][株式会社ネクストソリューションズ][2021年4月～現在]
- 金融・製造業向けの基幹システム刷新プロジェクトを同時に6件統括し、総額18億円の予算を管理
- 見積り・WBS策定・進捗管理・課題管理のプロセスを標準化し、納期遵守率を82%から96%へ改善
- 経営層向けの月次レポートとステアリングコミッティを運営し、意思決定のリードタイムを平均2週間短縮
- 若手PM5名のメンタリングを担当し、社内PMOの育成プログラムを設計・運用
- ベンダー選定と契約交渉を主導し、外部委託コストを年間約12%削減
#strong[キーワード]：プロジェクトマネジメント、予算管理、ステークホルダー管理、PMO、リスク管理

#resume-subheading[プロジェクトマネージャー][#link("https://www.mediacreate.example.co.jp")[https\:\/\/www\.mediacreate\.example\.co\.jp]][株式会社メディアクリエイト][2017年4月～2021年3月]
- ECサイトのリニューアル案件を年間3〜4件、20名規模のチームで完遂
- スクラムを導入し、スプリントレビューとレトロスペクティブを定着させてリリース頻度を月1回から隔週へ向上
- 要件定義から受入テストまでを一貫して管理し、本番障害件数を前期比60%削減
- 海外拠点のエンジニアと協働し、時差を考慮した開発プロセスとドキュメント運用を整備
- 顧客満足度アンケートで3年連続「非常に満足」評価を獲得
#strong[キーワード]：スクラム、要件定義、品質保証、ベンダーマネジメント

#resume-subheading[システムエンジニア \/ サブリーダー][#link("https://www.mediacreate.example.co.jp")[https\:\/\/www\.mediacreate\.example\.co\.jp]][株式会社メディアクリエイト][2012年4月～2017年3月]
- 業務系Webアプリケーションの設計・開発・保守を担当し、Java と Oracle を用いた基盤構築を経験
- 5名の開発チームのサブリーダーとして、タスク割当とコードレビューを実施
- 運用保守フェーズの問い合わせ対応フローを整備し、一次対応時間を平均40%短縮
- 新人エンジニア3名のOJTトレーナーを担当
#strong[キーワード]：Java、Oracle、詳細設計、保守運用
]

= 言語
#resume-pad[
#strong[日本語]：ネイティブ・母国語レベル

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 935、海外ベンダー折衝])

#grid(columns: (1fr, auto), align: (left, right), [#strong[中国語]：限定的な実務レベル], [#strong[キーワード]：HSK 4級])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[プロジェクトマネジメント]：エキスパート], [#strong[キーワード]：計画策定、予算管理、リスク管理、品質管理、変更管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[開発手法]：上級], [#strong[キーワード]：スクラム、ウォーターフォール、カンバン、DevOps、CI\/CD])

#grid(columns: (1fr, auto), align: (left, right), [#strong[ツール]：上級], [#strong[キーワード]：Jira、Confluence、MS Project、Tableau、Slack])

#grid(columns: (1fr, auto), align: (left, right), [#strong[技術リテラシー]：中級], [#strong[キーワード]：SQL、Python、AWS、Git、REST API])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[年間最優秀プロジェクト賞][][株式会社ネクストソリューションズ][2022年12月]
基幹システム刷新プロジェクトにおいて、予算内・予定通りでの完遂と顧客満足度の大幅な向上が評価され受賞。

#resume-subheading[社長表彰（業務改善貢献）][][株式会社メディアクリエイト][2019年12月]
アジャイル開発プロセスの全社展開を主導し、リリース頻度の向上と障害件数の削減に貢献した功績により受賞。
]

= 資格・免状
#resume-pad[
#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][2018年6月]

#resume-subheading[PMI Agile Certified Practitioner (PMI\-ACP)][#link("https://www.pmi.org/certifications/agile-acp")[https\:\/\/www\.pmi\.org\/certifications\/agile\-acp]][Project Management Institute][2020年11月]

#resume-subheading[応用情報技術者試験][#link("https://www.ipa.go.jp/shiken/")[https\:\/\/www\.ipa\.go\.jp\/shiken\/]][情報処理推進機構（IPA）][2013年12月]
]

= 出版・著作
#resume-pad[
#resume-subheading[ハイブリッド型プロジェクトマネジメントの実践と教訓][#link("https://www.pmi-japan.example.org/journal")[https\:\/\/www\.pmi\-japan\.example\.org\/journal]][PMI日本支部 機関誌][2023年9月]
- ウォーターフォールとアジャイルを組み合わせた運用手法について、実案件のデータを基に考察
- 大規模組織におけるガバナンス設計とステークホルダー合意形成の要点を整理
- プロジェクト成功率を高めるための実践的なチェックリストを提示
]

= プロジェクト
#resume-pad[
#resume-subheading[基幹業務システムのクラウド移行プロジェクト][#link("https://www.next-solutions.example.com/cases/cloud-migration")[https\:\/\/www\.next\-solutions\.example\.com\/cases\/cloud\-migration]][オンプレミスで運用していた基幹業務システムをAWSへ段階的に移行するプロジェクト][2022年5月～2023年10月]
- 総額6億円・関係者80名規模のプロジェクトを統括し、計画通りに本番稼働を完了
- 移行リスクを洗い出して段階的なカットオーバー計画を策定し、本番障害ゼロを達成
- 運用保守体制の内製化を推進し、インフラ運用コストを年間25%削減
#strong[キーワード]：クラウド移行、AWS、カットオーバー、コスト最適化

#resume-subheading[全社アジャイル導入支援プロジェクト][#link("https://www.mediacreate.example.co.jp/cases/agile")[https\:\/\/www\.mediacreate\.example\.co\.jp\/cases\/agile]][開発部門全体へスクラムを導入し、開発プロセスを刷新する社内変革プロジェクト][2019年1月～2020年12月]
- 5チーム・約40名を対象にスクラムの研修とコーチングを実施
- リリース頻度を月1回から隔週へ、本番障害件数を60%削減
- 導入効果を定量指標で可視化し、経営層への定期報告を実施
#strong[キーワード]：スクラム、組織変革、コーチング、KPI設計
]

= 興味・関心
#resume-pad[
#strong[スポーツ]：フルマラソン、水泳、サイクリング

#strong[読書]：経営戦略、組織論、テクノロジー

#strong[写真]：街歩きスナップ、旅行記録
]

= ボランティア活動
#resume-pad[
#resume-subheading[キャリアメンター][#link("https://www.it-education-support.example.org")[https\:\/\/www\.it\-education\-support\.example\.org]][NPO法人IT教育支援協会][2019年9月～現在]
- 就職・転職を目指す若年層に対して、IT業界のキャリア相談と面接対策を月2回実施
- プロジェクトマネジメント入門講座の講師を年4回担当し、延べ120名以上が受講
- 協会の運営ボランティアとして、講座カリキュラムの見直しと改善提案を担当
]