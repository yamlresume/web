#set document(
  title: "陈昊然 - 人工智能工程师 | 大模型与机器学习",
  author: "陈昊然",
  keywords: "机器学习与深度学习, 大模型应用, 工程与部署, 数据处理",
  description: "Résumé of 陈昊然",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陈昊然]] #v(-0.2em)

#text(size: 1.44em)[人工智能工程师 | 大模型与机器学习]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 0013 8000")[\+86 138 0013 8000] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chen.haoran.ai@example.com")[chen\.haoran\.ai\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.haoran-ai.com")[https\:\/\/www\.haoran\-ai\.com]

中国，北京市，北京，北京市海淀区中关村大街 27 号，100080

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/haoran-ai")[haoran\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/haoran-chen-ai")[haoran\-chen\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/haoran-ai")[haoran\-ai]
]

= 简介

#resume-pad[
- 人工智能工程师，专注大语言模型、RAG 与机器学习工程化，具备从数据、训练、评估到部署的全链路经验。
- 熟练使用 PyTorch、TensorFlow 与 Transformers，熟悉向量数据库、LangChain 和 MLOps，能够将算法原型转化为稳定服务。
- 有推荐系统、智能问答、文本理解等落地经验，注重模型效果、推理成本与线上稳定性。
- 具备跨团队协作与技术分享能力，持续关注生成式 AI、多模态与智能体方向。
]

= 教育背景
#resume-pad[
#resume-subheading[清华大学][#link("https://www.tsinghua.edu.cn")[https\:\/\/www\.tsinghua\.edu\.cn]][硕士，计算机科学与技术，成绩：3\.9\/4\.0][2016年9月–2019年6月]
- 研究方向为自然语言处理与机器学习，参与实验室文本理解与知识抽取项目。
- 完成大规模文本分类与实体识别实验，发表 1 篇中文会议论文。
- 担任机器学习与数据结构课程助教，负责习题课与项目辅导。
#strong[课程]：机器学习、深度学习、自然语言处理、计算机视觉、概率图模型、分布式系统、算法设计与分析
]

= 工作经历
#resume-pad[
#resume-subheading[高级人工智能工程师][#link("https://www.yunzhi-ai.com")[https\:\/\/www\.yunzhi\-ai\.com]][云智科技有限公司][2022年7月至今]
- 负责企业级大模型应用平台的核心算法与工程架构，支持知识库问答、文档摘要和智能客服等场景。
- 设计 RAG 检索增强生成链路，优化文档切分、召回、重排与提示词策略，问答准确率提升 23%。
- 主导 7B\/13B 开源模型的领域微调与 LoRA 实验，建立离线评测与人工反馈闭环，降低幻觉率。
- 推动模型服务容器化与灰度发布，结合缓存、批处理与量化将推理成本降低约 35%。
- 与产品、数据和后端团队协作，制定技术方案与迭代计划，指导 3 名初级算法工程师。
#strong[关键字]：大语言模型、RAG、LoRA、PyTorch、MLOps、模型量化

#resume-subheading[人工智能工程师][#link("https://www.xingtu-data.com")[https\:\/\/www\.xingtu\-data\.com]][星图数据科技有限公司][2019年7月–2022年6月]
- 参与个性化推荐系统研发，负责特征工程、召回与排序模型迭代，提升点击率与转化率。
- 使用 TensorFlow 构建深度学习排序模型，设计离线训练与在线推理流程，支撑千万级用户请求。
- 搭建 A\/B 实验与模型监控看板，分析关键指标并快速定位效果波动。
- 与数据平台团队合作优化 Spark 特征流水线，缩短模型训练数据准备时间。
#strong[关键字]：推荐系统、TensorFlow、特征工程、Spark、A\/B 实验
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、技术文档阅读、英文技术分享])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[机器学习与深度学习]：专家], [#strong[关键字]：PyTorch、TensorFlow、Transformers、模型微调、强化学习])

#grid(columns: (1fr, auto), align: (left, right), [#strong[大模型应用]：高级], [#strong[关键字]：LLM、RAG、LangChain、向量数据库、Prompt Engineering])

#grid(columns: (1fr, auto), align: (left, right), [#strong[工程与部署]：高级], [#strong[关键字]：Python、Docker、Kubernetes、FastAPI、MLOps])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据处理]：高级], [#strong[关键字]：SQL、Spark、Pandas、数据清洗])
]

= 荣誉
#resume-pad[
#resume-subheading[优秀员工奖][][云智科技有限公司][2023年12月]
- 因在大模型应用平台项目中的突出贡献获奖。
- 主导 RAG 链路优化与推理成本治理，推动平台在多个业务线落地。

#resume-subheading[国家奖学金][][清华大学][2017年10月]
- 研究生阶段学业成绩与科研表现优异。
- 参与自然语言处理方向研究，完成多项实验与论文撰写工作。
]

= 证书
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/certification/certified-machine-learning-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-machine\-learning\-specialty\/]][Amazon Web Services][2021年8月]

#resume-subheading[TensorFlow Developer Certificate][#link("https://www.tensorflow.org/certificate")[https\:\/\/www\.tensorflow\.org\/certificate]][Google][2020年3月]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于预训练语言模型的中文文本分类方法研究][#link("https://doi.org/10.12345/nlp.2021.001")[https\:\/\/doi\.org\/10\.12345\/nlp\.2021\.001]][中国计算机学会自然语言处理专委会会议][2021年10月]
- 研究预训练语言模型在中文文本分类任务中的迁移能力与微调策略。
- 通过对比实验分析不同预训练模型、数据增强与提示学习方法的效果。
- 在多个中文文本分类数据集上验证方法的有效性与稳定性。
]

= 项目
#resume-pad[
#resume-subheading[企业知识库智能问答系统][#link("https://github.com/haoran-ai/enterprise-rag")[https\:\/\/github\.com\/haoran\-ai\/enterprise\-rag]][基于 RAG 的企业知识库问答平台，支持文档解析、检索与答案生成。][2023年1月–2023年12月]
- 设计文档解析、向量化、召回、重排与生成一体化链路。
- 引入多路召回与答案引用，提升复杂问题的可追溯性与准确率。
- 建立离线评测集与线上反馈机制，持续优化提示词与模型策略。
#strong[关键字]：RAG、大模型、向量检索、FastAPI

#resume-subheading[智能客服对话分析平台][#link("https://github.com/haoran-ai/dialog-insight")[https\:\/\/github\.com\/haoran\-ai\/dialog\-insight]][面向客服对话的意图识别、情绪分析与质检辅助平台。][2021年3月–2022年12月]
- 构建对话文本清洗、意图分类与情绪识别流水线。
- 使用预训练模型提升小样本场景下的分类效果。
- 为质检团队提供可视化分析看板与高风险对话提醒。
#strong[关键字]：NLP、意图识别、情绪分析、可视化
]

= 兴趣爱好
#resume-pad[
#strong[技术社区]：开源贡献、技术写作、学术分享

#strong[运动]：长跑、羽毛球、徒步
]

= 志愿服务
#resume-pad[
#resume-subheading[人工智能方向志愿者][#link("https://www.ccf.org.cn")[https\:\/\/www\.ccf\.org\.cn]][中国计算机学会青年计算机科技论坛][2020年1月–2022年12月]
- 参与人工智能主题论坛与技术沙龙的筹备与组织工作。
- 协助邀请讲者、整理活动资料并维护社区交流群。
- 推动高校学生与产业界工程师之间的技术交流。
]