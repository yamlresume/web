#set document(
  title: "张伟 - 高级机械工程师 | 汽车行业 | 10年经验",
  author: "张伟",
  keywords: "CAD软件, 仿真分析, 机械设计, 项目管理, 编程与工具",
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

#text(size: 1.44em)[高级机械工程师 | 汽车行业 | 10年经验]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:zhangwei.mech@qq.com")[zhangwei\.mech\@qq\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/zhangwei-mech")[https\:\/\/www\.linkedin\.com\/in\/zhangwei\-mech]

中国，上海市，上海，上海市浦东新区世纪大道100号，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/zhangwei-mech")[zhangwei\-mech] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/zhangwei-mech")[zhangwei\-mech]
]

= 简介

#resume-pad[
- 机械工程硕士，10年汽车行业机械设计与开发经验，熟悉从概念设计到量产的全流程。
- 精通SolidWorks、CATIA、AutoCAD等CAD软件，熟练使用ANSYS、Abaqus进行有限元分析。
- 擅长汽车零部件结构设计、轻量化优化、公差分析及GD&T，具备丰富的项目管理经验。
- 具备良好的团队协作和沟通能力，曾领导5人团队完成多个重点项目，获得上海市科技进步二等奖。
- 持续学习新技术，关注新能源汽车和智能制造领域，致力于推动机械设计的创新与优化。
]

= 教育背景
#resume-pad[
#resume-subheading[上海交通大学][#link("https://www.sjtu.edu.cn")[https\:\/\/www\.sjtu\.edu\.cn]][硕士，机械工程，成绩：3\.8\/4\.0][2010\-09\-01–2013\-06\-30]
- 研究方向为汽车轻量化设计与结构优化，参与国家自然科学基金项目。
- 发表2篇EI论文，获得校级优秀硕士论文。
- 担任助教，辅导本科生机械设计课程。
#strong[课程]：高等机械设计、有限元分析、热力学与流体力学、机器人学、控制工程、材料科学与工程、先进制造技术、汽车系统动力学

#resume-subheading[华中科技大学][#link("https://www.hust.edu.cn")[https\:\/\/www\.hust\.edu\.cn]][学士，机械设计制造及其自动化，成绩：3\.6\/4\.0][2006\-09\-01–2010\-06\-30]
- 连续三年获得校级奖学金，担任机械创新协会会长。
- 参加全国大学生机械创新设计大赛，获湖北省一等奖。
- 毕业设计为“小型机器人机械臂设计”，获优秀毕业设计。
#strong[课程]：机械原理、机械设计、工程力学、电工电子技术、微机原理与接口技术、工程材料、互换性与技术测量、机械制造技术基础
]

= 工作经历
#resume-pad[
#resume-subheading[高级机械工程师][#link("https://www.saicmotor.com")[https\:\/\/www\.saicmotor\.com]][上海汽车集团股份有限公司][2018\-07\-01至今]
- 负责新能源汽车电池包结构设计与优化，主导完成3款车型的电池包开发，实现减重15%并满足碰撞安全要求。
- 使用CATIA进行3D建模和2D图纸绘制，运用ANSYS进行静力学、模态和疲劳分析，优化结构设计。
- 制定GD&T方案，与供应商进行技术沟通，确保零部件制造质量，降低生产成本10%。
- 领导5人跨部门团队，协调设计、仿真、工艺和采购，确保项目按时交付。
- 编写技术文档和设计规范，培训新员工，提升团队整体设计能力。
#strong[关键字]：电池包设计、轻量化、CATIA、ANSYS、GD&T、项目管理

#resume-subheading[机械工程师][#link("https://www.bosch.com.cn")[https\:\/\/www\.bosch\.com\.cn]][博世汽车部件（苏州）有限公司][2013\-07\-01–2018\-06\-30]
- 负责动力总成零部件的机械设计，包括变速箱壳体、支架和连接件，年产量超50万件。
- 使用SolidWorks进行详细设计，完成公差分析和尺寸链计算，确保装配精度。
- 参与DFMEA和PFMEA分析，识别设计风险并制定改进措施，产品不良率降低20%。
- 与德国总部团队协作，引入新设计标准，优化产品结构，缩短开发周期15%。
- 获得博世全球创新奖提名，连续两年被评为优秀员工。
#strong[关键字]：动力总成、SolidWorks、公差分析、DFMEA、制造工艺
]

