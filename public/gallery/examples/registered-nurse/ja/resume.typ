#set document(
  title: "佐藤 美咲 - 急性期・救急外来で患者支援を行う看護師",
  author: "佐藤 美咲",
  keywords: "臨床看護, 救急・急変対応, 看護記録・IT, コミュニケーション",
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

#text(size: 1.44em)[急性期・救急外来で患者支援を行う看護師]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:misaki.sato@example.jp")[misaki\.sato\@example\.jp] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://misaki-sato.jp/")[https\:\/\/misaki\-sato\.jp\/]

日本、東京都、港区、芝公園4\-2\-8、105\-0011

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/misaki-sato-rn")[misaki\-sato\-rn] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/misaki_rn")[misaki\_rn]
]

= 基本情報

#resume-pad[
患者の安全と尊厳を第一に考え、急性期病棟および救急外来で8年以上の臨床経験を持つ看護師です。

- 救急外来ではトリアージ、初期対応、モニタリングを担当し、年間約1,200件の救急受診に対応
- 急性期病棟では術後管理、化学療法、感染対策、退院支援を多職種と連携して実施
- 後輩看護師の指導や院内研修の企画を通じ、チーム全体の看護品質向上に貢献
- 患者・家族への説明と意思決定支援を重視し、満足度向上に取り組む
]

= 学歴
#resume-pad[
#resume-subheading[東都看護大学][#link("https://www.toto-nursing.example.jp")[https\:\/\/www\.toto\-nursing\.example\.jp]][学士、看護学、成績：3\.7][2012年4月～2016年3月]
看護学の基礎から臨床実習まで幅広く履修し、患者中心の看護実践に必要な知識と技術を習得。
卒業研究では急性期患者の疼痛管理をテーマに、看護記録の分析を行った。
#strong[コース]：基礎看護学、成人看護学、救急看護学、母性看護学、小児看護学、精神看護学、地域看護学、看護倫理
]

= 職歴
#resume-pad[
#resume-subheading[看護師（救急外来）][#link("https://www.tokyo-bayside-hp.example.jp")[https\:\/\/www\.tokyo\-bayside\-hp\.example\.jp]][東京ベイサイド総合病院][2020年4月～現在]
救急外来において、来院患者のトリアージから初期治療、経過観察までを担当。

- 主訴とバイタルサインに基づく緊急度判定を実施し、重症患者の治療開始時間を短縮
- 心電図モニタリング、酸素療法、静脈路確保、採血などの処置を医師と連携して実施
- 患者・家族への病状説明補助と不安軽減に努め、院内の接遇改善に貢献
- 新人看護師のプリセプターとして、救急看護手技の指導と振り返りを実施
#strong[キーワード]：救急看護、トリアージ、BLS、ACLS、患者教育

#resume-subheading[看護師（急性期病棟）][#link("https://www.tokyo-bayside-hp.example.jp")[https\:\/\/www\.tokyo\-bayside\-hp\.example\.jp]][東京ベイサイド総合病院][2016年4月～2020年3月]
整形外科・消化器外科病棟で、周術期看護から退院支援までを担当。

- 術前オリエンテーション、術後疼痛管理、創部観察、離床支援を実施
- 化学療法を受ける患者の副作用管理とセルフケア指導を担当
- 感染対策リンクナースとして、手指衛生監査と院内研修を企画
- 退院調整カンファレンスに参加し、訪問看護・介護サービスとの連携を推進
#strong[キーワード]：周術期看護、疼痛管理、感染対策、退院支援、多職種連携
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：日本語母語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 860、医療英語、英文文献読解])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[臨床看護]：エキスパート], [#strong[キーワード]：バイタルサイン管理、静脈注射、創傷処置、服薬管理、感染対策])

#grid(columns: (1fr, auto), align: (left, right), [#strong[救急・急変対応]：上級], [#strong[キーワード]：トリアージ、BLS、ACLS、心電図モニタリング、急変時対応])

#grid(columns: (1fr, auto), align: (left, right), [#strong[看護記録・IT]：上級], [#strong[キーワード]：電子カルテ、看護記録、Microsoft Office、データ入力])

#grid(columns: (1fr, auto), align: (left, right), [#strong[コミュニケーション]：上級], [#strong[キーワード]：患者・家族対応、多職種連携、指導・育成、カンファレンス])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[優秀看護師賞][][東京ベイサイド総合病院][2023年12月]
救急外来での迅速なトリアージと多職種連携、後輩指導への貢献が評価され受賞。

#resume-subheading[患者満足度向上表彰][][東京ベイサイド総合病院][2019年3月]
入院患者および家族への説明とケア改善に取り組み、病棟の患者満足度向上に貢献した。
]

= 資格・免状
#resume-pad[
#resume-subheading[看護師免許][#link("https://www.mhlw.go.jp/")[https\:\/\/www\.mhlw\.go\.jp\/]][厚生労働省][2016年3月]

#resume-subheading[BLSプロバイダー][#link("https://www.jrc-cpr.org/")[https\:\/\/www\.jrc\-cpr\.org\/]][日本蘇生協議会][2024年4月]

#resume-subheading[ACLSプロバイダー][#link("https://www.acls.jp/")[https\:\/\/www\.acls\.jp\/]][日本ACLS協会][2023年11月]
]

= 出版・著作
#resume-pad[
#resume-subheading[急性期病棟における転倒予防ラウンドの効果検証][#link("https://www.jnqi.org/journal/example")[https\:\/\/www\.jnqi\.org\/journal\/example]][日本看護品質管理学会誌][2021年9月]
- 転倒リスクの高い患者に対する多職種ラウンドの導入効果を後方視的に分析
- 転倒発生率の低下とスタッフのリスク認識向上を確認し、病棟内で事例共有を実施
]

= プロジェクト
#resume-pad[
#resume-subheading[救急外来トリアージ迅速化プロジェクト][][救急外来のトリアージ待ち時間を短縮し、重症患者の早期治療開始を目指す多職種改善プロジェクト。][2022年6月～2023年3月]
- 来院からトリアージまでの動線を分析し、受付・看護・医師の役割分担を再設計
- トリアージ記録の標準化と院内研修を実施し、判断のばらつきを低減
- プロジェクト開始前後で重症患者の治療開始までの時間を平均12分短縮
#strong[キーワード]：トリアージ、品質改善、多職種連携、業務効率化
]

= 興味・関心
#resume-pad[
#strong[ウェルネス]：ヨガ、ランニング、栄養学

#strong[専門学習]：症例検討、医療英語、感染対策

#strong[地域活動]：健康講座、防災訓練
]

= ボランティア活動
#resume-pad[
#resume-subheading[健康相談ボランティア][#link("https://www.minato-health.example.jp")[https\:\/\/www\.minato\-health\.example\.jp]][港区地域健康サポートセンター][2017年6月～2019年12月]
- 地域住民向けの健康相談、血圧測定、生活習慣改善の助言を実施
- 健康講座の企画・運営を支援し、参加者アンケートの分析を担当
- 医療機関への受診が必要な高齢者を適切な支援機関につなぐ活動に従事
]