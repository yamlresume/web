#set document(
  title: "林雨辰 - 高级数据工程师 / 实时数仓与数据平台建设",
  author: "林雨辰",
  keywords: "数据仓库与建模, 大数据处理, 编程与开发, 调度与云平台, 数据治理与质量",
  description: "Résumé of 林雨辰",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林雨辰]] #v(-0.2em)

#text(size: 1.44em)[高级数据工程师 \/ 实时数仓与数据平台建设]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 0013 8000")[\+86 138 0013 8000] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:yuchen.lin@example.com")[yuchen\.lin\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linyuchen-data.dev")[https\:\/\/www\.linyuchen\-data\.dev]

中国，上海，上海，浦东新区世纪大道 100 号，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/yuchen-lin-data")[yuchen\-lin\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/yuchen-lin-data")[yuchen\-lin\-data] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/12345678/yuchen-lin")[yuchen\-lin]
]

= 简介

#resume-pad[
具备 7 年数据工程与数据平台建设经验，专注于实时数仓、数据湖治理和批流一体架构。

- 熟练使用 Spark、Flink、Kafka、Hive、ClickHouse 与 Airflow 构建稳定高效的数据链路
- 擅长从业务目标出发设计数据模型、指标体系与数据质量监控方案
- 具备云原生数据平台落地经验，熟悉 AWS、阿里云与 Kubernetes 环境
- 重视工程规范、成本优化与跨团队协作，能够推动数据产品持续迭代
]

= 教育背景
#resume-pad[
#resume-subheading[华东理工大学][#link("https://www.ecust.edu.cn")[https\:\/\/www\.ecust\.edu\.cn]][硕士，计算机科学与技术，成绩：3\.8\/4\.0][2015年9月–2018年6月]
- 研究方向为大规模数据管理与实时计算，完成基于流式处理的数据分析课题
- 系统学习数据库、分布式系统与数据挖掘课程，为数据工程实践打下扎实基础
- 参与实验室数据平台项目，负责数据采集、清洗与指标计算模块
#strong[课程]：数据库系统原理、分布式计算、数据挖掘与知识发现、大数据存储与管理、机器学习基础、云计算与虚拟化技术
]

= 工作经历
#resume-pad[
#resume-subheading[高级数据工程师][#link("https://www.yunqi-data.cn")[https\:\/\/www\.yunqi\-data\.cn]][云启数据科技有限公司][2022年3月至今]
- 负责企业级实时数仓与数据中台建设，支撑营销、风控与运营分析等核心场景
- 设计基于 Flink 与 Kafka 的实时数据链路，将核心报表时效从小时级提升至分钟级
- 主导数据模型分层与指标口径治理，沉淀公共维度与主题数据集，降低重复开发成本
- 建设数据质量监控与告警体系，覆盖完整性、及时性、唯一性与一致性等关键规则
- 推动数据任务成本优化，通过资源队列、分区策略与任务合并降低计算与存储开销
#strong[关键字]：实时数仓、Flink、Kafka、数据治理、成本优化

#resume-subheading[数据工程师][#link("https://www.xinghe-fin.com")[https\:\/\/www\.xinghe\-fin\.com]][星河金融信息服务有限公司][2019年7月–2022年2月]
- 参与金融业务数据仓库建设，负责客户、交易与产品主题域的数据开发
- 使用 Spark SQL 与 Hive 完成离线批处理任务，保障日终报表与监管报送稳定产出
- 搭建 Airflow 调度依赖与任务巡检流程，缩短故障定位与恢复时间
- 与分析师和产品团队协作，梳理指标定义并输出数据字典与开发规范
#strong[关键字]：Spark、Hive、Airflow、数据仓库、监管报送

