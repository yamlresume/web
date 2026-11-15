#set document(
  title: "林晓慧 - 高级产品经理 · 8 年互联网产品经验",
  author: "林晓慧",
  keywords: "产品规划与设计, 数据分析, 项目管理, 产品运营与增长, 工具与协作",
  description: "Résumé of 林晓慧",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林晓慧]] #v(-0.2em)

#text(size: 1.44em)[高级产品经理 · 8 年互联网产品经验]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:xiaohui.lin@linpm.cn")[xiaohui\.lin\@linpm\.cn] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linpm.cn")[https\:\/\/www\.linpm\.cn]

中国，上海市，上海，上海市浦东新区祖冲之路 123 弄，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/xiaohui-lin")[xiaohui\-lin] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/xiaohuilin")[xiaohuilin]
]

= 简介

#resume-pad[
拥有 8 年互联网产品设计与团队管理经验，擅长从 0 到 1 打造 SaaS 产品，并推动成熟产品持续增长。

- 主导过多个企业级产品，覆盖数据洞察、协同办公、数字化营销等方向
- 注重用户需求与商业目标的结合，善于通过数据分析驱动产品决策
- 具备优秀的跨部门沟通能力和团队领导力，多次带领团队完成关键业务目标
]

= 教育背景
#resume-pad[
#resume-subheading[复旦大学][#link("https://www.fudan.edu.cn/")[https\:\/\/www\.fudan\.edu\.cn\/]][学士，计算机科学与技术，成绩：3\.7\/4\.0][2011\-09–2015\-06]
- 系统学习计算机科学与技术，具备扎实的技术基础，为后续产品管理工作提供技术支撑
- 参加校内互联网创业团队，负责产品需求分析、原型设计与用户测试，初步建立产品思维
#strong[课程]：数据结构与算法、操作系统、数据库系统、计算机网络、软件工程、人机交互
]

= 工作经历
#resume-pad[
#resume-subheading[高级产品经理][#link("https://www.nebulatech.cn")[https\:\/\/www\.nebulatech\.cn]][星云科技][2022\-01至今]
- 负责公司核心 SaaS 数据产品的整体规划与迭代，产品月活跃用户增长 80%，年度营收同比增长 120%
- 搭建产品数据指标体系，推动 A\/B 测试常态化，关键转化率提升 35%
- 带领 6 人产品团队，建立需求评审、版本发布和数据复盘流程，提升团队交付效率
- 与销售、客户成功团队紧密协作，梳理客户反馈并转化为产品需求，提升客户留存率
#strong[关键字]：SaaS、数据分析、团队管理、用户增长、A\/B 测试、商业化

#resume-subheading[产品经理][#link("https://www.blueocean-info.cn")[https\:\/\/www\.blueocean\-info\.cn]][上海蓝海信息技术有限公司][2019\-03–2021\-12]
- 负责企业协同办公产品的用户调研、需求分析和功能设计，覆盖超过 200 家企业客户
- 设计全新任务协作模块，上线后周活跃用户提升 45%，客户续费率提升 20%
- 独立完成 20 余份 PRD，协调设计、研发、测试资源，保障产品按期高质量交付
- 建立用户反馈闭环，定期输出产品数据分析报告，为管理层决策提供依据
#strong[关键字]：协同办公、需求分析、PRD、用户调研、数据分析

#resume-subheading[产品经理][#link("https://www.yunfan-tech.cn")[https\:\/\/www\.yunfan\-tech\.cn]][上海云帆网络科技有限公司][2017\-02–2019\-02]
- 负责移动端营销工具产品的功能规划与迭代，累计服务 50 万注册用户
- 通过用户分群与行为分析，优化核心转化流程，付费转化率提升 28%
- 与运营团队合作策划增长活动，实现单季度新增用户 12 万
#strong[关键字]：移动端、营销工具、增长、用户运营、数据分析

