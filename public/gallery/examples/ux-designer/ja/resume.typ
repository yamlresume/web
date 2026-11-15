#set document(
  title: "佐藤 美咲 - ヒト中心の体験を創造するUXデザイナー",
  author: "佐藤 美咲",
  keywords: "UXリサーチ, UIデザイン, プロトタイピング・評価",
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

#text(size: 1.44em)[ヒト中心の体験を創造するUXデザイナー]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90 1234 5678")[\+81 90 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:misaki.sato@example.jp")[misaki\.sato\@example\.jp] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://misakidesign.example.jp")[https\:\/\/misakidesign\.example\.jp]

日本、渋谷区、東京都、東京都渋谷区神宮前1\-2\-3、150\-0001

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/misaki-sato")[misaki\-sato] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@misakisato")[misakisato]
]

= 基本情報

#resume-pad[
- ユーザーリサーチからUIデザイン、プロトタイピング、ユーザビリティテストまでを一貫して担当し、Web・モバイルアプリの体験改善に貢献
- アクセシビリティとデザインシステムを重視し、エンジニアやプロダクトマネージャーと協働しながら高品質なデザインを提供
- 定性・定量データを基にした人間中心設計プロセスを実践し、ビジネス目標とユーザー満足度の両立を目指す
]

= 学歴
#resume-pad[
#resume-subheading[多摩美術大学][#link("https://www.tamabi.ac.jp/")[https\:\/\/www\.tamabi\.ac\.jp\/]][学士、情報デザイン、成績：3\.7][2015年4月～2019年3月]
- デザイン思考と人間中心設計を学び、ユーザビリティ評価やプロトタイピングの基礎を修得
- 卒業制作では「視覚障がい者向けナビゲーションアプリ」をデザインし、学内優秀賞を受賞
#strong[コース]：ヒューマンインターフェース、インタラクションデザイン、情報デザイン演習、デザインリサーチ、メディアアート、ユニバーサルデザイン
]

= 職歴
#resume-pad[
#resume-subheading[シニアUXデザイナー][#link("https://www.insight-design.example.jp")[https\:\/\/www\.insight\-design\.example\.jp]][株式会社インサイト・デザイン][2021年4月～現在]
- 大手金融機関のモバイルバンキングアプリのUX改善プロジェクトをリード
- ユーザーインタビュー、アンケート調査、ヒューリスティック評価を設計・実施し、サービス全体の改善提案に反映
- デザインシステムの構築と運用を推進し、デザイン品質の一貫性と開発効率を向上
- クロスファンクショナルチームのファシリテーションを担当し、ステークホルダーとの合意形成を支援
#strong[キーワード]：UXリサーチ、デザインシステム、Figma、ファシリテーション

#resume-subheading[UXデザイナー][#link("https://www.wave-tech.example.jp")[https\:\/\/www\.wave\-tech\.example\.jp]][株式会社ウェーブテクノロジー][2019年4月～2021年3月]
- ECアプリや社内業務システムのユーザーインターフェース設計に従事
- ペルソナ設定やカスタマージャーニーマップを作成し、新機能のコンセプト設計を主導
- プロトタイプを用いたユーザーテストを毎月実施し、改善効果を数値で報告
#strong[キーワード]：ユーザーテスト、プロトタイピング、Adobe XD、情報アーキテクチャ
]

= 言語
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[日本語]：ネイティブ・母国語レベル], [#strong[キーワード]：母国語])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 930、ビジネス英会話])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[UXリサーチ]：エキスパート], [#strong[キーワード]：ユーザーインタビュー、ペルソナ設計、カスタマージャーニーマップ、A\/Bテスト、アクセシビリティ])

#grid(columns: (1fr, auto), align: (left, right), [#strong[UIデザイン]：エキスパート], [#strong[キーワード]：Figma、Adobe XD、Sketch、プロトタイピング、デザインシステム])

#grid(columns: (1fr, auto), align: (left, right), [#strong[プロトタイピング・評価]：上級], [#strong[キーワード]：ユーザビリティテスト、ヒューリスティック評価、リモートユーザーテスト、インサイト分析])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[グッドデザイン賞][][公益財団法人日本デザイン振興会][2022年10月]
視覚障がい者向けナビゲーションアプリ「まちナビ」のUXデザインが評価され、グッドデザイン賞を受賞。

#resume-subheading[学内優秀賞][][多摩美術大学][2019年3月]
卒業制作「視覚障がい者向けナビゲーションアプリ」に対して、学内優秀賞を授与。
]

= 資格・免状
#resume-pad[
#resume-subheading[人間中心設計 基礎認定][#link("https://www.hcdnet.org/")[https\:\/\/www\.hcdnet\.org\/]][一般社団法人人間中心設計推進機構][2020年11月]

#resume-subheading[Google UXデザイン プロフェッショナル認定][#link("https://www.coursera.org/professional-certificates/google-ux-design")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-ux\-design]][Google][2021年6月]
]

= 出版・著作
#resume-pad[
#resume-subheading[ユーザーリサーチを組織に根付かせるための実践ガイド][#link("https://www.example.jp/articles/ux-research-guide")[https\:\/\/www\.example\.jp\/articles\/ux\-research\-guide]][UXデザイン協会 会誌][2023年3月]
企業におけるユーザーリサーチの定着プロセスを実例に基づき解説。リサーチ結果をプロダクト開発へ活かすためのフレームワークを提案。
]

= プロジェクト
#resume-pad[
#resume-subheading[まちナビ][#link("https://www.machinavi.example.jp/")[https\:\/\/www\.machinavi\.example\.jp\/]][視覚障がい者向け音声ナビゲーションアプリのUXデザイン][2022年4月～2022年12月]
- 視覚障がい者へのインタビューとフィールド調査を実施し、移動中の情報ニーズを明確化
- 画面読み上げ機能との親和性を考慮した情報設計と音声UIを設計
- 実機を用いたユーザーテストを繰り返し、操作性と安心感を向上
#strong[キーワード]：音声UI、アクセシビリティ、フィールド調査、ユーザーテスト
]

= 興味・関心
#resume-pad[
#strong[写真撮影]：フィルムカメラ、風景写真

#strong[旅行]：温泉めぐり、地域文化
]

= ボランティア活動
#resume-pad[
#resume-subheading[オーガナイザー][#link("https://www.ux-tokyo.example.jp")[https\:\/\/www\.ux\-tokyo\.example\.jp]][UXデザインコミュニティ東京][2022年4月～現在]
- 若手デザイナー向けの勉強会やポートフォリオレビュー会を企画・運営
- デザイナー同士の交流を促進し、コミュニティの活性化に貢献
]