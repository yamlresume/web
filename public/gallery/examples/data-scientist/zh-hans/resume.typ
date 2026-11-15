#set document(
  title: "林欣然 - 资深数据科学家 | 机器学习与业务增长",
  author: "林欣然",
  keywords: "数据分析与统计建模, 机器学习与深度学习, 大数据与工程化, 数据可视化与商业分析",
  description: "Résumé of 林欣然",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[林欣然]] #v(-0.2em)

#text(size: 1.44em)[资深数据科学家 | 机器学习与业务增长]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:lin.xinran@example.com")[lin\.xinran\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linxinran.dev")[https\:\/\/www\.linxinran\.dev]

中国，上海市，上海，上海市浦东新区世纪大道100号，200120

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/linxinran")[linxinran] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/linxinran")[linxinran]
]

= 简介

#resume-pad[
- 统计学与计算机科学背景，7 年数据科学与机器学习建模经验
- 精通 Python、SQL、Spark，熟悉端到端数据管道与 MLOps 实践
- 擅长利用机器学习与因果推断解决营销、风控与运营优化问题
- 有带领团队与跨部门协作经验，注重模型可解释性与业务落地
]

= 教育背景
#resume-pad[
#resume-subheading[复旦大学][#link("https://www.fudan.edu.cn")[https\:\/\/www\.fudan\.edu\.cn]][硕士，统计学，成绩：3\.9\/4\.0][2014年9月–2017年6月]
- 主修统计学与数据科学方向，论文聚焦大规模数据下的因果推断方法
- 获国家奖学金和校级优秀毕业生荣誉
- 参与导师课题组客户价值分析项目，独立完成特征工程与建模
#strong[课程]：高级计量经济学、统计学习理论、贝叶斯数据分析、机器学习、时间序列与预测、因果推断

#resume-subheading[南京大学][#link("https://www.nju.edu.cn")[https\:\/\/www\.nju\.edu\.cn]][学士，数学与应用数学，成绩：3\.7\/4\.0][2010年9月–2014年6月]
- 打下扎实的数学与统计基础，辅修计算机科学课程
- 参与校级创新项目，使用回归模型分析学生成绩影响因素
#strong[课程]：数学分析、高等代数、概率论与数理统计、常微分方程、数值计算、数据结构
]

= 工作经历
#resume-pad[
#resume-subheading[高级数据科学家][#link("https://www.yunqitech.cn")[https\:\/\/www\.yunqitech\.cn]][云启数智科技有限公司][2021年1月至今]
- 负责公司核心推荐系统的算法优化，提升 CTR 15%，带动 GMV 增长 8%
- 搭建因果推断中台，支撑产品端 30\+ 次策略效果评估实验
- 主导组建 5 人数据科学小组，建立模型迭代与监控规范
- 与工程团队共建 MLOps 流程，实现模型每周自动重训与灰度发布
#strong[关键字]：推荐系统、因果推断、MLOps、团队管理

#resume-subheading[数据科学家][#link("https://www.huaxindata.cn")[https\:\/\/www\.huaxindata\.cn]][华信数据技术有限公司][2018年7月–2020年12月]
- 为金融风控场景开发客户违约预测模型，KS 值提升 0\.12，坏账率下降 18%
- 搭建自动化特征工程管道，特征上线周期从两周缩短至两天
- 设计并实施 A\/B 测试框架，推动销售策略科学化决策
- 参与数据治理项目，制定统一指标口径与质量监控规则
#strong[关键字]：风控建模、特征工程、A\/B测试、数据治理
]

= 语言
#resume-pad[
#strong[中文]：母语或双语水平

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、雅思 7\.0])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[数据分析与统计建模]：专家], [#strong[关键字]：Python、R、SQL、统计检验、回归分析])

#grid(columns: (1fr, auto), align: (left, right), [#strong[机器学习与深度学习]：高级], [#strong[关键字]：Scikit\-learn、XGBoost、TensorFlow、PyTorch、自然语言处理、计算机视觉])

#grid(columns: (1fr, auto), align: (left, right), [#strong[大数据与工程化]：中级], [#strong[关键字]：Spark、Hive、Airflow、Docker、Kubernetes、MLflow])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据可视化与商业分析]：高级], [#strong[关键字]：Tableau、Power BI、Matplotlib、Seaborn、A\/B测试])
]

= 荣誉
#resume-pad[
#resume-subheading[年度最佳数据科学项目奖][][云启数智科技有限公司][2022年12月]
因主导的智能推荐系统优化项目显著提升业务指标，获公司年度最佳项目奖。

#resume-subheading[Kaggle 竞赛银牌][][Kaggle][2019年6月]
在“商店商品销量预测”竞赛中获银牌，排名前 3%。
]

= 证书
#resume-pad[
#resume-subheading[AWS 机器学习专项认证][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][亚马逊云科技][2022年3月]

#resume-subheading[阿里云高级数据分析师认证][#link("https://www.aliyun.com/")[https\:\/\/www\.aliyun\.com\/]][阿里云][2020年8月]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于多任务学习的金融用户行为预测研究][#link("https://www.example.com/journal")[https\:\/\/www\.example\.com\/journal]][计算机科学与应用][2021年4月]
提出一种多任务学习框架，联合建模用户点击、转化与流失行为，在真实数据集上较单任务模型提升 12% 的 AUC。
]

= 项目
#resume-pad[
#resume-subheading[用户流失预警系统][#link("https://github.com/linxinran/churn-prediction")[https\:\/\/github\.com\/linxinran\/churn\-prediction]][基于机器学习的用户流失预测与干预系统][2020年1月–2020年6月]
设计并实现用户流失实时预警系统，融合用户行为与交易数据，输出流失风险评分与挽留建议。模型精度 0\.86，召回率 0\.79。
#strong[关键字]：流失预测、分类模型、模型部署

#resume-subheading[营销响应智能优化平台][][自动化营销人群圈选与效果评估平台][2021年3月–2021年12月]
开发营销活动响应预测与预算分配优化模块，通过 uplift modeling 识别高响应人群，实现单位成本 ROI 提升 25%。
#strong[关键字]：Uplift Modeling、预算优化、营销分析
]

= 兴趣爱好
#resume-pad[
#strong[数据竞赛]：Kaggle、天池、DataFountain

#strong[开源与分享]：GitHub、技术博客、社区分享
]

= 志愿服务
#resume-pad[
#resume-subheading[数据科学讲师][#link("https://www.datasci-volunteer.org")[https\:\/\/www\.datasci\-volunteer\.org]][城市数据科学公益社][2022年9月至今]
为大学生和转行人员讲授 Python 数据分析入门课程，累计服务 200\+ 学员，设计实战案例与辅导材料。
]