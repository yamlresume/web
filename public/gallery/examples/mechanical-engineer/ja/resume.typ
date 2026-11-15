#set document(
  title: "山田 太郎 - シニア機械設計エンジニア",
  author: "山田 太郎",
  keywords: "機械設計, CAE, プロジェクト管理, プログラミング",
  description: "Résumé of 山田 太郎",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[山田 太郎]] #v(-0.2em)

#text(size: 1.44em)[シニア機械設計エンジニア]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+81 90-1234-5678")[\+81 90\-1234\-5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:taro.yamada@example.com")[taro\.yamada\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.taro-yamada.com")[https\:\/\/www\.taro\-yamada\.com]

日本、東京都、渋谷区、東京都渋谷区渋谷1\-2\-3、150\-0002

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/taro-yamada")[taro\-yamada] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/taroyamada")[taroyamada] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/taro_yamada")[taro\_yamada]
]

= 基本情報

#resume-pad[
- 機械工学の学士・修士号を取得し、10年以上の機械設計経験を持つ
- 産業用機器から自動車まで幅広い分野で、3D CAD\/CAEを活用した設計を担当
- 熱解析・構造解析・トポロジー最適化などのCAE技術に精通
- グローバルチームでのプロジェクトリード経験があり、QCD達成に貢献
- 特許出願2件、技術論文発表1件
]

= 学歴
#resume-pad[
#resume-subheading[東京大学][#link("https://www.u-tokyo.ac.jp/")[https\:\/\/www\.u\-tokyo\.ac\.jp\/]][学士、機械工学、成績：3\.8][2008年4月～2012年3月]
- 機械工学の基礎を幅広く学び、特に設計・製造分野に興味を持つ
- 卒業研究ではロボットアームの設計と制御をテーマに取り組む
#strong[コース]：材料力学、熱力学、流体力学、機械設計、制御工学、生産加工学

#resume-subheading[東京大学大学院][#link("https://www.u-tokyo.ac.jp/")[https\:\/\/www\.u\-tokyo\.ac\.jp\/]][修士、機械工学、成績：3\.9][2012年4月～2014年3月]
- 修士課程では計算力学を用いた構造最適化の研究に従事
- 国際学会で研究成果を発表
#strong[コース]：先端機械設計、計算力学、ロボティクス
]

= 職歴
#resume-pad[
#resume-subheading[機械設計エンジニア][#link("https://www.hitachi.co.jp/")[https\:\/\/www\.hitachi\.co\.jp\/]][株式会社日立製作所][2014年4月～2019年3月]
- 産業用機器の機械設計を担当し、3D CAD (SolidWorks) を用いた部品設計から装配図まで作成
- 熱解析・構造解析 (ANSYS) を実施し、設計の妥当性を検証
- 生産部門と連携し、設計から製造までのプロセス改善に貢献
- 若手エンジニアの指導を担当
#strong[キーワード]：機械設計、SolidWorks、ANSYS、熱解析、構造解析

#resume-subheading[シニア機械設計エンジニア][#link("https://www.toyota.co.jp/")[https\:\/\/www\.toyota\.co\.jp\/]][トヨタ自動車株式会社][2019年4月～現在]
- 次世代パワートレインの機械設計をリードし、軽量化と高効率化を実現
- グローバルチームと協働し、設計仕様の標準化を推進
- プロジェクトマネージャーとして、QCDを達成
- 特許出願2件
#strong[キーワード]：パワートレイン、軽量化、プロジェクト管理、CATIA、特許
]

= 言語
#resume-pad[
#strong[日本語]：ネイティブ・母国語レベル

#grid(columns: (1fr, auto), align: (left, right), [#strong[英語]：完全な実務レベル], [#strong[キーワード]：TOEIC 900、技術文書読解])
]

= スキル
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[機械設計]：エキスパート], [#strong[キーワード]：SolidWorks、CATIA、AutoCAD、公差解析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CAE]：上級], [#strong[キーワード]：ANSYS、Abaqus、熱解析、構造解析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[プロジェクト管理]：上級], [#strong[キーワード]：PMBOK、アジャイル、リスク管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[プログラミング]：中級], [#strong[キーワード]：Python、MATLAB、VBA])
]

= 受賞・表彰
#resume-pad[
#resume-subheading[優秀設計賞][][株式会社日立製作所][2018年12月]
- 産業用機器の設計において、コスト削減と性能向上を両立させた功績により表彰

#resume-subheading[技術開発賞][][トヨタ自動車株式会社][2022年3月]
- 次世代パワートレインの設計開発における革新的な貢献に対して授与
]

= 資格・免状
#resume-pad[
#resume-subheading[機械設計技術者1級][#link("https://www.jsmdi.or.jp/")[https\:\/\/www\.jsmdi\.or\.jp\/]][日本機械設計工業会][2016年11月]

#resume-subheading[TOEIC 900][#link("https://www.iibc-global.org/")[https\:\/\/www\.iibc\-global\.org\/]][IIBC][2020年1月]
]

= 出版・著作
#resume-pad[
#resume-subheading[計算力学を用いた機械構造物の最適設計に関する研究][#link("https://www.jsme.or.jp/")[https\:\/\/www\.jsme\.or\.jp\/]][日本機械学会論文集][2016年9月]
- 計算力学的手法を用いて機械構造物の最適設計手法を提案
- 従来手法と比較して設計時間を30%短縮
]

= プロジェクト
#resume-pad[
#resume-subheading[ロボットアームの設計と制御][#link("https://www.example.com/robot-arm")[https\:\/\/www\.example\.com\/robot\-arm]][修士研究プロジェクト][2013年4月～2014年3月]
- 6自由度ロボットアームの機械設計から制御系実装まで担当
- 3D CADとMATLAB\/Simulinkを用いて設計・シミュレーションを実施
- 試作機を製作し、位置決め精度を検証
#strong[キーワード]：ロボット、制御、MATLAB、3D CAD

#resume-subheading[次世代パワートレイン軽量化プロジェクト][#link("https://www.toyota.co.jp/")[https\:\/\/www\.toyota\.co\.jp\/]][トヨタ自動車における社内プロジェクト][2020年4月～2023年3月]
- 次世代パワートレインの軽量化を目的とした設計プロジェクトをリード
- 新材料の適用とトポロジー最適化により、重量を15%削減
- 部門間連携を強化し、開発期間を20%短縮
#strong[キーワード]：軽量化、トポロジー最適化、新材料、プロジェクトリード
]

= 興味・関心
#resume-pad[
#strong[趣味]：登山、写真撮影、3Dプリンティング、読書
]

= ボランティア活動
#resume-pad[
#resume-subheading[委員][#link("https://www.jsme.or.jp/")[https\:\/\/www\.jsme\.or\.jp\/]][日本機械学会 若手技術者育成委員会][2018年4月～2022年3月]
- 若手技術者向けの設計コンテストやワークショップを企画・運営
- 学生や若手エンジニアへの技術指導を実施
]