#set document(
  title: "陈浩 - 资深财务分析师",
  author: "陈浩",
  keywords: "财务分析, 数据分析, 行业研究, 沟通与领导",
  description: "Résumé of 陈浩",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陈浩]] #v(-0.2em)

#text(size: 1.44em)[资深财务分析师]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 0013 8000")[\+86 138 0013 8000] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chenhao@example.com")[chenhao\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.chenhao-finance.com")[https\:\/\/www\.chenhao\-finance\.com]

中国，北京市，北京，北京市朝阳区建国路88号，100022

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chenhao-finance")[chenhao\-finance] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/chenhao-finance")[chenhao\-finance]
]

= 简介

#resume-pad[
- 拥有6年金融行业经验，专注于财务分析、估值建模和投资研究
- 精通财务报表分析、现金流折现模型和可比公司分析
- 熟练使用Excel、Python和SQL进行数据处理和自动化报告
- 具备出色的沟通能力和团队协作精神，能够高效地向管理层汇报分析结果
]

= 教育背景
#resume-pad[
#resume-subheading[清华大学五道口金融学院][#link("https://www.pbcsf.tsinghua.edu.cn/")[https\:\/\/www\.pbcsf\.tsinghua\.edu\.cn\/]][硕士，金融学，成绩：3\.9\/4\.0][2018年9月–2020年7月]
- 深入研究公司金融与资产定价理论，参与多项实证研究项目
- 担任金融分析协会副会长，组织行业讲座和案例竞赛
- 毕业论文获评优秀，主题为“基于机器学习的信用风险预测模型”
#strong[课程]：高级公司金融、投资组合管理、金融计量经济学、衍生品定价、固定收益证券、财务报表分析

#resume-subheading[北京大学光华管理学院][#link("https://www.gsm.pku.edu.cn/")[https\:\/\/www\.gsm\.pku\.edu\.cn\/]][学士，金融学，成绩：3\.8\/4\.0][2014年9月–2018年7月]
- 连续三年获得校级奖学金，GPA排名前10%
- 参与全国大学生金融建模大赛，获得团体二等奖
- 担任学生会学术部部长，组织多场职业发展活动
#strong[课程]：微观经济学、宏观经济学、会计学原理、公司财务、投资学、统计学、计量经济学
]

= 工作经历
#resume-pad[
#resume-subheading[高级财务分析师][#link("https://www.citics.com")[https\:\/\/www\.citics\.com]][中信证券股份有限公司][2020年8月至今]
- 负责覆盖科技和消费行业的股票研究，撰写深度研究报告，为机构投资者提供投资建议
- 构建和维护财务模型（DCF、可比公司分析、敏感性分析），预测公司未来3\-5年财务表现
- 主导季度财报电话会议，分析财务数据并回答投资者提问
- 与内部销售团队合作，进行路演和客户拜访，提升研究产品的市场影响力
- 指导初级分析师，审核其财务模型和报告，确保分析质量
#strong[关键字]：财务建模、股票研究、估值分析、行业研究

#resume-subheading[财务分析师][#link("https://www.pwccn.com")[https\:\/\/www\.pwccn\.com]][普华永道中天会计师事务所][2018年7月–2020年7月]
- 参与多个大型企业的年度审计项目，负责财务报表分析和内部控制测试
- 协助客户完成IPO前的财务尽职调查，识别关键风险并提出改进建议
- 使用数据分析工具（Alteryx、Tableau）对财务数据进行可视化，提高审计效率
- 与团队成员协作，按时交付高质量的审计工作底稿和报告
#strong[关键字]：财务审计、尽职调查、数据分析、内部控制
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、TOEFL 105、商务英语])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[财务分析]：专家], [#strong[关键字]：财务报表分析、估值建模、现金流折现、可比公司分析、敏感性分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析]：高级], [#strong[关键字]：Excel VBA、Python、SQL、Tableau、Bloomberg Terminal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[行业研究]：高级], [#strong[关键字]：科技行业、消费行业、宏观经济、竞争分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[沟通与领导]：高级], [#strong[关键字]：报告撰写、团队管理、客户演示])
]

= 荣誉
#resume-pad[
#resume-subheading[国家奖学金][][北京大学][2016年10月]
因学业成绩优异和综合素质突出，获得国家奖学金（全校前5%）。

#resume-subheading[优秀毕业生][][北京大学光华管理学院][2018年7月]
因学业成绩和课外活动表现突出，被评为优秀毕业生。
]

= 证书
#resume-pad[
#resume-subheading[CFA Level II][#link("https://www.cfainstitute.org")[https\:\/\/www\.cfainstitute\.org]][CFA Institute][2021年6月]

#resume-subheading[注册会计师（CPA）][#link("https://www.cicpa.org.cn")[https\:\/\/www\.cicpa\.org\.cn]][中国注册会计师协会][2019年12月]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于机器学习的信用风险预测模型研究][#link("https://www.jryj.org.cn")[https\:\/\/www\.jryj\.org\.cn]][金融研究][2020年5月]
- 本文构建了基于随机森林和XGBoost的信用风险预测模型，并使用中国上市公司数据进行实证检验
- 研究发现机器学习模型在预测准确率和稳定性上优于传统Logistic回归模型
- 论文被引用超过50次，并获得清华大学优秀硕士论文奖
]

= 项目
#resume-pad[
#resume-subheading[科技行业财务分析平台][#link("https://github.com/chenhao-finance/tech-finance-analysis")[https\:\/\/github\.com\/chenhao\-finance\/tech\-finance\-analysis]][一个基于Python的自动化财务分析工具，用于批量处理科技公司财报数据][2021年3月–2021年9月]
- 使用Python和pandas从SEC EDGAR和Wind数据库抓取财务数据
- 自动计算关键财务指标（ROE、ROIC、毛利率、自由现金流等）并生成可视化报告
- 支持自定义估值模型，可一键生成DCF和可比公司分析
- 项目开源后获得200\+ GitHub stars，被多家机构分析师使用
#strong[关键字]：Python、财务分析、自动化、数据可视化
]

= 兴趣爱好
#resume-pad[
#strong[运动]：网球、游泳、徒步

#strong[阅读]：金融史、传记、科技趋势
]

= 志愿服务
#resume-pad[
#resume-subheading[金融素养志愿者][#link("https://www.cfdf.org.cn")[https\:\/\/www\.cfdf\.org\.cn]][中国金融教育发展基金会][2019年9月–2021年12月]
- 参与“金融知识进社区”公益活动，为老年人讲解理财知识和防诈骗技巧
- 编写通俗易懂的金融知识手册，累计发放500余份
- 组织大学生志愿者培训，提升团队的金融素养和服务能力
]