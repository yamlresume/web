#set document(
  title: "张伟 - 资深客户经理 | 企业级 SaaS 销售专家",
  author: "张伟",
  keywords: "企业级销售, 云计算与SaaS, 销售工具, 商务沟通",
  description: "Résumé of 张伟",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[张伟]] #v(-0.2em)

#text(size: 1.44em)[资深客户经理 | 企业级 SaaS 销售专家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:zhangwei.sales@example.com")[zhangwei\.sales\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/zhangwei-sales")[https\:\/\/www\.linkedin\.com\/in\/zhangwei\-sales]

中国，上海，上海，上海市浦东新区世纪大道100号，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/zhangwei-sales")[zhangwei\-sales] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/zhangwei-sales")[zhangwei\-sales]
]

= 简介

#resume-pad[
- 拥有8年以上企业级软件与云计算销售经验，擅长从0到1开拓大客户并实现规模化收入增长
- 精通顾问式销售和复杂解决方案销售，能够深入理解客户业务痛点并制定定制化方案
- 具备出色的商务谈判和跨部门协作能力，多次主导千万级项目的投标与合同签署
- 熟悉销售漏斗管理、客户分层和销售预测，善于利用数据驱动销售决策
]

= 教育背景
#resume-pad[
#resume-subheading[上海财经大学][#link("https://www.shufe.edu.cn/")[https\:\/\/www\.shufe\.edu\.cn\/]][学士，市场营销，成绩：3\.8\/4\.0][2011年9月–2015年7月]
- 系统学习市场营销理论与实务，多次获得校级奖学金
- 担任市场营销协会副会长，组织校园营销大赛和名企参访活动
- 毕业论文《社交媒体对消费者购买决策的影响》获评优秀毕业论文
#strong[课程]：市场营销学、消费者行为学、商务谈判、销售管理、经济学原理、统计学、广告学、数字营销
]

= 工作经历
#resume-pad[
#resume-subheading[高级客户经理][#link("https://www.aliyun.com")[https\:\/\/www\.aliyun\.com]][阿里云计算有限公司][2021年1月至今]
- 负责华东区制造、零售行业大客户的云计算与数字化解决方案销售，年度销售目标1\.2亿元
- 开拓并维护20余家头部企业客户，包括3家世界500强，实现新客户收入占比超过40%
- 主导多个千万级云平台迁移和数据中台项目，协调售前、产品和交付团队确保项目落地
- 建立客户分层和销售漏斗管理体系，通过数据分析优化商机转化率，商机转化率提升25%
- 指导并培养2名初级客户经理，帮助团队整体业绩达成率提升至120%
#strong[关键字]：大客户销售、云计算、解决方案销售、商务谈判、销售管理

#resume-subheading[客户经理][#link("https://cloud.tencent.com")[https\:\/\/cloud\.tencent\.com]][腾讯云计算（北京）有限责任公司][2017年7月–2020年12月]
- 负责华东区互联网和金融行业客户的云产品销售，累计完成合同额超过8000万元
- 从0到1开拓新客户52家，其中千万级客户6家，连续三年超额完成销售指标
- 深入理解客户业务场景，提供包括云服务器、数据库、CDN和安全产品的组合方案
- 与渠道合作伙伴建立紧密合作，通过生态渠道贡献了30%以上的新增收入
- 参与制定行业销售策略和标准化销售工具包，提升团队整体销售效率
#strong[关键字]：云销售、互联网客户、渠道合作、客户开拓

#resume-subheading[销售代表][#link("https://www.yonyou.com")[https\:\/\/www\.yonyou\.com]][用友网络科技股份有限公司][2015年7月–2017年6月]
- 负责中小企业ERP软件的销售工作，完成从线索挖掘、需求调研到合同签署的全流程
- 累计签约客户120余家，年度销售额从入职第一年的80万元增长至第二年的200万元
- 通过电话营销、行业展会和客户转介绍等方式开拓新客户，建立稳定的销售管道
- 协助实施团队完成客户上线和售后维护，客户满意度保持在95%以上
#strong[关键字]：ERP、中小企业、电话销售、客户维护
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话、商务写作])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：商务谈判、英文邮件、演示汇报])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[企业级销售]：专家], [#strong[关键字]：顾问式销售、大客户管理、销售预测、合同谈判、客户关系管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[云计算与SaaS]：高级], [#strong[关键字]：IaaS、PaaS、SaaS、混合云、数字化转型])

#grid(columns: (1fr, auto), align: (left, right), [#strong[销售工具]：高级], [#strong[关键字]：Salesforce、CRM、Excel、PowerPoint、数据分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[商务沟通]：专家], [#strong[关键字]：演讲、谈判、跨部门协作、项目管理、方案展示])
]

= 荣誉
#resume-pad[
#resume-subheading[年度销售冠军][][阿里云计算有限公司][2023年12月]
在2023年度实现个人销售业绩1\.2亿元，完成率150%，位列全国销售团队第一。

#resume-subheading[最佳新客户开拓奖][][腾讯云计算（北京）有限责任公司][2019年12月]
全年开拓新客户48家，其中千万级客户5家，新客户收入贡献占比超过60%。
]

= 证书
#resume-pad[
#resume-subheading[阿里云云计算销售专家认证][#link("https://www.aliyun.com/certification")[https\:\/\/www\.aliyun\.com\/certification]][阿里云][2022年3月]

#resume-subheading[Salesforce Certified Sales Cloud Consultant][#link("https://trailhead.salesforce.com/credentials/salescloudconsultant")[https\:\/\/trailhead\.salesforce\.com\/credentials\/salescloudconsultant]][Salesforce][2021年6月]
]

= 出版刊物
#resume-pad[
#resume-subheading[数字化转型下的企业级销售策略][#link("https://www.salesmanagement.com.cn/article/123")[https\:\/\/www\.salesmanagement\.com\.cn\/article\/123]][销售与管理][2023年8月]
本文探讨了云计算与SaaS企业在数字化转型浪潮中的销售策略，包括客户分层、顾问式销售和生态渠道建设，并结合实际案例分析了如何提升大客户销售转化率。
]

= 引荐
#resume-pad[
#resume-subheading[李强][阿里云华东区销售总监][liqiang\@example\.com][\+86 139 8765 4321]
张伟在阿里云工作期间表现出色，具备极强的客户洞察力和商务谈判能力，是团队中不可或缺的销售骨干。
]

= 项目
#resume-pad[
#resume-subheading[某大型制造企业云平台迁移项目][#link("https://www.aliyun.com/solutions/manufacturing")[https\:\/\/www\.aliyun\.com\/solutions\/manufacturing]][为某大型制造企业提供云平台迁移与数字化解决方案，合同金额超过2000万元。][2022年3月–2022年9月]
- 负责客户需求调研、方案制定和商务谈判
- 协调售前、交付和产品团队，确保项目按时上线
- 项目上线后客户续约率100%，并追加采购数据中台产品
#strong[关键字]：云计算、制造业、数字化转型、大客户销售
]

= 兴趣爱好
#resume-pad[
#strong[运动]：跑步、游泳、篮球

#strong[阅读]：商业、历史、科技

#strong[旅行]：自驾、摄影、美食
]

= 志愿服务
#resume-pad[
#resume-subheading[志愿者导师][#link("https://www.shyes.org/")[https\:\/\/www\.shyes\.org\/]][上海青年企业家协会][2019年9月–2023年12月]
- 为大学生和初创企业提供销售与职业发展指导
- 参与组织行业分享会和招聘活动
- 帮助5名学员获得知名企业销售岗位offer
]