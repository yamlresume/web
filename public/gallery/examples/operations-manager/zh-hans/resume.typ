#set document(
  title: "李伟 - 运营经理 | 供应链与流程优化",
  author: "李伟",
  keywords: "运营管理, 供应链与仓储, 数据分析, 项目管理, 系统工具",
  description: "Résumé of 李伟",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[李伟]] #v(-0.2em)

#text(size: 1.44em)[运营经理 | 供应链与流程优化]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 0013 8000")[\+86 138 0013 8000] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:liwei.ops@example.com")[liwei\.ops\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.liwei-ops.com")[https\:\/\/www\.liwei\-ops\.com]

中国，上海市，上海，浦东新区世纪大道100号，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/liwei-ops")[liwei\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M385.2 167.6c6.4 0 12.6 .3 18.8 1.1-16.6-78.4-100.7-136.7-196.3-136.7-107.2 0-194.7 72.8-194.7 165.4 0 53.4 29.3 97.5 77.9 131.6l-19.3 58.6 68-34.1c24.4 4.8 43.8 9.7 68.2 9.7 6.2 0 12.1-.3 18.3-.8-4-12.9-6.2-26.6-6.2-40.8-.1-84.9 72.9-154 165.3-154zM280.7 114.7c14.5 0 24.2 9.7 24.2 24.4 0 14.5-9.7 24.2-24.2 24.2-14.8 0-29.3-9.7-29.3-24.2 .1-14.7 14.6-24.4 29.3-24.4zM144.3 163.3c-14.5 0-29.3-9.7-29.3-24.2 0-14.8 14.8-24.4 29.3-24.4 14.8 0 24.4 9.7 24.4 24.4 0 14.6-9.6 24.2-24.4 24.2zM563 319.4c0-77.9-77.9-141.3-165.4-141.3-92.7 0-165.4 63.4-165.4 141.3S305 460.7 397.6 460.7c19.3 0 38.9-5.1 58.6-9.9l53.4 29.3-14.8-48.6C534 402.1 563 363.2 563 319.4zM343.9 294.9c-9.7 0-19.3-9.7-19.3-19.6 0-9.7 9.7-19.3 19.3-19.3 14.8 0 24.4 9.7 24.4 19.3 0 10-9.7 19.6-24.4 19.6zm107.1 0c-9.7 0-19.3-9.7-19.3-19.6 0-9.7 9.7-19.3 19.3-19.3 14.5 0 24.4 9.7 24.4 19.3 .1 10-9.9 19.6-24.4 19.6z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://weixin.qq.com")[liwei\_ops]
]

= 简介

#resume-pad[
- 8 年运营管理经验，覆盖订单履约、仓储配送、供应链协同与客户服务
- 擅长搭建 KPI 体系、推动流程标准化，并通过数据分析持续改善运营效率
- 具备跨部门项目管理经验，能够协调销售、采购、财务、IT 与第三方物流
- 注重团队建设与人才培养，善于在快节奏环境中推动目标落地
]

= 教育背景
#resume-pad[
#resume-subheading[复旦大学][#link("https://www.fudan.edu.cn")[https\:\/\/www\.fudan\.edu\.cn]][硕士，工商管理，成绩：3\.7][2014年9月–2016年6月]
- 系统学习运营管理、供应链协同与财务分析，建立从业务到经营的全局视角
- 参与企业运营诊断项目，围绕库存周转、履约时效与成本结构提出改善方案
- 毕业论文聚焦区域配送网络优化，结合数据模型评估线路整合与承运商管理策略
#strong[课程]：运营管理、供应链管理、财务管理、组织行为学、数据分析与决策、项目管理

#resume-subheading[上海财经大学][#link("https://www.sufe.edu.cn")[https\:\/\/www\.sufe\.edu\.cn]][学士，物流管理，成绩：3\.6][2010年9月–2014年6月]
- 夯实物流与供应链基础理论，熟悉仓储、运输、采购与库存管理流程
- 通过课程项目完成区域配送中心选址与库存策略分析
- 担任班级项目负责人，锻炼团队协作与沟通表达能力
#strong[课程]：物流系统规划、仓储与库存管理、运输管理、采购管理、管理信息系统、统计学
]

= 工作经历
#resume-pad[
#resume-subheading[运营经理][#link("https://www.xinglan-tech.com")[https\:\/\/www\.xinglan\-tech\.com]][星澜科技（上海）有限公司][2021年1月至今]
- 统筹华东区运营团队，制定年度运营计划与预算，管理 35 人跨职能团队，覆盖订单、仓储、配送与客户服务
- 建立以履约时效、库存周转和运营成本为核心的 KPI 体系，推动月度经营分析，季度运营成本降低 12%
- 主导仓储数字化升级与配送网络优化项目，将订单平均履约周期由 48 小时缩短至 30 小时
- 协调销售、采购、财务与第三方物流，完善供应商准入和考核机制，提升跨部门协同效率
- 搭建运营人才梯队，制定培训与轮岗计划，核心岗位留存率提升至 92%
#strong[关键字]：运营管理、流程优化、供应链协同、数据驱动、团队建设

