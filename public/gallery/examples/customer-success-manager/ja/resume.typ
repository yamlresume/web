#set document(
  title: "佐藤 美咲 - カスタマーサクセスマネージャー | SaaS導入支援と顧客成長の推進",
  author: "佐藤 美咲",
  keywords: "カスタマーサクセス, データ分析, プロジェクト管理, コミュニケーション",
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

#text(size: 1.44em)[カスタマーサクセスマネージャー | SaaS導入支援と顧客成長の推進]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:misaki.sato@example.com")[misaki\.sato\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://example.com/misaki-sato")[https\:\/\/example\.com\/misaki\-sato]

日本、東京都、渋谷区、東京都渋谷区神南1\-2\-3、150\-0001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/misaki-sato-csm")[misaki\-sato\-csm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/misaki_csm")[misaki\_csm]
]

= 基本情報

#resume-pad[
- SaaS企業で5年以上のカスタマーサクセス経験を持ち、導入支援から定着支援、更新・アップセルまで一貫して担当
- 顧客のビジネス目標を理解し、プロダクト活用を通じた成果創出を支援
- データ分析に基づくヘルススコア設計とチャーン防止施策の立案・実行が強み
- クロスファンクショナルなチームと連携し、顧客の声をプロダクト改善に還元
- 日本語と英語でのコミュニケーションが可能で、グローバル顧客にも対応
]

= 学歴
#resume-pad[
#resume-subheading[早稲田大学][#link("https://www.waseda.jp")[https\:\/\/www\.waseda\.jp]][学士、経営学、成績：3\.7\/4\.0][2014年4月～2018年3月]
- 経営学を専攻し、マーケティングと組織マネジメントを中心に学習
- データ分析や消費者行動の授業を通じて、顧客理解の基礎を習得
- グループワークやプレゼンテーションで協働と発信力を養成
#strong[コース]：マーケティング戦略、経営組織論、消費者行動論、データ分析入門、ビジネスコミュニケーション、国際経営
]

= 職歴
#resume-pad[
#resume-subheading[シニアカスタマーサクセスマネージャー][#link("https://cloudconnect.example.jp")[https\:\/\/cloudconnect\.example\.jp]][株式会社クラウドコネクト][2021年4月～現在]
- エンタープライズ顧客30社以上を担当し、導入支援から定着、更新、アップセルまで一貫して推進
- 顧客のKPIに基づく成功計画を策定し、四半期ビジネスレビュー（QBR）を主導
- ヘルススコアを再設計し、チャーンリスクの早期検知と proactive な支援を実現
- プロダクトチームと連携し、顧客要望を機能改善に反映
- 年間契約更新率を92%から96%へ改善し、アップセル収益を前年比130%に拡大
#strong[キーワード]：カスタマーサクセス、導入支援、更新管理、アップセル、QBR、チャーン防止

#resume-subheading[カスタマーサクセスマネージャー][#link("https://supporttech.example.jp")[https\:\/\/supporttech\.example\.jp]][株式会社サポートテック][2018年4月～2021年3月]
- 中小規模顧客100社以上を担当し、オンボーディングと活用支援を実施
- 顧客向けトレーニングやウェビナーを企画・運営し、プロダクト利用率を向上
- 顧客満足度調査を分析し、サポート品質改善とナレッジベース整備に貢献
- 解約予兆のある顧客へのリテンション施策を立案し、更新率を88%から93%へ改善
#strong[キーワード]：オンボーディング、活用支援、リテンション、トレーニング、顧客満足度

