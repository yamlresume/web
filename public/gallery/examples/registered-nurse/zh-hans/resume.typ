#set document(
  title: "王雅婷 - 注册护士 | 心血管内科护理 | 8年临床经验",
  author: "王雅婷",
  keywords: "临床护理, 急危重症护理, 护理管理, 护理信息系统",
  description: "Résumé of 王雅婷",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[王雅婷]] #v(-0.2em)

#text(size: 1.44em)[注册护士 | 心血管内科护理 | 8年临床经验]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:wangyating.rn@outlook.com")[wangyating\.rn\@outlook\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/wangyating-rn")[https\:\/\/www\.linkedin\.com\/in\/wangyating\-rn]

中国，北京市，北京，北京市朝阳区建国路88号院2号楼，100022

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/wangyating-rn")[wangyating\-rn] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M385.2 167.6c6.4 0 12.6 .3 18.8 1.1-16.6-78.4-100.7-136.7-196.3-136.7-107.2 0-194.7 72.8-194.7 165.4 0 53.4 29.3 97.5 77.9 131.6l-19.3 58.6 68-34.1c24.4 4.8 43.8 9.7 68.2 9.7 6.2 0 12.1-.3 18.3-.8-4-12.9-6.2-26.6-6.2-40.8-.1-84.9 72.9-154 165.3-154zM280.7 114.7c14.5 0 24.2 9.7 24.2 24.4 0 14.5-9.7 24.2-24.2 24.2-14.8 0-29.3-9.7-29.3-24.2 .1-14.7 14.6-24.4 29.3-24.4zM144.3 163.3c-14.5 0-29.3-9.7-29.3-24.2 0-14.8 14.8-24.4 29.3-24.4 14.8 0 24.4 9.7 24.4 24.4 0 14.6-9.6 24.2-24.4 24.2zM563 319.4c0-77.9-77.9-141.3-165.4-141.3-92.7 0-165.4 63.4-165.4 141.3S305 460.7 397.6 460.7c19.3 0 38.9-5.1 58.6-9.9l53.4 29.3-14.8-48.6C534 402.1 563 363.2 563 319.4zM343.9 294.9c-9.7 0-19.3-9.7-19.3-19.6 0-9.7 9.7-19.3 19.3-19.3 14.8 0 24.4 9.7 24.4 19.3 0 10-9.7 19.6-24.4 19.6zm107.1 0c-9.7 0-19.3-9.7-19.3-19.6 0-9.7 9.7-19.3 19.3-19.3 14.5 0 24.4 9.7 24.4 19.3 .1 10-9.9 19.6-24.4 19.6z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://weixin.qq.com/")[WangYaTingRN]
]

= 简介

#resume-pad[
- 注册护士，护理学学士，8年三级综合医院心血管内科及重症护理经验
- 熟练掌握心电监护、静脉治疗、急救复苏、危重患者病情观察与护理文书书写
- 具备护理组长经验，擅长排班协调、低年资护士带教及护理质量持续改进
- 熟悉电子病历与护理信息系统，注重患者安全、健康宣教及多学科协作
- 持有护士执业证书、BLS及ACLS证书，英语可阅读医学文献并进行日常沟通
]

= 教育背景
#resume-pad[
#resume-subheading[北京协和医学院护理学院][#link("https://www.pumc.edu.cn")[https\:\/\/www\.pumc\.edu\.cn]][学士，护理学，成绩：3\.8\/4\.0][2012\-09\-01–2016\-06\-30]
- 系统学习临床护理、急危重症护理及护理管理核心课程
- 在附属医院完成内科、外科、急诊及ICU轮转实习
- 获校级护理技能竞赛二等奖，毕业成绩位列专业前15%
#strong[课程]：基础护理学、内科护理学、外科护理学、急危重症护理学、护理管理学、护理心理学、健康评估、护理伦理学
]

= 工作经历
#resume-pad[
#resume-subheading[心血管内科护理组长][#link("https://www.anhehospital.cn")[https\:\/\/www\.anhehospital\.cn]][北京安和医院][2021\-03\-01至今]
- 负责心血管内科病区护理小组日常管理，协调床位、排班及危重患者护理资源
- 参与制定并落实跌倒、压疮、静脉血栓等风险评估与闭环管理流程
- 带教新入职护士及实习护生，完成护理操作示范与考核
- 组织科室业务学习和应急演练，提升团队急救配合与突发事件处置能力
- 参与护理质量指标监测与PDCA持续改进，推动护理文书规范化
#strong[关键字]：护理管理、心血管护理、患者安全、临床带教、质量改进

