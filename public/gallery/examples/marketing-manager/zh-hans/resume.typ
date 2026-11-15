#set document(
  title: "张雅琳 - 市场营销经理 | 品牌增长与数字营销专家",
  author: "张雅琳",
  keywords: "市场营销, 数字营销, 工具与平台, 管理与协作",
  description: "Résumé of 张雅琳",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[张雅琳]] #v(-0.2em)

#text(size: 1.44em)[市场营销经理 | 品牌增长与数字营销专家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yalin.zhang@example.com")[yalin\.zhang\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.zhangyalin.com")[https\:\/\/www\.zhangyalin\.com]

中国，上海市，上海，浦东新区世纪大道 100 号，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yalinzhang")[yalinzhang] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@yalinzhang")[yalinzhang]
]

= 简介

#resume-pad[
- 8 年市场营销经验，专注于企业级与快消行业的品牌增长、数字营销与整合传播
- 擅长制定市场策略、管理千万级预算，并通过数据驱动优化获客与转化
- 具备跨部门协作与团队管理能力，曾带领 6 人团队实现有效线索增长 180%
- 熟悉国内外主流营销平台与工具，能够快速适应不同市场环境
]

= 教育背景
#resume-pad[
#resume-subheading[复旦大学][#link("https://www.fudan.edu.cn")[https\:\/\/www\.fudan\.edu\.cn]][硕士，市场营销，成绩：3\.8\/4\.0][2014年9月–2017年6月]
- 主修市场营销，系统学习消费者洞察、品牌战略与数据驱动决策
- 毕业论文聚焦社交媒体对年轻消费者购买意愿的影响
- 获得校级优秀研究生奖学金
#strong[课程]：消费者行为学、市场调研与数据分析、品牌管理、数字营销策略、整合营销传播、商业统计学

#resume-subheading[上海外国语大学][#link("https://www.shisu.edu.cn")[https\:\/\/www\.shisu\.edu\.cn]][学士，国际商务，成绩：3\.6\/4\.0][2010年9月–2014年6月]
- 辅修英语，具备良好的跨文化沟通能力
- 参与校园国际文化节市场推广工作
#strong[课程]：国际市场营销、商务英语、跨文化沟通、经济学原理
]

= 工作经历
#resume-pad[
#resume-subheading[高级市场营销经理][#link("https://www.yuntu-tech.com")[https\:\/\/www\.yuntu\-tech\.com]][云图科技][2021年3月至今]
- 负责企业级软件服务产品线整体市场策略，管理年度预算 1200 万元
- 带领 6 人团队执行内容营销、搜索引擎优化与营销、行业活动与渠道合作
- 将有效线索数量提升 180%，客户获取成本降低 25%，投资回报率提升至 4\.2
- 搭建营销自动化与归因体系，实现线索到收入的闭环追踪
#strong[关键字]：企业级营销、增长策略、营销自动化、团队管理

#resume-subheading[市场营销经理][#link("https://www.xingchao.com")[https\:\/\/www\.xingchao\.com]][星潮互动][2017年7月–2021年2月]
- 负责快消品牌社交媒体与关键意见领袖营销，运营粉丝超 300 万
- 策划多个爆款话题，单次活动曝光量超 8000 万
- 与产品、销售团队协作，推动新品上市首月销售额破千万
- 管理代理商与媒体采购，优化投放效率
#strong[关键字]：社交媒体、关键意见领袖营销、品牌传播、预算管理
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：雅思 7\.5、商务谈判])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[市场营销]：专家], [#strong[关键字]：品牌战略、市场调研、整合营销、内容营销、活动策划])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数字营销]：高级], [#strong[关键字]：搜索引擎优化、搜索引擎营销、信息流广告、社交媒体营销、营销自动化、数据分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[工具与平台]：高级], [#strong[关键字]：谷歌分析、HubSpot、百度统计、巨量引擎、Salesforce])

#grid(columns: (1fr, auto), align: (left, right), [#strong[管理与协作]：高级], [#strong[关键字]：团队领导、跨部门协作、项目管理、预算控制、供应商管理])
]

= 荣誉
#resume-pad[
#resume-subheading[年度最佳营销团队奖][][云图科技][2023年1月]
表彰在企业级增长营销与品牌建设方面的突出贡献，带领团队实现年度业绩目标 130%。

#resume-subheading[数字营销创新金奖][][中国数字营销协会][2020年11月]
凭借“城市夜跑计划”整合营销案例获得行业金奖，活动覆盖 20 个城市，参与人数超 5 万。
]

= 证书
#resume-pad[
#resume-subheading[谷歌分析 4 认证][#link("https://skillshop.exceedlms.com/student/catalog")[https\:\/\/skillshop\.exceedlms\.com\/student\/catalog]][谷歌][2022年5月]

#resume-subheading[内容营销认证][#link("https://academy.hubspot.com/courses/content-marketing")[https\:\/\/academy\.hubspot\.com\/courses\/content\-marketing]][HubSpot 学院][2021年8月]

#resume-subheading[百度营销认证][#link("https://yingxiao.baidu.com")[https\:\/\/yingxiao\.baidu\.com]][百度][2020年3月]
]

= 出版刊物
#resume-pad[
#resume-subheading[社交媒体时代企业级品牌内容营销策略研究][#link("https://www.example.com/publication")[https\:\/\/www\.example\.com\/publication]][中国市场学会][2022年10月]
- 分析企业级品牌如何通过内容营销建立思想领导力
- 提出基于客户旅程的内容矩阵模型
- 被多家行业媒体转载引用
]

= 项目
#resume-pad[
#resume-subheading[云图科技品牌焕新项目][#link("https://www.yuntu-tech.com/brand")[https\:\/\/www\.yuntu\-tech\.com\/brand]][为企业级软件服务企业完成品牌升级与官网重构，覆盖 6 个国际市场][2022年1月–2022年9月]
- 主导品牌定位、视觉识别与官网改版
- 统一全球市场传播口径，提升品牌认知度 45%
#strong[关键字]：品牌升级、官网改版、全球化

#resume-subheading[双十一整合营销战役][#link("https://www.xingchao.com/campaign")[https\:\/\/www\.xingchao\.com\/campaign]][快消品牌双十一全渠道整合营销活动][2020年10月–2020年11月]
- 统筹社交媒体、直播与电商站内投放
- 实现成交总额 3200 万元，同比增长 90%
#strong[关键字]：电商营销、直播、整合传播
]

= 兴趣爱好
#resume-pad[
#strong[内容创作]：写作、播客、摄影

#strong[运动]：跑步、瑜伽、徒步
]

= 志愿服务
#resume-pad[
#resume-subheading[志愿者导师][#link("https://www.shyoungmarketers.org")[https\:\/\/www\.shyoungmarketers\.org]][上海青年营销人协会][2019年9月–2023年6月]
- 为大学生提供市场营销职业规划与技能辅导
- 组织行业分享会与公益讲座 20 余场

#resume-subheading[品牌传播志愿者][#link("https://www.ruraledu.org")[https\:\/\/www\.ruraledu\.org]][乡村教育发展基金会][2018年3月–2020年12月]
- 协助策划公益募捐活动，累计筹款 80 万元
- 负责社交媒体内容撰写与传播
]