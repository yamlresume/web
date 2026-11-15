#set document(
  title: "陈思远 - 资深业务分析师 | 数字化转型与数据驱动决策",
  author: "陈思远",
  keywords: "业务分析, 数据分析, 产品与项目, 行业知识",
  description: "Résumé of 陈思远",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陈思远]] #v(-0.2em)

#text(size: 1.44em)[资深业务分析师 | 数字化转型与数据驱动决策]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 21 6888 0136")[\+86 21 6888 0136] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:siyuan.chen@example.com")[siyuan\.chen\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.siyuanchen-analytics.com")[https\:\/\/www\.siyuanchen\-analytics\.com]

中国，上海市，上海，浦东新区世纪大道 100 号，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/siyuan-chen-ba")[siyuan\-chen\-ba] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@siyuan.chen")[siyuan\.chen] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/siyuan-chen-ba")[陈思远]
]

= 简介

#resume-pad[
- 9 年金融科技与供应链领域业务分析经验，擅长需求调研、流程建模、数据洞察与跨部门协同。
- 主导 10\+ 个数字化项目，覆盖业务蓝图、需求规格、UAT 测试与上线复盘，推动流程效率提升 25% 以上。
- 熟练使用 SQL、Tableau、Power BI、Jira 与 Confluence，能够将复杂业务问题转化为可执行方案。
- 具备优秀的利益相关方管理与沟通能力，善于在业务、产品、技术与运营团队之间建立高效协作。
]

= 教育背景
#resume-pad[
#resume-subheading[上海财经大学][#link("https://www.sufe.edu.cn")[https\:\/\/www\.sufe\.edu\.cn]][学士，信息管理与信息系统，成绩：3\.8\/4\.0][2012\-09\-01–2016\-06\-30]
- 系统学习信息系统规划、数据库设计与业务流程优化
- 获校级优秀学生奖学金，毕业设计聚焦企业数据治理与流程分析
#strong[课程]：管理信息系统、数据库原理与应用、运筹学、统计学、业务流程管理、项目管理、数据分析基础、经济学原理
]

= 工作经历
#resume-pad[
#resume-subheading[高级业务分析师][#link("https://www.xinghan-digital.com")[https\:\/\/www\.xinghan\-digital\.com]][星瀚数字科技（上海）有限公司][2021\-07\-01至今]
- 负责金融科技产品线的业务分析与需求管理，覆盖客户尽调、风控审批与运营监控等核心流程
- 主导 6 个跨部门数字化项目，输出业务蓝图、需求规格说明书、流程模型与 UAT 方案
- 建立需求优先级评估机制，协调产品、研发、风控与运营团队，按期交付率提升至 95%
- 设计经营分析看板与关键指标口径，支持管理层进行月度经营复盘与资源调配
- 组织用户访谈与工作坊，沉淀需求模板与业务术语库，缩短新成员上手周期 30%
#strong[关键字]：需求管理、流程建模、利益相关方沟通、数据看板、金融科技

#resume-subheading[业务分析师][#link("https://www.yunfan-supply.com")[https\:\/\/www\.yunfan\-supply\.com]][云帆供应链管理有限公司][2018\-04\-01–2021\-06\-30]
- 深入采购、仓储与物流业务，梳理订单履约全链路流程并识别效率瓶颈
- 完成 20\+ 份业务需求文档与流程现状图，推动仓储作业标准化和异常处理机制落地
- 与数据团队合作搭建库存周转、履约时效与成本分析报表，辅助运营策略调整
- 参与 ERP 系统升级项目，负责需求澄清、测试用例评审与上线培训
- 通过流程优化将订单异常处理时长缩短 18%，库存盘点差异率降低 12%
#strong[关键字]：供应链、流程优化、ERP、需求文档、数据分析

#resume-subheading[数据分析师][#link("https://www.ruilian-consulting.com")[https\:\/\/www\.ruilian\-consulting\.com]][睿联市场咨询有限公司][2016\-07\-01–2018\-03\-31]
- 为零售与消费品客户提供市场研究、用户洞察与经营分析支持
- 使用 SQL 与 Excel 清洗和分析调研数据，撰写行业分析与客户洞察报告
- 参与 15\+ 个咨询项目，负责访谈纪要、问卷设计、数据验证与汇报材料制作
- 与项目经理共同向客户汇报关键发现，提出可落地的业务改进建议
#strong[关键字]：市场研究、用户洞察、SQL、报告撰写、零售行业
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话二级甲等、商务写作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、商务沟通、英文报告撰写])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日语]：初级水平], [#strong[关键字]：JLPT N4、基础商务会话])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[业务分析]：专家], [#strong[关键字]：需求调研与访谈、业务流程建模、需求规格说明书、用户故事与用例、UAT 测试管理、利益相关方管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析]：高级], [#strong[关键字]：SQL、Tableau、Power BI、Excel 高级分析、指标体系设计、A\/B 测试基础])

#grid(columns: (1fr, auto), align: (left, right), [#strong[产品与项目]：高级], [#strong[关键字]：Jira、Confluence、Visio、敏捷开发、项目计划与跟踪、风险与变更管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[行业知识]：高级], [#strong[关键字]：金融科技、供应链管理、零售与消费品、数字化转型、数据治理])
]

