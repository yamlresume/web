#set document(
  title: "高橋 美咲 - オペレーションズマネージャー / 業務改善・組織運営スペシャリスト",
  author: "高橋 美咲",
  keywords: "オペレーション管理, プロジェクトマネジメント, データ分析・ツール活用, リーダーシップ",
  description: "Résumé of 高橋 美咲",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[高橋 美咲]] #v(-0.2em)

#text(size: 1.44em)[オペレーションズマネージャー \/ 業務改善・組織運営スペシャリスト]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:misaki.takahashi@crest-ops.co.jp")[misaki\.takahashi\@crest\-ops\.co\.jp] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.misaki-takahashi.jp")[https\:\/\/www\.misaki\-takahashi\.jp]

日本、東京都、渋谷区、神宮前1\-2\-3 グリーンヒルズビル 8F、150\-0001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/misaki-takahashi-ops")[misaki\-takahashi\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/misaki_ops")[misaki\_ops]
]

= 基本情報

#resume-pad[
- オペレーションズマネージャーとして8年以上、業務プロセス設計・KPI管理・チームマネジメントに従事。
- 物流・サービス業界で、受注処理、在庫管理、顧客対応、予算管理の改善を主導。
- データに基づく意思決定と部門横断の合意形成を得意とし、生産性向上と組織定着の両立を実現。
- 変化の激しい環境でも、現場と経営をつなぐ橋渡し役として成果を創出。
]

= 学歴
#resume-pad[
#resume-subheading[中央大学][#link("https://www.chuo-u.ac.jp/")[https\:\/\/www\.chuo\-u\.ac\.jp\/]][学士、経営学部 経営学科、成績：3\.6\/4\.0][2013\-04\-01～2017\-03\-31]
- 経営学を基盤に、組織運営・業務改善・データ分析を横断的に学びました。
- ゼミでは小売業の店舗オペレーション改善をテーマに現地調査と提案を行いました。
- グループワークを通じて、関係者調整と合意形成の実践経験を積みました。
#strong[コース]：経営組織論、マーケティング論、生産管理論、財務会計論、ビジネス統計学、情報システム論、ロジスティクス概論、プロジェクトマネジメント
]

= 職歴
#resume-pad[
#resume-subheading[オペレーションズマネージャー][#link("https://www.crest-ops.co.jp")[https\:\/\/www\.crest\-ops\.co\.jp]][株式会社クレスト・オペレーションズ][2021\-04\-01～現在]
- 全社の業務運用を統括し、8名のチームをマネジメント。月次KPIの設計・運用により、問い合わせ対応時間を前年比32%短縮。
- 受注処理・請求・在庫管理のプロセスを再設計し、手作業工数を月120時間削減。
- 部門横断の定例会議を再編し、施策の意思決定スピードを約1\.5倍に改善。
- 予算策定から執行管理までを担当し、年間約4\.2億円の運営予算を適正化。
- 採用・育成・評価制度の運用に携わり、チーム定着率を15ポイント向上。
#strong[キーワード]：業務改善、KPI管理、チームマネジメント、予算管理、プロセス設計、採用・育成

#resume-subheading[シニアオペレーションスペシャリスト][#link("https://www.nova-logistics.co.jp")[https\:\/\/www\.nova\-logistics\.co\.jp]][株式会社ノヴァ・ロジスティクス][2017\-04\-01～2021\-03\-31]
- 物流センターの日次オペレーションを担当し、出荷精度99\.7%を安定的に維持。
- 需要予測とシフト最適化を導入し、繁忙期の残業時間を前年比25%削減。
- 顧客問い合わせの一次対応フローを標準化し、平均解決時間を40分から18分に短縮。
- 新規顧客オンボーディングを年間12社担当し、立ち上げ遅延ゼロを達成。
#strong[キーワード]：物流オペレーション、需要予測、シフト最適化、品質管理、顧客対応、標準化
]

