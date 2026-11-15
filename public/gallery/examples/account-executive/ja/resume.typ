#set document(
  title: "佐藤 美咲 - 法人SaaS営業のアカウントエグゼクティブ",
  author: "佐藤 美咲",
  keywords: "法人営業, SaaSソリューション, プレゼンテーション, プロジェクトマネジメント",
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

#text(size: 1.44em)[法人SaaS営業のアカウントエグゼクティブ]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:misaki.sato@example.co.jp")[misaki\.sato\@example\.co\.jp] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://misaki-sato.example.com")[https\:\/\/misaki\-sato\.example\.com]

日本、東京都、千代田区、東京都千代田区丸の内1\-1\-1、100\-0005

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/misaki-sato")[misaki\-sato] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/misaki_sato_sales")[misaki\_sato\_sales]
]

= 基本情報

#resume-pad[
- 法人向けSaaS営業で7年以上の経験を持つアカウントエグゼクティブ
- エンタープライズ企業を中心に、新規開拓からクロージング、顧客成功まで一貫して担当
- 年間売上目標を120%達成し、複数回の最優秀営業賞を受賞
- データに基づく商談設計と、経営層との関係構築を得意とする
]

= 学歴
#resume-pad[
#resume-subheading[慶應義塾大学][#link("https://www.keio.ac.jp/")[https\:\/\/www\.keio\.ac\.jp\/]][学士、経済学部経済学科、成績：3\.7][2014年4月～2018年3月]
- 経済学と経営学を中心に、市場分析と企業戦略の基礎を修得
- ゼミではB2Bマーケティングを研究し、企業への提案を実施
- 交換留学で英語によるディスカッションとプレゼンテーションを経験
#strong[コース]：マーケティング論、消費者行動論、企業戦略論、会計学、統計学、交渉学、ビジネス英語、組織行動論
]

= 職歴
#resume-pad[
#resume-subheading[シニアアカウントエグゼクティブ][#link("https://www.cloudsales.example.co.jp")[https\:\/\/www\.cloudsales\.example\.co\.jp]][株式会社クラウドセールス][2021年4月～現在]
- エンタープライズ向けSaaSの新規開拓営業を担当し、年間売上目標を120%達成
- 経営層への提案からPoC、契約交渉までをリードし、大型案件を複数成約
- 顧客成功チームと連携し、オンボーディングとアップセルを推進
- 若手営業のメンターとして商談スキル向上を支援
#strong[キーワード]：SaaS、法人営業、エンタープライズ、新規開拓、クロージング、顧客成功

#resume-subheading[アカウントエグゼクティブ][#link("https://www.databridge.example.co.jp")[https\:\/\/www\.databridge\.example\.co\.jp]][株式会社データブリッジ][2018年4月～2021年3月]
- 中堅・中小企業向けにデータ分析ツールの営業を担当
- インサイドセールスとフィールドセールスを兼任し、商談数を3倍に拡大
- CRMを活用したパイプライン管理と営業プロセスの改善を推進
- 顧客の課題ヒアリングに基づく提案で、解約率を15%削減
#strong[キーワード]：データ分析、CRM、パイプライン管理、提案営業、課題解決
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：ビジネス日本語、母国語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 950、ビジネス交渉])

#grid(columns: (1fr, auto), align: (left, right), [#strong[中国語]：限定的な実務レベル], [#strong[キーワード]：HSK 4級、日常会話])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[法人営業]：エキスパート], [#strong[キーワード]：新規開拓、商談設計、クロージング、顧客関係構築、アップセル])

#grid(columns: (1fr, auto), align: (left, right), [#strong[SaaSソリューション]：上級], [#strong[キーワード]：Salesforce、HubSpot、KPI管理、データ分析、提案資料作成])

#grid(columns: (1fr, auto), align: (left, right), [#strong[プレゼンテーション]：上級], [#strong[キーワード]：経営層向け提案、デモ、交渉、ファシリテーション])

#grid(columns: (1fr, auto), align: (left, right), [#strong[プロジェクトマネジメント]：中級], [#strong[キーワード]：ステークホルダー管理、スケジュール管理、リスク管理])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[年間最優秀営業賞][][株式会社クラウドセールス][2023年12月]
年間売上目標を120%達成し、新規顧客獲得数が全社1位。エンタープライズ案件の成約額でも最高記録を更新。

#resume-subheading[四半期MVP][][株式会社クラウドセールス][2022年6月]
第2四半期において、パイプライン創出額と成約率が全営業部門でトップ。
]

= 資格・免状
#resume-pad[
#resume-subheading[Salesforce認定アドミニストレーター][#link("https://trailhead.salesforce.com/credentials/administrator")[https\:\/\/trailhead\.salesforce\.com\/credentials\/administrator]][Salesforce][2022年6月]

#resume-subheading[TOEIC Listening & Reading 950][#link("https://www.iibc-global.org/english/toeic.html")[https\:\/\/www\.iibc\-global\.org\/english\/toeic\.html]][IIBC][2020年11月]
]

= 出版・著作
#resume-pad[
#resume-subheading[法人SaaS営業における顧客成功指標の設計][#link("https://example.com/journal/sales-cs")[https\:\/\/example\.com\/journal\/sales\-cs]][日本セールス研究ジャーナル][2022年8月]
- 顧客成功指標と営業KPIの連携方法を提案
- 解約率低下とアップセル率向上の実践事例を分析
]

= 推薦人
#resume-pad[
#resume-subheading[田中 一郎][株式会社クラウドセールス 営業部長][ichiro\.tanaka\@cloudsales\.example\.co\.jp][\+81 3\-1234\-5678]
佐藤美咲は卓越した営業スキルと顧客志向を持ち、組織に大きな貢献をもたらしました。どんなチームでも即戦力として活躍できる人材です。
]

= プロジェクト
#resume-pad[
#resume-subheading[エンタープライズ向けCRM導入プロジェクト][#link("https://www.cloudsales.example.co.jp/projects/crm")[https\:\/\/www\.cloudsales\.example\.co\.jp\/projects\/crm]][大手製造業向けにCRMを導入し、営業プロセスを標準化するプロジェクト][2023年1月～2023年8月]
- 顧客の営業部門と連携し、要件定義から運用定着までをリード
- 導入後に商談サイクルを30%短縮し、受注率を15%向上
- チェンジマネジメントを推進し、現場の利用率を90%以上に向上
#strong[キーワード]：CRM、要件定義、チェンジマネジメント、営業プロセス
]

= 興味・関心
#resume-pad[
#strong[スポーツ]：テニス、ランニング、登山

#strong[読書]：ビジネス書、歴史小説、経済学
]

= ボランティア活動
#resume-pad[
#resume-subheading[メンター][#link("https://example.org/next-leaders")[https\:\/\/example\.org\/next\-leaders]][一般社団法人次世代リーダー育成協会][2022年4月～現在]
- 大学生向けに営業スキルとキャリア形成のワークショップを開催
- 年間10回のメンタリングセッションを担当
]