#set document(
  title: "林思远 - 客户成功经理 | SaaS 客户增长与续约专家",
  author: "林思远",
  keywords: "客户成功管理, 数据分析与洞察, CRM与协作工具, 沟通与谈判, 项目管理",
  description: "Résumé of 林思远",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林思远]] #v(-0.2em)

#text(size: 1.44em)[客户成功经理 | SaaS 客户增长与续约专家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 0013 8000")[\+86 138 0013 8000] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:siyuan.lin@example.com")[siyuan\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://siyuanlin.example.com")[https\:\/\/siyuanlin\.example\.com]

中国，北京市，北京，北京市朝阳区建国路88号，100022

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/siyuanlin-csm")[siyuanlin\-csm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M385.2 167.6c6.4 0 12.6 .3 18.8 1.1-16.6-78.4-100.7-136.7-196.3-136.7-107.2 0-194.7 72.8-194.7 165.4 0 53.4 29.3 97.5 77.9 131.6l-19.3 58.6 68-34.1c24.4 4.8 43.8 9.7 68.2 9.7 6.2 0 12.1-.3 18.3-.8-4-12.9-6.2-26.6-6.2-40.8-.1-84.9 72.9-154 165.3-154zM280.7 114.7c14.5 0 24.2 9.7 24.2 24.4 0 14.5-9.7 24.2-24.2 24.2-14.8 0-29.3-9.7-29.3-24.2 .1-14.7 14.6-24.4 29.3-24.4zM144.3 163.3c-14.5 0-29.3-9.7-29.3-24.2 0-14.8 14.8-24.4 29.3-24.4 14.8 0 24.4 9.7 24.4 24.4 0 14.6-9.6 24.2-24.4 24.2zM563 319.4c0-77.9-77.9-141.3-165.4-141.3-92.7 0-165.4 63.4-165.4 141.3S305 460.7 397.6 460.7c19.3 0 38.9-5.1 58.6-9.9l53.4 29.3-14.8-48.6C534 402.1 563 363.2 563 319.4zM343.9 294.9c-9.7 0-19.3-9.7-19.3-19.6 0-9.7 9.7-19.3 19.3-19.3 14.8 0 24.4 9.7 24.4 19.3 0 10-9.7 19.6-24.4 19.6zm107.1 0c-9.7 0-19.3-9.7-19.3-19.6 0-9.7 9.7-19.3 19.3-19.3 14.5 0 24.4 9.7 24.4 19.3 .1 10-9.9 19.6-24.4 19.6z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://wechat.com/siyuanlin_csm")[siyuanlin\_csm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/siyuanlin-csm")[siyuanlin\-csm]
]

= 简介

#resume-pad[
深耕 SaaS 与科技行业 7 年，专注客户成功、续约增购与客户体验管理。擅长通过数据驱动的客户健康度模型识别风险与机会，推动跨部门协作，提升客户生命周期价值。

- 负责 30\+ 家中大型企业客户，管理年合同金额超 3000 万元，续约率连续两年保持在 95% 以上
- 主导客户 onboarding、QBR 与成功计划，客户 NPS 从 32 提升至 68
- 熟练使用 Salesforce、Gainsight、Jira 等工具，具备优秀的中英文沟通与谈判能力
- 以客户价值为导向，善于将客户反馈转化为产品改进与增购机会
]

= 教育背景
#resume-pad[
#resume-subheading[上海交通大学][#link("https://www.sjtu.edu.cn")[https\:\/\/www\.sjtu\.edu\.cn]][学士，工商管理，成绩：3\.7\/4\.0][2012\-09\-01–2016\-06\-30]
- 系统学习管理学、市场营销与数据分析，为客户成功与商业洞察打下坚实基础
- 担任商学院职业发展协会外联负责人，组织 10\+ 场企业参访与求职分享活动
- 获校级优秀学生奖学金两次，GPA 3\.7\/4\.0
#strong[课程]：管理学原理、市场营销、组织行为学、消费者行为、商务统计分析、运营管理、企业战略管理、商务沟通
]

= 工作经历
#resume-pad[
#resume-subheading[高级客户成功经理][#link("https://www.yunqi-tech.com")[https\:\/\/www\.yunqi\-tech\.com]][云启科技][2021\-07\-01至今]
- 负责 30\+ 家中大型企业客户，涵盖制造、零售与互联网行业，管理年合同金额超 3000 万元
- 建立客户健康度评分体系，结合产品使用率、工单趋势与关键联系人活跃度，提前识别续约风险
- 主导季度业务回顾（QBR）与成功计划，推动续约率连续两年保持在 95% 以上
- 挖掘客户增购与交叉销售机会，年度增购收入贡献超过 800 万元
- 与产品、研发、销售团队紧密协作，将高频客户反馈转化为产品需求，推动 5 项核心功能上线
- 带领 3 名客户成功专员，制定 onboarding 标准流程与客户培训体系
#strong[关键字]：SaaS客户成功、续约管理、客户增购、NPS提升、跨部门协作

