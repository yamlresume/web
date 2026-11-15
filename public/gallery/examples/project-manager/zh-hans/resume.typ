#set document(
  title: "李明 - 高级项目经理 | 8年互联网产品与项目交付经验",
  author: "李明",
  keywords: "项目管理, 工具与方法, 数据分析",
  description: "Résumé of 李明",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[李明]] #v(-0.2em)

#text(size: 1.44em)[高级项目经理 | 8年互联网产品与项目交付经验]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 0013 8000")[\+86 138 0013 8000] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:liming.pm@example.com")[liming\.pm\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://liming-pm.example.com")[https\:\/\/liming\-pm\.example\.com]

中国，北京市，北京，北京市朝阳区建国路88号，100022

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/liming-pm")[liming\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/liming-pm")[liming\-pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/liming-pm")[liming\-pm]
]

= 简介

#resume-pad[
- 拥有8年互联网行业项目管理经验，擅长从0到1推动复杂产品交付。
- 精通敏捷开发与瀑布模型，能够根据业务场景灵活选择项目管理方法。
- 具备出色的跨部门沟通与资源协调能力，曾同时管理5个以上并行项目。
- 注重数据驱动决策，通过量化指标持续优化项目流程与团队效率。
]

= 教育背景
#resume-pad[
#resume-subheading[清华大学][#link("https://www.tsinghua.edu.cn")[https\:\/\/www\.tsinghua\.edu\.cn]][硕士，管理科学与工程，成绩：3\.8\/4\.0][2013年9月–2016年7月]
- 主修管理科学与工程，研究方向为复杂项目调度与优化
- 参与多项企业合作课题，具备扎实的理论基础与实践能力
- 获得清华大学优秀研究生干部称号
#strong[课程]：项目管理、运筹学、系统工程、数据分析、组织行为学
]

= 工作经历
#resume-pad[
#resume-subheading[高级项目经理][#link("https://www.bytedance.com")[https\:\/\/www\.bytedance\.com]][字节跳动][2020年8月–2024年3月]
- 负责抖音电商中台项目的整体规划与交付，管理30人跨职能团队
- 建立敏捷迭代机制，将版本发布周期从6周缩短至2周
- 主导跨部门资源协调，推动产品、研发、测试、运营高效协同
- 建立项目风险预警体系，重大风险发生率降低40%
- 培养初级项目经理5名，提升团队整体项目管理能力
#strong[关键字]：敏捷开发、跨部门协作、风险管理、电商中台

#resume-subheading[项目经理][#link("https://www.alibaba.com")[https\:\/\/www\.alibaba\.com]][阿里巴巴][2016年7月–2020年7月]
- 负责天猫营销活动项目的全生命周期管理，年均交付项目20\+
- 协调设计、开发、测试与运营团队，确保活动按时上线
- 引入Jira与Confluence进行项目跟踪与文档管理，提升协作效率
- 通过数据分析优化活动转化率，平均提升15%
#strong[关键字]：项目全生命周期、营销活动、Jira、数据分析
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话一级甲等])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、TOEFL 105])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[项目管理]：专家], [#strong[关键字]：PMP、敏捷、Scrum、瀑布模型、风险管理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[工具与方法]：高级], [#strong[关键字]：Jira、Confluence、MS Project、Visio、Axure])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析]：高级], [#strong[关键字]：SQL、Tableau、Excel、Python])
]

= 荣誉
#resume-pad[
#resume-subheading[年度优秀项目经理][][字节跳动][2022年12月]
表彰在抖音电商中台项目中展现出的卓越项目管理能力与跨部门协调能力。

#resume-subheading[最佳项目交付奖][][阿里巴巴][2019年1月]
因双11营销活动项目按时高质量交付，获得团队最高荣誉。
]

= 证书
#resume-pad[
#resume-subheading[PMP认证][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][PMI][2021年6月]

#resume-subheading[敏捷认证Scrum Master][#link("https://www.scrumalliance.org")[https\:\/\/www\.scrumalliance\.org]][Scrum Alliance][2020年3月]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于敏捷方法的互联网项目管理实践][#link("https://www.example.com/publications/agile-pm")[https\:\/\/www\.example\.com\/publications\/agile\-pm]][项目管理技术][2021年9月]
探讨敏捷方法在互联网产品交付中的落地策略，结合实际案例分析如何提升项目成功率。
]

= 项目
#resume-pad[
#resume-subheading[抖音电商中台重构][#link("https://www.bytedance.com")[https\:\/\/www\.bytedance\.com]][对抖音电商中台进行架构升级，支撑日均千万级订单][2021年3月–2022年12月]
- 主导项目范围定义、里程碑规划与资源分配
- 协调8个技术团队完成微服务拆分与数据迁移
- 项目上线后系统稳定性提升至99\.99%，订单处理效率提升50%
#strong[关键字]：中台、微服务、架构升级
]

= 兴趣爱好
#resume-pad[
#strong[运动]：马拉松、游泳、羽毛球

#strong[阅读]：管理学、心理学、历史
]

= 志愿服务
#resume-pad[
#resume-subheading[志愿者][#link("https://www.cfpa.org.cn")[https\:\/\/www\.cfpa\.org\.cn]][中国扶贫基金会][2018年9月–2019年12月]
- 参与乡村儿童教育支持项目，组织募捐与物资发放
- 担任项目协调人，管理10人志愿者团队
- 累计志愿服务超过200小时
]