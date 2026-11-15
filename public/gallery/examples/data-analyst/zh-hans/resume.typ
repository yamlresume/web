#set document(
  title: "林晓雨 - 资深数据分析师 | 商业智能与数据驱动决策专家",
  author: "林晓雨",
  keywords: "数据分析, 数据可视化, 机器学习, 数据库与数据仓库, 商业智能",
  description: "Résumé of 林晓雨",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林晓雨]] #v(-0.2em)

#text(size: 1.44em)[资深数据分析师 | 商业智能与数据驱动决策专家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:xiaoyu.lin@dataview.cn")[xiaoyu\.lin\@dataview\.cn] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://dataview.cn/xiaoyu")[https\:\/\/dataview\.cn\/xiaoyu]

中国，北京市，北京，北京市朝阳区建国路88号，100022

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/linxiaoyu")[linxiaoyu] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/linxiaoyu")[linxiaoyu]
]

= 简介

#resume-pad[
拥有 7 年数据分析与商业智能经验，擅长将海量数据转化为可落地的业务洞察。

- 精通 SQL、Python 和 R，熟悉数据仓库建模、ETL 流程与 A\/B 测试设计
- 熟练使用 Tableau、Power BI 等可视化工具，主导多个经营分析看板体系建设
- 善于与产品、运营、技术团队协作，推动数据驱动文化落地
- 曾通过用户画像与行为分析项目为业务带来 18% 的转化率提升
]

= 教育背景
#resume-pad[
#resume-subheading[北京大学][#link("https://www.pku.edu.cn")[https\:\/\/www\.pku\.edu\.cn]][硕士，统计学，成绩：3\.9][2015\-09\-01–2018\-07\-01]
- 研究方向为统计学习与商业数据分析，毕业论文《基于机器学习的用户流失预测模型研究》获评优秀
- 参与导师课题“消费者行为建模”，负责数据清洗、特征工程与模型评估
#strong[课程]：高等数理统计、回归分析、时间序列分析、数据挖掘、机器学习、抽样调查、多元统计分析、数据库系统原理

#resume-subheading[武汉大学][#link("https://www.whu.edu.cn")[https\:\/\/www\.whu\.edu\.cn]][学士，应用数学，成绩：3\.7][2011\-09\-01–2015\-07\-01]
- 打下扎实的数学与统计基础，多次获得校级奖学金
- 担任数学建模社团负责人，组织校内建模比赛与培训
#strong[课程]：数学分析、高等代数、概率论、数理统计、常微分方程、编程语言基础
]

= 工作经历
#resume-pad[
#resume-subheading[高级数据分析师][#link("https://www.cloudmap.example.com")[https\:\/\/www\.cloudmap\.example\.com]][上海云图信息科技有限公司][2021\-09\-01至今]
- 负责公司核心业务指标体系搭建，设计并落地用户增长、留存与转化分析框架
- 搭建自动化报表平台，将周报、月报产出时间从 6 小时缩短至 40 分钟
- 主导商品推荐策略 A\/B 实验，结合用户行为序列建模，使推荐点击率提升 15%
- 与数据工程团队协作优化数据仓库分层架构，提升核心表查询效率近 50%
- 定期向管理层输出经营分析报告，支持年度业务目标制定与资源分配决策
#strong[关键字]：指标体系、用户增长、A\/B测试、数据仓库、Tableau、经营分析

#resume-subheading[数据分析师][#link("https://www.qiming.example.com")[https\:\/\/www\.qiming\.example\.com]][北京启明互联网有限公司][2018\-07\-01–2021\-08\-31]
- 负责资讯类 App 的用户行为分析，完成埋点方案梳理与核心事件定义
- 基于漏斗分析定位用户流失关键节点，协同产品优化注册流程，转化率提升 12%
- 使用 Python 构建自动化数据质量检查脚本，减少人工核对工作量 70%
- 独立完成多份专题分析报告，覆盖推送策略、内容消费偏好与用户画像
#strong[关键字]：漏斗分析、埋点方案、Python、用户画像、SQL、数据质量
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：母语])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、技术文档阅读、商务沟通])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析]：专家], [#strong[关键字]：Python、SQL、R、Pandas、NumPy])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据可视化]：高级], [#strong[关键字]：Tableau、Power BI、Matplotlib、ECharts])

#grid(columns: (1fr, auto), align: (left, right), [#strong[机器学习]：中级], [#strong[关键字]：Scikit\-learn、XGBoost、特征工程、模型评估])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据库与数据仓库]：高级], [#strong[关键字]：MySQL、PostgreSQL、Hive、数据建模])

#grid(columns: (1fr, auto), align: (left, right), [#strong[商业智能]：高级], [#strong[关键字]：指标体系设计、经营分析、A\/B测试、数据产品])
]

= 荣誉
#resume-pad[
#resume-subheading[年度数据创新奖][][上海云图信息科技有限公司][2023年1月]
因主导搭建自动化经营分析平台并显著提升数据使用效率，获评公司年度数据创新奖。

#resume-subheading[优秀毕业论文][][北京大学][2018年6月]
毕业论文《基于机器学习的用户流失预测模型研究》被评为北京大学统计学系优秀毕业论文。
]

= 证书
#resume-pad[
#resume-subheading[CDA 数据分析师认证][#link("https://www.cda.cn/verification")[https\:\/\/www\.cda\.cn\/verification]][CDA 数据分析研究院][2020\-06\-15]

#resume-subheading[Google Data Analytics Professional Certificate][#link("https://www.coursera.org/professional-certificates/google-data-analytics")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-data\-analytics]][Google][2019\-12\-01]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于用户行为序列的电商购买意向预测][#link("https://www.example.com/publication")[https\:\/\/www\.example\.com\/publication]][数据分析与知识发现][2021\-03\-01]
提出融合时间注意力机制的用户行为序列模型，并在真实电商数据集上验证了模型在购买意向预测任务中的有效性。
]

= 项目
#resume-pad[
#resume-subheading[全渠道用户增长分析平台][#link("https://www.cloudmap.example.com/growth")[https\:\/\/www\.cloudmap\.example\.com\/growth]][支撑市场、运营、产品团队的日常数据查询与增长实验分析][2022\-03\-01–2022\-12\-31]
- 负责需求梳理、指标口径定义与前端看板原型设计
- 搭建数据中间层，统一用户、订单、商品等核心实体
- 设计“对比分析—下钻—归因”的自助分析流程，赋能 30\+ 业务人员
#strong[关键字]：数据产品、看板设计、数据中台、用户增长

#resume-subheading[电商用户流失预警系统][][基于用户行为与交易数据构建流失风险模型][2020\-05\-01–2020\-12\-31]
- 清洗并整合 3 亿条用户行为日志，完成 60\+ 特征衍生
- 使用 XGBoost 与 LightGBM 构建流失预测模型，AUC 达到 0\.87
- 输出高风险用户名单与挽回建议，支撑运营制定精准触达策略
#strong[关键字]：用户流失、机器学习、XGBoost、特征工程
]

= 兴趣爱好
#resume-pad[
#strong[阅读]：商业分析、数据科学

#strong[篮球]：团队运动

#strong[围棋]：策略思考
]

= 志愿服务
#resume-pad[
#resume-subheading[志愿者讲师][#link("https://www.datacommunity.example.com")[https\:\/\/www\.datacommunity\.example\.com]][数据科学公益社区][2022\-01\-01至今]
- 面向非营利组织与职场新人开展数据分析公益讲座
- 设计并讲授“Excel 到 Python 的数据分析入门”系列课程，累计服务 500\+ 人次
]