#resume-subheading[注册护士][#link("https://www.renjiheart.cn")[https\:\/\/www\.renjiheart\.cn]][北京仁济心血管病医院][2018\-07\-01–2021\-02\-28]
- 负责心血管内科患者入院评估、生命体征监测、用药观察及健康宣教
- 熟练执行心电监护、静脉穿刺、输液泵和微量泵使用及危重患者护理
- 配合医生完成介入术后护理、胸痛中心流程及抢救工作
- 规范书写护理记录，参与交接班和不良事件上报
#strong[关键字]：心电监护、静脉治疗、介入护理、健康宣教、急救配合

#resume-subheading[注册护士][#link("https://www.kangtai-hospital.cn")[https\:\/\/www\.kangtai\-hospital\.cn]][北京康泰综合医院][2016\-07\-01–2018\-06\-30]
- 在内科病区完成基础护理、生命体征监测、给药及护理记录书写
- 参与夜班轮值与患者安全巡查，熟悉住院患者全流程护理
- 接受急救技能培训并参与科室应急演练
#strong[关键字]：基础护理、内科护理、患者安全、护理记录
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话二级甲等])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、医学英语阅读])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[临床护理]：专家], [#strong[关键字]：护理评估、静脉穿刺、心电监护、给药管理、伤口护理])

#grid(columns: (1fr, auto), align: (left, right), [#strong[急危重症护理]：高级], [#strong[关键字]：BLS、ACLS、除颤仪、抢救配合、病情观察])

#grid(columns: (1fr, auto), align: (left, right), [#strong[护理管理]：高级], [#strong[关键字]：排班协调、临床带教、质量改进、PDCA、不良事件分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[护理信息系统]：中级], [#strong[关键字]：电子病历、护理文书、数据统计、办公软件])
]

= 荣誉
#resume-pad[
#resume-subheading[年度优秀护士][][北京安和医院][2023\-05\-12]
- 因在心血管内科临床护理、患者安全及团队协作方面表现突出获奖
- 年度护理质量考核优秀，患者满意度位于科室前列

#resume-subheading[护理技能竞赛二等奖][][北京协和医学院护理学院][2015\-11\-20]
在无菌操作、静脉输液及心肺复苏项目中表现优异。
]

= 证书
#resume-pad[
#resume-subheading[中华人民共和国护士执业证书][][北京市卫生健康委员会][2016\-08\-15]

#resume-subheading[基础生命支持（BLS）证书][#link("https://www.heart.org/en/cpr")[https\:\/\/www\.heart\.org\/en\/cpr]][美国心脏协会][2024\-03\-10]

#resume-subheading[高级心血管生命支持（ACLS）证书][#link("https://www.heart.org/en/cpr")[https\:\/\/www\.heart\.org\/en\/cpr]][美国心脏协会][2024\-04\-20]

#resume-subheading[心血管专科护士培训证书][][北京护理学会][2022\-09\-30]
]

= 出版刊物
#resume-pad[
#resume-subheading[心血管内科老年患者跌倒风险分级护理实践][#link("https://www.zhhlzzs.com")[https\:\/\/www\.zhhlzzs\.com]][中华护理杂志][2021\-06\-01]
- 总结老年心血管疾病患者跌倒风险评估与分级护理经验
- 通过多学科协作和健康教育降低住院期间跌倒发生率
- 为病区护理质量改进提供实践参考
]

= 项目
#resume-pad[
#resume-subheading[心血管内科跌倒风险闭环管理项目][#link("https://www.anhehospital.cn/nursing-quality")[https\:\/\/www\.anhehospital\.cn\/nursing\-quality]][针对心血管内科住院患者跌倒风险开展评估、干预、追踪和复盘的护理质量改进项目。][2022\-01\-01–2022\-12\-31]
- 建立入院、转科、出院前动态跌倒风险评估流程
- 设计高风险患者标识、床旁宣教和环境改造清单
- 通过月度数据分析和PDCA循环持续优化护理措施
- 项目实施后病区跌倒发生率较上一年度下降
#strong[关键字]：患者安全、跌倒预防、PDCA、护理质量
]

= 兴趣爱好
#resume-pad[
#strong[专业学习]：护理文献阅读、急救培训、循证护理

#strong[生活爱好]：游泳、瑜伽、旅行
]

= 志愿服务
#resume-pad[
#resume-subheading[健康宣教志愿者][#link("https://www.cyqhealth.org")[https\:\/\/www\.cyqhealth\.org]][朝阳区社区健康服务中心][2019\-03\-01–2023\-12\-31]
- 参与社区高血压、冠心病患者健康宣教和用药指导
- 协助开展心肺复苏公众培训与义诊活动
- 为老年居民提供血压监测、饮食及运动建议
]