= 语言
#resume-pad[
#strong[中文]：母语或双语水平

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、TOEFL 105、技术文档写作])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[CAD软件]：专家], [#strong[关键字]：SolidWorks、CATIA、AutoCAD、Creo、NX])

#grid(columns: (1fr, auto), align: (left, right), [#strong[仿真分析]：高级], [#strong[关键字]：ANSYS、Abaqus、HyperMesh、MATLAB、Simulink])

#grid(columns: (1fr, auto), align: (left, right), [#strong[机械设计]：专家], [#strong[关键字]：结构设计、轻量化、公差分析、GD&T、材料选型])

#grid(columns: (1fr, auto), align: (left, right), [#strong[项目管理]：中级], [#strong[关键字]：PMP、Agile、跨部门协作、风险管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[编程与工具]：中级], [#strong[关键字]：Python、C\+\+、MATLAB、Git])
]

= 荣誉
#resume-pad[
#resume-subheading[上海市科技进步二等奖][][上海市人民政府][2020\-12]
因在新能源汽车电池包轻量化设计方面的突出贡献，作为主要完成人获奖。

#resume-subheading[上汽集团优秀员工][][上海汽车集团股份有限公司][2019\-12]
年度绩效排名前5%，表彰在电池包开发项目中的卓越领导和团队协作。
]

= 证书
#resume-pad[
#resume-subheading[高级机械工程师职称][][上海市人力资源和社会保障局][2021\-06]

#resume-subheading[PMP认证][][项目管理协会（PMI）][2018\-09]

#resume-subheading[SolidWorks认证专家][][Dassault Systèmes][2015\-03]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于有限元分析的汽车悬架结构优化设计][#link("https://doi.org/10.3901/JME.2019.05.001")[https\:\/\/doi\.org\/10\.3901\/JME\.2019\.05\.001]][机械工程学报][2019\-05]
- 提出一种基于响应面法的悬架结构优化方法，实现减重12%并提高疲劳寿命。
- 通过ANSYS仿真和台架试验验证，结果误差小于5%。
- 被引次数超过30次，获期刊年度优秀论文。

#resume-subheading[轻量化材料在汽车车身中的应用研究][#link("https://doi.org/10.19562/j.chinasae.qcgc.2017.11.001")[https\:\/\/doi\.org\/10\.19562\/j\.chinasae\.qcgc\.2017\.11\.001]][汽车工程][2017\-11]
- 对比分析高强钢、铝合金和碳纤维复合材料在车身中的应用效果。
- 提出多材料混合车身设计方案，实现减重20%的同时满足碰撞安全法规。
- 为后续车型开发提供材料选型依据。
]

= 项目
#resume-pad[
#resume-subheading[新能源汽车电池包结构设计与优化][#link("https://www.saicmotor.com/tech/battery")[https\:\/\/www\.saicmotor\.com\/tech\/battery]][针对纯电动车型的电池包进行结构设计、轻量化和安全优化。][2020\-01\-01–2021\-12\-31]
- 设计电池包上下壳体、模组支架和冷却板，满足IP67防护等级和振动疲劳要求。
- 采用拓扑优化和尺寸优化方法，实现电池包减重15%，能量密度提升8%。
- 通过CAE仿真和物理试验验证，顺利通过国标GB 38031碰撞安全测试。
- 项目投产后，年产量达10万台，新增产值超5亿元。
#strong[关键字]：电池包、轻量化、拓扑优化、碰撞安全

#resume-subheading[某车型底盘轻量化项目][][对某轿车底盘进行轻量化设计，采用铝合金和液压成型技术。][2018\-03\-01–2019\-12\-31]
- 重新设计前副车架和后扭力梁，采用铝合金材料，减重25%。
- 使用HyperMesh进行网格划分和优化，通过Abaqus进行强度刚度分析。
- 协调供应商完成样件制造和台架试验，满足耐久性要求。
- 项目成果应用于两款车型，年节约成本约2000万元。
#strong[关键字]：底盘、铝合金、液压成型、轻量化
]

= 兴趣爱好
#resume-pad[
#strong[技术]：3D打印、机器人技术、智能制造

#strong[户外]：徒步、摄影、骑行
]

= 志愿服务
#resume-pad[
#resume-subheading[技术讲师][#link("https://www.cmes.org")[https\:\/\/www\.cmes\.org]][中国机械工程学会][2016\-01\-01–2020\-12\-31]
- 作为志愿者讲师，为高校学生和初入职场工程师讲授机械设计实践课程。
- 组织“机械创新设计”工作坊，累计培训学员超过500人。
- 参与学会年度学术会议的组织工作，负责分会场协调。
]