#resume-subheading[产品助理][#link("https://www.mengya-startup.cn")[https\:\/\/www\.mengya\-startup\.cn]][萌芽科技][2015\-07–2016\-12]
- 协助产品经理完成需求收集、竞品分析和原型绘制，支持 3 条产品线的日常迭代
- 跟进开发进度并组织验收测试，保证功能上线质量
#strong[关键字]：竞品分析、原型设计、项目跟进
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话母语])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：大学英语六级、商务邮件写作、英文需求文档])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[产品规划与设计]：专家], [#strong[关键字]：需求分析、用户研究、竞品分析、产品路线图、PRD、原型设计])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析]：高级], [#strong[关键字]：SQL、Excel、Tableau、A\/B 测试、用户行为分析、指标体系建设])

#grid(columns: (1fr, auto), align: (left, right), [#strong[项目管理]：高级], [#strong[关键字]：敏捷开发、Scrum、JIRA、跨部门协作、OKR、风险管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[产品运营与增长]：中级], [#strong[关键字]：用户留存、转化率优化、增长实验、渠道分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[工具与协作]：高级], [#strong[关键字]：Figma、Axure、Sketch、禅道、企业微信])
]

= 荣誉
#resume-pad[
#resume-subheading[年度优秀产品经理][][星云科技][2023\-12]
因主导的 SaaS 数据产品实现年度营收翻倍增长，并推动产品团队形成高效迭代机制，获评公司年度优秀产品经理。

#resume-subheading[最佳创新产品奖][][华东 SaaS 创新峰会][2022\-06]
负责设计的智能数据分析平台获评峰会“最佳创新产品奖”，评审组认可其在易用性和数据智能化方面的创新。
]

= 证书
#resume-pad[
#resume-subheading[NPDP 产品经理国际资格认证][#link("https://www.pdma.org")[https\:\/\/www\.pdma\.org]][PDMA][2021\-05]

#resume-subheading[CSPO 认证 Scrum 产品负责人][#link("https://www.scrumalliance.org")[https\:\/\/www\.scrumalliance\.org]][Scrum Alliance][2020\-08]
]

= 出版刊物
#resume-pad[
#resume-subheading[数据驱动的 SaaS 产品体验优化实践][#link("https://www.pmcommunity.cn/articles/data-driven-saas-ux")[https\:\/\/www\.pmcommunity\.cn\/articles\/data\-driven\-saas\-ux]][产品经理社区][2022\-08]
结合团队实践经验，总结如何通过用户行为数据和 A\/B 测试持续优化 SaaS 产品体验，并分享可复用的分析框架与关键指标。
]

= 项目
#resume-pad[
#resume-subheading[智能数据分析平台][#link("https://www.nebulatech.cn/products/analytics")[https\:\/\/www\.nebulatech\.cn\/products\/analytics]][面向中小企业的自助式数据洞察 SaaS 产品][2022\-01–2023\-12]
- 从市场调研、用户访谈、竞品分析到 MVP 上线，全程主导产品规划与落地
- 设计可视化报表与智能分析助手，降低用户使用门槛，上线一年付费客户超 300 家
- 与算法团队合作引入自动洞察功能，显著提升用户活跃度与留存
#strong[关键字]：SaaS、数据可视化、智能分析、产品从 0 到 1

#resume-subheading[企业协同办公移动端改版][][面向中小企业的协同办公 App 体验升级项目][2019\-06–2020\-09]
- 负责移动端信息架构重构与核心任务流程优化
- 通过可用性测试和灰度发布，新版上线后 7 日留存率提升 25%
#strong[关键字]：移动端、体验优化、B 端产品、可用性测试
]

= 兴趣爱好
#resume-pad[
#strong[商业与科技阅读]：商业分析、设计心理学、AI 应用、数字化转型

#strong[户外运动]：徒步、骑行、露营

#strong[社区分享]：产品经理沙龙、创业辅导、写作
]

= 志愿服务
#resume-pad[
#resume-subheading[产品创业导师][#link("https://www.shyea.cn")[https\:\/\/www\.shyea\.cn]][上海青年创业者协会][2020\-03–2023\-12]
- 为早期创业者提供产品定位、用户研究、MVP 验证等公益咨询，累计服务 30 余个创业团队
- 参与组织行业沙龙，分享从 0 到 1 的产品方法论
]