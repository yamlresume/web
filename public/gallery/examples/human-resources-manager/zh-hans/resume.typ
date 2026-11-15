#set document(
  title: "陈晓华 - 人力资源经理 | 10年人力资源管理经验 | 擅长组织发展与员工关系",
  author: "陈晓华",
  keywords: "人力资源管理, 领导力, 数据分析",
  description: "Résumé of 陈晓华",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陈晓华]] #v(-0.2em)

#text(size: 1.44em)[人力资源经理 | 10年人力资源管理经验 | 擅长组织发展与员工关系]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chen.xiaohua@example.com")[chen\.xiaohua\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/chenxiaohua")[https\:\/\/www\.linkedin\.com\/in\/chenxiaohua]

中国，上海，上海，上海市浦东新区世纪大道100号，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chenxiaohua")[chenxiaohua] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/chenxiaohua")[chenxiaohua]
]

= 简介

#resume-pad[
- 拥有10年人力资源管理经验，擅长招聘、绩效管理、员工关系和组织发展
- 曾领导10人HR团队，支持公司从500人扩张至2000人规模
- 熟悉中国劳动法律法规，成功处理多起复杂员工关系案例
- 具备出色的沟通协调能力和数据分析能力，推动HR数字化转型
- 持有人力资源管理师一级证书和国际人力资源管理师认证
]

= 教育背景
#resume-pad[
#resume-subheading[复旦大学][#link("https://www.fudan.edu.cn")[https\:\/\/www\.fudan\.edu\.cn]][硕士，人力资源管理，成绩：3\.8\/4\.0][2008\-09\-01–2011\-06\-30]
- 系统学习人力资源管理理论与实务，成绩优异
- 参与多项企业咨询项目，积累实战经验
- 毕业论文获评优秀，主题为“新生代员工敬业度研究”
#strong[课程]：组织行为学、人力资源管理、劳动关系与劳动法、薪酬管理、绩效管理、招聘与配置、培训与开发、战略人力资源管理
]

= 工作经历
#resume-pad[
#resume-subheading[人力资源经理][#link("https://www.huaxin-tech.com")[https\:\/\/www\.huaxin\-tech\.com]][华信科技有限公司][2018\-03\-01至今]
- 全面负责人力资源部门工作，管理10人团队，支持公司2000余名员工
- 主导年度招聘计划，年均招聘300\+人，关键岗位到岗率95%
- 设计并实施绩效管理体系，推动OKR与KPI结合，员工绩效提升20%
- 建立员工关系沟通机制，员工满意度从75%提升至88%
- 优化薪酬福利体系，完成年度薪酬调研和调薪方案，保持市场竞争力
#strong[关键字]：人才招聘、绩效管理、员工关系、组织发展、薪酬福利

#resume-subheading[人力资源主管][#link("https://www.hengtong-group.com")[https\:\/\/www\.hengtong\-group\.com]][恒通集团][2013\-07\-01–2018\-02\-28]
- 负责集团总部及下属子公司招聘工作，年均完成150\+岗位招聘
- 搭建培训体系，组织新员工入职培训和管理技能培训，覆盖500\+人次
- 参与薪酬体系改革，完成岗位价值评估和薪酬宽带设计
- 处理员工关系日常事务，包括劳动合同管理、员工投诉和劳动纠纷
- 协助HRD完成组织架构调整和人才盘点项目
#strong[关键字]：招聘、培训、薪酬、员工关系

#resume-subheading[人力资源专员][#link("https://www.yunchuang.net")[https\:\/\/www\.yunchuang\.net]][云创网络科技有限公司][2011\-07\-01–2013\-06\-30]
- 负责招聘渠道维护、简历筛选、面试安排和入职办理
- 管理员工档案和人事系统，确保数据准确完整
- 协助组织员工活动和福利发放，提升员工归属感
- 参与制定公司规章制度和员工手册
#strong[关键字]：招聘、员工入职、档案管理
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话、粤语])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、商务英语])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[人力资源管理]：专家], [#strong[关键字]：人才招聘、绩效管理、薪酬福利、员工关系、组织发展、劳动法])

#grid(columns: (1fr, auto), align: (left, right), [#strong[领导力]：高级], [#strong[关键字]：团队建设、跨部门协作、决策能力、沟通协调])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析]：中级], [#strong[关键字]：Excel、HRIS、数据报表、人力分析])
]

= 荣誉
#resume-pad[
#resume-subheading[年度优秀员工][][华信科技有限公司][2019\-12]
表彰在人力资源管理和组织发展方面的杰出贡献，特别是在员工满意度提升项目中的突出表现。

#resume-subheading[最佳团队领导奖][][华信科技有限公司][2020\-12]
带领HR团队获得年度最佳团队称号，团队在招聘效率、员工服务等方面表现优异。
]

= 证书
#resume-pad[
#resume-subheading[人力资源管理师（一级）][#link("https://www.mohrss.gov.cn")[https\:\/\/www\.mohrss\.gov\.cn]][中国人力资源和社会保障部][2016\-05]

#resume-subheading[国际人力资源管理师 (IPMA\-CP)][#link("https://www.ipma-hr.org")[https\:\/\/www\.ipma\-hr\.org]][国际人力资源管理协会][2018\-11]
]

= 出版刊物
#resume-pad[
#resume-subheading[数字化转型下的人力资源管理创新][#link("https://www.hrjournal.com/article/1234")[https\:\/\/www\.hrjournal\.com\/article\/1234]][《人力资源》杂志][2021\-08]
探讨数字化时代HR如何利用技术提升员工体验和组织效能，结合案例分析提出实施路径。
]

= 项目
#resume-pad[
#resume-subheading[员工满意度提升项目][][该项目旨在通过系统性的调研和干预，提升员工敬业度和满意度，打造积极的组织氛围。][2020\-04\-01–2020\-12\-31]
- 领导跨部门团队，通过问卷调查和焦点小组识别员工满意度关键因素
- 制定并实施改进措施，包括弹性工作制、职业发展通道和即时激励
- 项目结束后员工满意度提升15%，离职率下降8%
#strong[关键字]：员工满意度、组织氛围、调研

#resume-subheading[HR数字化转型][][推动人力资源管理的数字化升级，提升运营效率和员工体验。][2019\-06\-01–2020\-03\-31]
- 主导HRIS系统选型与实施，整合招聘、考勤、薪酬和绩效模块
- 实现员工自助服务和线上审批，HR事务处理效率提升40%
- 建立人力资源数据看板，为管理层提供决策支持
#strong[关键字]：HRIS、数字化、流程优化
]

= 兴趣爱好
#resume-pad[
#strong[阅读]：管理书籍、心理学、历史

#strong[运动]：瑜伽、跑步、羽毛球
]

= 志愿服务
#resume-pad[
#resume-subheading[志愿者讲师][#link("https://www.shhra.org")[https\:\/\/www\.shhra\.org]][上海市人力资源管理协会][2019\-01\-01至今]
- 定期为中小企业提供人力资源管理公益培训，分享招聘、绩效管理等方面的实践经验
- 参与协会组织的行业调研和标准制定工作
- 担任高校HR专业学生的职业发展导师
]