#resume-subheading[カスタマーサポート担当][#link("https://globalsolutions.example.jp")[https\:\/\/globalsolutions\.example\.jp]][株式会社グローバルソリューションズ][2016年4月～2018年3月]
- 法人顧客からの問い合わせ対応を通じて、プロダクトの機能理解と課題解決を支援
- 問い合わせデータを分析し、FAQやマニュアルの改善を提案
- サポートチーム内のナレッジ共有を促進し、対応時間の短縮に貢献
#strong[キーワード]：カスタマーサポート、問い合わせ対応、ナレッジ管理、課題解決
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：母国語、ビジネス文書、プレゼンテーション])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 920、ビジネス会話、英文メール、海外顧客対応])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[カスタマーサクセス]：エキスパート], [#strong[キーワード]：オンボーディング、導入支援、顧客関係構築、チャーン防止、アップセル、更新管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[データ分析]：上級], [#strong[キーワード]：Salesforce、Tableau、SQL、Excel、KPI設計、ヘルススコア])

#grid(columns: (1fr, auto), align: (left, right), [#strong[プロジェクト管理]：上級], [#strong[キーワード]：Asana、Jira、Notion、Slack、進行管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[コミュニケーション]：エキスパート], [#strong[キーワード]：プレゼンテーション、折衝、ファシリテーション、英語、日本語])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[年間最優秀カスタマーサクセスマネージャー][][株式会社クラウドコネクト][2023年12月]
顧客満足度と更新率の向上、およびアップセル収益の拡大に貢献した功績により表彰。

#resume-subheading[社長賞][][株式会社サポートテック][2020年12月]
大手顧客のチャーン防止プロジェクトをリードし、年間契約更新率を93%まで改善した功績により受賞。
]

= 資格・免状
#resume-pad[
#resume-subheading[Salesforce 認定アドミニストレーター][#link("https://trailhead.salesforce.com/credentials/administrator")[https\:\/\/trailhead\.salesforce\.com\/credentials\/administrator]][Salesforce][2022年6月]

#resume-subheading[HubSpot インバウンドセールス認定][#link("https://academy.hubspot.com/certification")[https\:\/\/academy\.hubspot\.com\/certification]][HubSpot][2021年9月]

#resume-subheading[ITIL 4 Foundation][#link("https://www.axelos.com/certifications/itil-certifications")[https\:\/\/www\.axelos\.com\/certifications\/itil\-certifications]][AXELOS][2020年3月]
]

= 出版・著作
#resume-pad[
#resume-subheading[SaaSにおけるカスタマーサクセス指標の設計][#link("https://example.com/articles/customer-success-kpi")[https\:\/\/example\.com\/articles\/customer\-success\-kpi]][テックビジネスジャーナル][2023年8月]
- カスタマーサクセスにおけるKPI設計の考え方とヘルススコア活用事例を解説
- チャーン予測とアップセル機会の可視化による収益貢献の可能性を提示
- 顧客セグメント別の成功指標の違いと運用上の注意点を整理
]

= プロジェクト
#resume-pad[
#resume-subheading[顧客ヘルススコア改善プロジェクト][#link("https://example.com/projects/health-score")[https\:\/\/example\.com\/projects\/health\-score]][顧客データを活用したヘルススコアモデルの再設計][2023年1月～2023年12月]
- 利用頻度、サポート問い合わせ、NPSなどのデータを統合し、チャーン予測精度を向上
- リスク顧客に対する自動アラートと担当者アクションの標準化を実施
- プロジェクト完了後、解約率を前年比20%削減
#strong[キーワード]：ヘルススコア、データ分析、チャーン予測、顧客セグメント

#resume-subheading[オンボーディング自動化プロジェクト][#link("https://example.com/projects/onboarding-automation")[https\:\/\/example\.com\/projects\/onboarding\-automation]][新規顧客向けオンボーディングプロセスの自動化][2022年4月～2022年9月]
- 契約後から初回価値実感までのステップを整理し、自動化ツールを導入
- テンプレート化により、担当者ごとのばらつきを削減
- オンボーディング完了までの期間を平均14日から7日へ短縮
#strong[キーワード]：オンボーディング、自動化、プロセス改善、顧客導入
]

= 興味・関心
#resume-pad[
#strong[読書]：ビジネス書、心理学、テクノロジー

#strong[旅行]：国内旅行、海外旅行、温泉

#strong[料理]：イタリア料理、和食、パン作り
]

= ボランティア活動
#resume-pad[
#resume-subheading[メンター][#link("https://example.com/volunteer")[https\:\/\/example\.com\/volunteer]][一般社団法人 キャリア支援ネットワーク][2019年9月～現在]
- 若手社会人や学生向けに、キャリア相談とビジネススキル向上のメンタリングを実施
- 月1回のワークショップを企画し、コミュニケーションや顧客対応の基礎を指導
- メンティーの成長を支援し、延べ50名以上を担当
]