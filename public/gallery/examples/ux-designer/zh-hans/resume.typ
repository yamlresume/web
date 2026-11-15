#set document(
  title: "林晓彤 - 资深用户体验设计师 / 设计思维践行者",
  author: "林晓彤",
  keywords: "用户研究, 交互设计, 视觉设计, 原型与工具",
  description: "Résumé of 林晓彤",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine", "Noto Serif CJK SC", "Noto Sans CJK SC", "Songti SC", "SimSun", "PingFang SC", "Microsoft YaHei"),
  size: 10pt,
  lang: "zh", region: "cn", number-type: "lining",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林晓彤]] #v(-0.2em)

#text(size: 1.44em)[资深用户体验设计师 \/ 设计思维践行者]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 5712 8899")[\+86 138 5712 8899] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:xiaotong.lin@example.com")[xiaotong\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.xiaotong.design")[https\:\/\/www\.xiaotong\.design]

中国，浙江省，杭州市，西湖区文三路 90 号，310012

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/xiaotong-lin")[xiaotong\-lin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M256 8a248 248 0 1 0 0 496 248 248 0 1 0 0-496zM420 122.4c29.5 36 47.4 82 47.8 132-7-1.5-77-15.7-147.5-6.8-5.8-14-11.2-26.4-18.6-41.6 78.3-32 113.8-77.5 118.3-83.5zM396.4 97.9c-3.8 5.4-35.7 48.3-111 76.5-34.7-63.8-73.2-116.2-79-124 67.2-16.2 138 1.3 190.1 47.5zM165.9 64.6c5.6 7.7 43.4 60.1 78.5 122.5-99.1 26.3-186.4 25.9-195.8 25.8 13.7-65.7 58-120.4 117.3-148.3zM44.2 256.3c0-2.2 0-4.3 .1-6.5 9.3 .2 111.9 1.5 217.7-30.1 6.1 11.9 11.9 23.9 17.2 35.9-76.6 21.6-146.2 83.5-180.5 142.3-33.8-37.6-54.5-87.2-54.5-141.6zM126 423.4c22.1-45.2 82.2-103.6 167.6-132.8 29.7 77.3 42 142.1 45.2 160.6-68.1 29-150 21.1-212.8-27.9zm248.4 8.5c-2.2-12.9-13.4-74.9-41.2-151 66.4-10.6 124.7 6.8 131.9 9.1-9.4 58.9-43.3 109.8-90.8 142z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://dribbble.com/xiaotonglin")[xiaotonglin]
]

= 简介

#resume-pad[
拥有 6 年数字产品设计经验的用户体验设计师，擅长从用户研究到高保真交付的全流程设计。

- 主导过 20\+ 款移动应用与 Web 产品的体验设计，覆盖金融、教育、智能硬件等领域
- 熟悉用户研究、信息架构、交互与视觉设计，善于用数据驱动设计决策
- 注重无障碍设计，致力于打造包容、易用的数字产品
- 具备跨职能协作经验，能有效组织设计评审与需求对齐
]

= 教育背景
#resume-pad[
#resume-subheading[浙江大学][#link("https://www.zju.edu.cn/")[https\:\/\/www\.zju\.edu\.cn\/]][学士，工业设计，成绩：3\.8\/4\.0][2015年9月–2019年6月]
- 在校期间主修工业设计与交互设计方向，多次参与校企合作实践项目
- 毕业设计《面向老年人的智能健康管理应用设计》获学院优秀毕业设计
#strong[课程]：设计心理学、人机交互、用户研究与设计调研、可视化设计、设计管理、产品设计与开发
]

= 工作经历
#resume-pad[
#resume-subheading[高级用户体验设计师][#link("https://www.yunchuang.example.com")[https\:\/\/www\.yunchuang\.example\.com]][杭州云创智能科技有限公司][2021年7月至今]
- 负责公司核心产品「云创健康」App 的体验设计，主导用户研究、信息架构和交互设计
- 搭建并维护团队设计系统，提升设计效率与多端一致性，组件复用率提升 40%
- 与产品经理、工程师紧密协作，推动可用性测试与 A\/B 实验落地，关键转化率提升 18%
- 带领 2 名初级设计师，负责设计评审、培训与职业成长辅导
#strong[关键字]：设计系统、用户研究、可用性测试、数据分析、团队管理

#resume-subheading[用户体验设计师][#link("https://www.digitalhorizon.example.com")[https\:\/\/www\.digitalhorizon\.example\.com]][上海数字视界信息技术有限公司][2019年7月–2021年6月]
- 参与在线教育产品「乐学」的 Web 与移动端设计，独立负责课程详情页、学习路径等核心模块
- 通过用户访谈和竞品分析，重新设计课程筛选与推荐流程，用户平均学习时长提高 22%
- 与开发团队协作输出设计标注与交互说明，确保设计还原度达 95% 以上
#strong[关键字]：交互设计、产品设计、设计交付、在线教育