#resume-subheading[数据分析工程师][#link("https://www.lanjing-tech.com")[https\:\/\/www\.lanjing\-tech\.com]][蓝鲸网络科技有限公司][2018年7月–2019年6月]
- 负责电商用户行为数据的采集、清洗与建模，支持增长与运营分析
- 开发用户分群、漏斗转化与留存分析数据集，提升分析响应效率
- 编写 SQL 与 Python 脚本完成日常数据提取和自动化报表生成
- 参与埋点规范设计，推动数据源质量与口径一致性提升
#strong[关键字]：SQL、Python、用户行为、埋点治理、报表自动化
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：大学英语六级、技术文档写作、跨团队沟通])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[数据仓库与建模]：专家], [#strong[关键字]：维度建模、数据分层、指标体系、数据字典])

#grid(columns: (1fr, auto), align: (left, right), [#strong[大数据处理]：高级], [#strong[关键字]：Spark、Flink、Kafka、Hive、ClickHouse])

#grid(columns: (1fr, auto), align: (left, right), [#strong[编程与开发]：高级], [#strong[关键字]：Python、SQL、Scala、Shell、Java])

#grid(columns: (1fr, auto), align: (left, right), [#strong[调度与云平台]：中级], [#strong[关键字]：Airflow、Kubernetes、Docker、AWS、阿里云])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据治理与质量]：高级], [#strong[关键字]：元数据管理、数据质量、权限管理、成本优化])
]

= 荣誉
#resume-pad[
#resume-subheading[年度技术创新奖][][云启数据科技有限公司][2024年1月]
表彰在实时数仓性能优化与数据质量体系建设中的突出贡献，核心报表时效提升 90% 以上。

#resume-subheading[优秀项目奖][][星河金融信息服务有限公司][2020年12月]
因监管报送数据链路稳定性提升与交付效率优化获得团队表彰。
]

= 证书
#resume-pad[
#resume-subheading[AWS 数据分析专项认证][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][亚马逊云科技][2023年8月]

#resume-subheading[阿里云大数据分析师认证][#link("https://www.aliyun.com/certification")[https\:\/\/www\.aliyun\.com\/certification]][阿里云][2021年5月]
]

= 出版刊物
#resume-pad[
#resume-subheading[面向实时数仓的数据质量监控实践][#link("https://www.example.com/articles/realtime-data-quality")[https\:\/\/www\.example\.com\/articles\/realtime\-data\-quality]][中国数据工程实践][2023年11月]
- 总结实时数仓中数据质量规则设计、告警分级与故障恢复的工程经验
- 介绍批流一体场景下的数据校验方法与成本控制策略
]

= 引荐
#resume-pad[
#resume-subheading[周立诚][前技术总监][licheng\.zhou\@example\.com][\+86 139 0013 9000]
林雨辰在实时数仓与数据治理项目中展现出扎实的技术判断力和跨团队推动能力，能够将复杂业务问题转化为可落地的数据方案。
]

= 项目
#resume-pad[
#resume-subheading[实时用户行为分析平台][#link("https://www.yunqi-data.cn/projects/realtime-analytics")[https\:\/\/www\.yunqi\-data\.cn\/projects\/realtime\-analytics]][面向营销与运营场景的实时用户行为分析平台][2022年3月–2023年12月]
- 基于 Flink、Kafka 与 ClickHouse 构建从埋点采集到实时看板的数据链路
- 支持分钟级用户分群、漏斗转化与活动效果分析，服务多个业务团队
- 建立任务监控、数据质量校验与资源成本看板，提升平台可观测性
#strong[关键字]：实时计算、用户行为、ClickHouse、数据质量

#resume-subheading[电商数仓分层重构][#link("https://www.example.com/projects/ecommerce-warehouse")[https\:\/\/www\.example\.com\/projects\/ecommerce\-warehouse]][对原有离线数仓进行分层重构与指标口径统一][2020年1月–2021年10月]
- 梳理客户、商品、订单与营销主题域，设计 ODS、DWD、DWS 与 ADS 分层模型
- 统一核心指标口径并建设公共维度，减少重复开发与数据口径争议
- 通过分区治理与任务合并降低批处理资源消耗，提升数据产出稳定性
#strong[关键字]：数据仓库、维度建模、Spark、指标治理
]

= 兴趣爱好
#resume-pad[
#strong[开源社区]：数据工具文档、社区分享

#strong[运动]：长跑、羽毛球

#strong[阅读]：技术书籍、历史
]

= 志愿服务
#resume-pad[
#resume-subheading[文档贡献者][#link("https://www.example.org/open-data-community")[https\:\/\/www\.example\.org\/open\-data\-community]][开源数据工程社区][2021年5月至今]
- 参与开源数据工具中文文档翻译与示例整理
- 协助组织线上技术分享，推动数据工程实践经验交流
]