= 言語
#resume-pad[
#strong[日本語]：ネイティブ・母国語レベル

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 920、ビジネス英会話、英文メール作成])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[オペレーション管理]：エキスパート], [#strong[キーワード]：業務プロセス設計、KPI設計・運用、予算管理、在庫管理、品質管理、リスク管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[プロジェクトマネジメント]：上級], [#strong[キーワード]：要件定義、スケジュール管理、ステークホルダー調整、変更管理、ドキュメント作成])

#grid(columns: (1fr, auto), align: (left, right), [#strong[データ分析・ツール活用]：上級], [#strong[キーワード]：Excel、Google Workspace、Salesforce、Tableau、Power BI、Slack])

#grid(columns: (1fr, auto), align: (left, right), [#strong[リーダーシップ]：エキスパート], [#strong[キーワード]：チームビルディング、採用・面接、育成・評価、組織設計、1on1])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[年間最優秀マネージャー賞][][株式会社クレスト・オペレーションズ][2023\-03\-01]
全社の業務改善とチーム運営の成果が評価され、年間最優秀マネージャー賞を受賞。問い合わせ対応時間の短縮と運営予算の適正化に貢献しました。

#resume-subheading[業務改善表彰 最優秀賞][][株式会社ノヴァ・ロジスティクス][2020\-12\-01]
物流センターのシフト最適化と需要予測精度向上の取り組みが評価され、業務改善表彰の最優秀賞を受賞しました。
]

= 資格・免状
#resume-pad[
#resume-subheading[PMP（プロジェクトマネジメント・プロフェッショナル）][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][プロジェクトマネジメント協会（PMI）][2022\-06\-01]

#resume-subheading[日商簿記2級][#link("https://www.kentei.ne.jp/bookkeeping")[https\:\/\/www\.kentei\.ne\.jp\/bookkeeping]][日本商工会議所][2019\-11\-01]

#resume-subheading[Microsoft Office Specialist Excel エキスパート][#link("https://learn.microsoft.com/ja-jp/certifications/mos-excel-expert/")[https\:\/\/learn\.microsoft\.com\/ja\-jp\/certifications\/mos\-excel\-expert\/]][マイクロソフト][2016\-08\-01]
]

= 出版・著作
#resume-pad[
#resume-subheading[物流オペレーションにおける需要予測精度向上の実践][#link("https://www.jlsa.jp/")[https\:\/\/www\.jlsa\.jp\/]][日本ロジスティクスシステム学会][2022\-09\-01]
物流センターでの需要予測とシフト最適化の実践事例をまとめ、繁忙期の労務負荷削減と出荷精度向上の手法を解説しました。
]

= プロジェクト
#resume-pad[
#resume-subheading[社内問い合わせ対応の自動化プロジェクト][#link("https://www.crest-ops.co.jp/case/automation")[https\:\/\/www\.crest\-ops\.co\.jp\/case\/automation]][社内問い合わせの分類・一次回答を自動化し、運用チームの対応負荷を軽減するプロジェクト。][2022\-01\-01～2022\-08\-31]
- 問い合わせログの分析から頻出カテゴリを特定し、FAQと自動応答フローを設計
- ノーコードツールとチャットボットを組み合わせ、一次回答率を68%まで向上
- 運用定着のための社内研修とマニュアル整備を実施
#strong[キーワード]：業務自動化、チャットボット、FAQ設計、プロセス改善
]

= 興味・関心
#resume-pad[
#strong[業務改善]：プロセス可視化、生産性向上

#strong[読書]：経営書、歴史小説

#strong[ランニング]：フルマラソン、週末ジョギング

#strong[旅行]：国内旅行、温泉巡り
]

= ボランティア活動
#resume-pad[
#resume-subheading[運営ボランティア][#link("https://www.career-support-network.jp/")[https\:\/\/www\.career\-support\-network\.jp\/]][NPO法人 地域キャリア支援ネットワーク][2019\-06\-01～現在]
- 若年層向けキャリア相談会の企画・運営を担当
- 企業ボランティアの募集と日程調整、当日の進行を担当
- 参加者アンケートの分析をもとに、相談会のプログラムを改善
]