#resume-subheading[客户成功专员][#link("https://www.zhilian-data.com")[https\:\/\/www\.zhilian\-data\.com]][智联数据][2018\-08\-01–2021\-06\-30]
- 负责 60\+ 家中小型企业客户的日常运营与关系维护，客户满意度保持在 90% 以上
- 搭建客户培训与知识库体系，制作 20\+ 份产品操作指南与最佳实践文档
- 通过定期回访与使用数据分析，成功挽回 15 家高风险续约客户
- 协同销售团队完成新客户交接，平均缩短 onboarding 周期 30%
#strong[关键字]：客户关系维护、客户培训、风险预警、数据分析

#resume-subheading[客户支持顾问][#link("https://www.hengxin-consulting.com")[https\:\/\/www\.hengxin\-consulting\.com]][恒信咨询][2016\-07\-01–2018\-07\-31]
- 为金融与零售客户提供系统上线支持与业务咨询服务，累计服务 100\+ 家企业用户
- 处理客户疑难问题与投诉，协调内部资源，平均问题解决时长缩短至 4 小时以内
- 参与客户需求调研与方案撰写，协助销售团队完成 20\+ 个项目的售前支持
#strong[关键字]：客户支持、售前咨询、问题解决、CRM
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话、商务写作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、商务谈判、英文演示])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[客户成功管理]：专家], [#strong[关键字]：客户生命周期管理、续约与增购、QBR与成功计划、客户健康度模型、onboarding流程])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析与洞察]：高级], [#strong[关键字]：SQL、Excel、Tableau、客户分群、流失预警])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CRM与协作工具]：高级], [#strong[关键字]：Salesforce、Gainsight、Jira、Confluence、企业微信])

#grid(columns: (1fr, auto), align: (left, right), [#strong[沟通与谈判]：专家], [#strong[关键字]：商务谈判、高层沟通、冲突处理、中英文演示])

#grid(columns: (1fr, auto), align: (left, right), [#strong[项目管理]：中级], [#strong[关键字]：跨部门协作、敏捷方法、需求管理、项目排期])
]

= 荣誉
#resume-pad[
#resume-subheading[年度客户成功之星][][云启科技][2023\-12]
因主导客户健康度体系与续约专项，年度续约率与增购收入均超额完成目标，获公司年度客户成功团队最高个人荣誉。

#resume-subheading[优秀员工][][智联数据][2020\-01]
连续两个季度客户满意度排名第一，并成功挽回多家高价值客户续约。
]

= 证书
#resume-pad[
#resume-subheading[客户成功经理认证（CCSM）][#link("https://www.customersuccessassociation.com/certification")[https\:\/\/www\.customersuccessassociation\.com\/certification]][客户成功协会][2020\-05]

#resume-subheading[项目管理专业人士（PMP）][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][项目管理协会（PMI）][2019\-09]
]

= 出版刊物
#resume-pad[
#resume-subheading[SaaS 客户健康度模型实践指南][#link("https://www.woshipm.com/practice/example.html")[https\:\/\/www\.woshipm\.com\/practice\/example\.html]][人人都是产品经理][2022\-04]
系统介绍如何从产品使用、服务交互、关键联系人活跃度与商业价值四个维度构建客户健康度评分，并结合实际案例说明如何驱动续约与增购。
]

= 项目
#resume-pad[
#resume-subheading[客户健康度评分体系][#link("https://www.yunqi-tech.com/customer-health")[https\:\/\/www\.yunqi\-tech\.com\/customer\-health]][面向 SaaS 客户成功团队的客户风险识别与增购机会挖掘系统。][2022\-03–2022\-10]
- 设计 4 大维度、18 项指标的客户健康度模型，覆盖产品使用、服务体验、关系强度与商业价值
- 联合数据团队搭建自动化看板，每日更新客户评分与预警名单
- 上线后帮助团队提前 60 天识别 80% 的续约风险客户，续约率提升 8%
#strong[关键字]：客户健康度、数据看板、续约预警、SaaS

#resume-subheading[客户培训与赋能计划][#link("https://www.zhilian-data.com/customer-training")[https\:\/\/www\.zhilian\-data\.com\/customer\-training]][为中小企业客户设计的线上培训与知识库赋能项目。][2019\-05–2020\-12]
- 梳理客户高频问题与使用场景，制作 20\+ 份操作指南与视频课程
- 搭建自助知识库，客户自助解决率从 35% 提升至 65%
- 组织月度线上培训，累计参与客户超过 500 人次
#strong[关键字]：客户培训、知识库、自助服务
]

= 兴趣爱好
#resume-pad[
#strong[阅读]：商业管理、心理学、科技趋势

#strong[运动]：徒步、羽毛球、游泳
]

= 志愿服务
#resume-pad[
#resume-subheading[职业发展导师][#link("https://www.example-community.org")[https\:\/\/www\.example\-community\.org]][北京市朝阳区社区服务中心][2019\-03\-01–2021\-12\-31]
- 为社区青年提供职业规划与求职辅导，累计服务 200\+ 人次
- 组织 SaaS 行业分享会，帮助求职者了解客户成功岗位技能要求
- 协助社区开展公益培训活动，获评年度优秀志愿者
]