= 荣誉
#resume-pad[
#resume-subheading[年度优秀员工][][星瀚数字科技（上海）有限公司][2023\-12]
表彰在金融科技业务分析项目中的突出贡献，主导需求管理机制建设并推动跨部门协作效率提升。

#resume-subheading[业务分析卓越奖][][云帆供应链管理有限公司][2020\-11]
因供应链流程优化项目表现优异获奖，项目实现订单异常处理时长缩短 18%。
]

= 证书
#resume-pad[
#resume-subheading[国际商业分析专业人士认证（CBAP）][#link("https://www.iiba.org/certification/cbap")[https\:\/\/www\.iiba\.org\/certification\/cbap]][国际商业分析协会（IIBA）][2022\-09]

#resume-subheading[项目管理专业人士认证（PMP）][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][美国项目管理协会（PMI）][2021\-06]

#resume-subheading[谷歌数据分析专业证书][#link("https://grow.google/certificates/data-analytics/")[https\:\/\/grow\.google\/certificates\/data\-analytics\/]][谷歌][2020\-08]
]

= 出版刊物
#resume-pad[
#resume-subheading[数据驱动的业务流程优化实践][#link("https://www.qyglpl.com/article/2023/data-driven-process-optimization")[https\:\/\/www\.qyglpl\.com\/article\/2023\/data\-driven\-process\-optimization]][企业管理评论][2023\-05]
- 结合供应链与金融科技项目案例，总结从业务问题识别到指标落地的分析方法
- 提出以流程数据、用户反馈与经营指标相结合的需求优先级评估框架
]

= 引荐
#resume-pad[
#resume-subheading[周敏][星瀚数字科技产品总监][min\.zhou\@example\.com][\+86 21 6888 0142]
陈思远具备扎实的业务分析能力与出色的跨部门沟通能力，能够快速理解复杂业务并推动方案落地。

#resume-subheading[李昊][云帆供应链运营负责人][hao\.li\@example\.com][\+86 21 5566 0189]
在供应链流程优化项目中展现出严谨的分析思维和较强的推动力，是团队值得信赖的业务伙伴。
]

= 项目
#resume-pad[
#resume-subheading[供应链履约可视化平台][#link("https://www.yunfan-supply.com/projects/visibility-platform")[https\:\/\/www\.yunfan\-supply\.com\/projects\/visibility\-platform]][面向采购、仓储与物流团队的履约全链路可视化与异常预警平台][2019\-03\-01–2020\-10\-31]
- 负责业务需求调研、流程现状梳理与需求规格编写
- 设计订单履约、库存周转与异常处理等核心指标口径
- 协调研发与运营完成 UAT 测试及上线培训
- 上线后订单异常平均处理时长缩短 18%
#strong[关键字]：供应链、可视化、异常预警、需求分析

#resume-subheading[客户尽调流程数字化][#link("https://www.xinghan-digital.com/projects/kyc-digital")[https\:\/\/www\.xinghan\-digital\.com\/projects\/kyc\-digital]][覆盖客户准入、风险评级与审批协同的尽调流程数字化项目][2022\-02\-01–2023\-08\-31]
- 访谈风控、合规与客户经理，梳理尽调流程痛点与合规要求
- 输出业务蓝图、用户故事、流程模型与验收标准
- 设计审批时效与退回率等运营指标，支持持续优化
- 项目上线后平均审批周期缩短 22%
#strong[关键字]：金融科技、客户尽调、流程数字化、合规

#resume-subheading[零售客户洞察分析][#link("https://www.ruilian-consulting.com/projects/retail-insight")[https\:\/\/www\.ruilian\-consulting\.com\/projects\/retail\-insight]][基于调研与销售数据的零售客户分群与经营策略分析项目][2017\-03\-01–2017\-12\-31]
- 设计问卷与访谈提纲，完成多城市消费者调研数据清洗
- 使用 SQL 与 Excel 进行客户分群、交叉分析与趋势洞察
- 撰写客户洞察报告并向客户管理层汇报策略建议
#strong[关键字]：零售、客户洞察、市场研究、数据分析
]

= 兴趣爱好
#resume-pad[
#strong[行业研究]：数字化转型、商业分析、组织效能

#strong[运动]：马拉松、游泳、徒步

#strong[创作]：商业写作、摄影、播客
]

= 志愿服务
#resume-pad[
#resume-subheading[公益导师][#link("https://www.shyba-community.org")[https\:\/\/www\.shyba\-community\.org]][上海青年商业分析社区][2020\-09\-01–2024\-06\-30]
- 为高校学生与初入职场者提供商业分析职业发展与案例辅导
- 参与组织需求分析工作坊与行业分享活动
- 协助社区沉淀案例库与导师制流程
]