#resume-subheading[设计实习生][#link("https://www.aiwei.example.com")[https\:\/\/www\.aiwei\.example\.com]][上海艾维设计咨询有限公司][2018年6月–2019年5月]
- 协助资深顾问完成多个品牌官网与移动端项目的视觉设计和原型制作
- 参与用户访谈、现场调研和可用性测试，整理并输出用户报告
#strong[关键字]：视觉设计、原型制作、用户访谈
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话二级甲等])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、可用英语进行用户访谈与设计评审])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[用户研究]：专家], [#strong[关键字]：深度访谈、可用性测试、问卷调查、用户画像、竞品分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[交互设计]：专家], [#strong[关键字]：信息架构、用户旅程地图、线框图、交互原型、微交互])

#grid(columns: (1fr, auto), align: (left, right), [#strong[视觉设计]：高级], [#strong[关键字]：Figma、Sketch、设计系统、视觉规范、无障碍设计])

#grid(columns: (1fr, auto), align: (left, right), [#strong[原型与工具]：专家], [#strong[关键字]：Figma、Framer、ProtoPie、Axure、Maze])
]

= 荣誉
#resume-pad[
#resume-subheading[浙江省优秀工业设计奖][][浙江省工业设计协会][2020年12月]
作品「智护老年人健康终端」获得年度优秀工业设计奖，该奖项旨在表彰在功能、体验与美学方面表现突出的设计作品。

#resume-subheading[公司季度创新之星][][杭州云创智能科技有限公司][2022年3月]
因主导设计系统重构并显著提升产研协作效率，被评选为当季创新之星。
]

= 证书
#resume-pad[
#resume-subheading[认证用户体验设计师（CUXD）][#link("https://www.uxpa.org/certification")[https\:\/\/www\.uxpa\.org\/certification]][国际用户体验专业协会][2021年5月]

#resume-subheading[Google UX Design Professional Certificate][#link("https://www.coursera.org/google-certificates/ux-design")[https\:\/\/www\.coursera\.org\/google\-certificates\/ux\-design]][Google][2020年8月]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于用户旅程地图的移动健康应用体验优化研究][#link("https://www.designmag.example.com/article/123")[https\:\/\/www\.designmag\.example\.com\/article\/123]][《设计》][2022年3月]
本文结合用户旅程地图方法，分析了移动健康应用在用户留存、任务完成效率等方面存在的体验问题，并提出了以场景为导向的设计优化策略。
]

= 项目
#resume-pad[
#resume-subheading[云创健康 App 体验升级][#link("https://www.yunchuang.example.com/")[https\:\/\/www\.yunchuang\.example\.com\/]][面向中老年用户的健康管理应用，旨在帮助用户便捷记录健康数据、获取个性化建议。][2022年3月–2022年12月]
- 主导从用户研究到设计交付的全流程体验升级，覆盖健康档案、数据看板、用药提醒等核心模块
- 重构信息架构与视觉语言，建立适老化设计规范，提升产品可用性与用户满意度
- 与算法团队合作设计个性化健康建议的展示方式，用户日活提升 25%
#strong[关键字]：健康管理、适老化设计、设计系统、数据可视化

#resume-subheading[乐学在线学习平台课程路径重构][#link("https://www.lexue.example.com/")[https\:\/\/www\.lexue\.example\.com\/]][为在线教育平台重构课程推荐与学习路径，以提升用户学习连续性与完课率。][2020年9月–2021年5月]
- 基于学习行为数据与用户访谈，梳理用户在选课、学习、复习阶段的核心痛点
- 设计新的课程卡片、筛选器与学习路径视图，降低用户认知负担
- 通过 A\/B 测试验证方案效果，课程完课率提升 18%
#strong[关键字]：在线教育、行为数据、A\/B 测试、信息架构
]

= 兴趣爱好
#resume-pad[
#strong[公益设计]：无障碍设计、乡村教育

#strong[艺术与生活]：水彩、摄影、博物馆
]

= 志愿服务
#resume-pad[
#resume-subheading[设计志愿者][#link("https://www.capa11y.example.org/")[https\:\/\/www\.capa11y\.example\.org\/]][中国信息无障碍产品联盟][2021年1月至今]
- 参与联盟组织的无障碍设计工作坊，为视障用户常用 App 提供体验优化建议
- 撰写并分享无障碍设计实践指南，推动更多人关注数字包容
]