#resume-subheading[高级运营专员][#link("https://www.hengyuan-supply.com")[https\:\/\/www\.hengyuan\-supply\.com]][恒远供应链管理有限公司][2016年7月–2020年12月]
- 负责华东区日常运营执行，管理订单处理、库存盘点、运输调度与异常客诉
- 优化库存补货模型与安全库存规则，库存周转天数下降 18%，缺货率控制在 2% 以内
- 参与承运商招标与绩效考核，整合区域配送线路，单票运输成本下降 9%
- 使用 Excel、SQL 与 Tableau 搭建运营报表，推动数据驱动的日\/周\/月复盘机制
- 协同 IT 团队上线 WMS 与 TMS 模块，完成流程梳理、用户培训与上线支持
#strong[关键字]：库存管理、运输调度、承运商管理、运营分析、WMS

#resume-subheading[运营助理][#link("https://www.boyue-trade.com")[https\:\/\/www\.boyue\-trade\.com]][博越商贸有限公司][2014年1月–2014年6月]
- 协助运营主管处理日常订单、发票与库存数据，确保系统记录准确
- 跟进客户订单交付进度，协调仓储与物流解决发货异常
- 参与月度库存盘点，整理差异报告并提出改进建议
#strong[关键字]：订单处理、库存盘点、客户沟通
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话二级甲等])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、商务谈判])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日语]：初级水平], [#strong[关键字]：JLPT N4])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[运营管理]：专家], [#strong[关键字]：流程优化、成本控制、KPI体系、运营分析、跨部门协作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[供应链与仓储]：高级], [#strong[关键字]：库存管理、采购协同、物流配送、供应商管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析]：高级], [#strong[关键字]：Excel、SQL、Tableau、Power BI])

#grid(columns: (1fr, auto), align: (left, right), [#strong[项目管理]：高级], [#strong[关键字]：PMP、敏捷管理、风险管理、里程碑管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[系统工具]：中级], [#strong[关键字]：SAP S\/4HANA、WMS、TMS、Jira、Confluence])
]

= 荣誉
#resume-pad[
#resume-subheading[年度优秀管理者][][星澜科技（上海）有限公司][2023年12月]
- 因在华东区运营效率提升、成本优化与团队建设方面表现突出而获奖
- 主导的仓储数字化项目实现履约周期显著缩短，并形成可复制的运营标准

#resume-subheading[流程优化金奖][][恒远供应链管理有限公司][2019年11月]
- 通过重构库存补货规则与配送线路，降低库存周转天数与单票运输成本
- 项目成果在华东区多个业务单元推广，带来持续的成本与时效改善
]

= 证书
#resume-pad[
#resume-subheading[PMP项目管理专业人士认证][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][项目管理协会 PMI][2019年6月]

#resume-subheading[六西格玛绿带认证][#link("https://asq.org/cert/six-sigma-green-belt")[https\:\/\/asq\.org\/cert\/six\-sigma\-green\-belt]][美国质量学会 ASQ][2018年3月]
]

= 出版刊物
#resume-pad[
#resume-subheading[区域运营中的数字化仓储实践][#link("https://www.logistics-review.com/articles/digital-warehouse")[https\:\/\/www\.logistics\-review\.com\/articles\/digital\-warehouse]][现代物流管理][2022年8月]
- 分析 WMS 与自动化分拣设备在区域仓储场景中的落地路径
- 总结库位优化、波次拣选与库存准确性提升的实践经验
- 提出以数据看板驱动仓储持续改善的管理建议
]

= 项目
#resume-pad[
#resume-subheading[华东区仓储数字化升级项目][#link("https://www.xinglan-tech.com/projects/warehouse-digitalization")[https\:\/\/www\.xinglan\-tech\.com\/projects\/warehouse\-digitalization]][通过 WMS 与自动化分拣设备提升仓储作业效率][2021年3月–2022年11月]
- 主导需求调研、流程设计与供应商选型，分三期完成 WMS 与自动化分拣设备上线
- 设计库位优化与波次拣选规则，拣货效率提升 35%，库存准确率达到 99\.5%
- 建立项目里程碑与风险清单，协调 IT、仓储、财务与外部供应商按期交付
#strong[关键字]：数字化仓储、WMS、自动化分拣、效率提升

#resume-subheading[城市配送网络优化项目][#link("https://www.hengyuan-supply.com/projects/delivery-network")[https\:\/\/www\.hengyuan\-supply\.com\/projects\/delivery\-network]][重构华东区城市配送路线与承运商组合][2019年4月–2020年12月]
- 基于历史订单与地理数据重构华东区配送分区，优化线路与波次安排
- 引入承运商月度评分机制，结合时效、破损率与成本进行动态分配
- 推动配送时效达成率由 88% 提升至 96%，单票成本下降 9%
#strong[关键字]：配送网络、路线优化、承运商管理、成本控制
]

= 兴趣爱好
#resume-pad[
#strong[运动健康]：马拉松、骑行、游泳

#strong[阅读与研究]：运营管理、供应链创新、商业传记

#strong[摄影]：城市风光、人文纪实
]

= 志愿服务
#resume-pad[
#resume-subheading[运营志愿者][#link("https://www.shyouth.org")[https\:\/\/www\.shyouth\.org]][上海青年企业家协会][2022年3月至今]
- 参与协会月度沙龙与行业交流活动的策划、报名管理和现场执行
- 协助整理会员企业运营案例，形成可复用的活动运营手册

#resume-subheading[活动组织志愿者][#link("https://www.community-service.org")[https\:\/\/www\.community\-service\.org]][社区公益服务中心][2018年9月–2021年6月]
- 组织社区便民活动与物资捐赠，协调场地、物资与志愿者排班
- 建立活动复盘表，持续优化报名、签到与现场服务流程
]