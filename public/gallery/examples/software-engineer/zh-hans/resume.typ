#set document(
  title: "王强 - 高级后端软件工程师 / 专注于大规模分布式系统",
  author: "王强",
  keywords: "后端开发, 分布式系统, 云原生, 数据库",
  description: "Résumé of 王强",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[王强]] #v(-0.2em)

#text(size: 1.44em)[高级后端软件工程师 \/ 专注于大规模分布式系统]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 0013 8000")[\+86 138 0013 8000] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:wangqiang.dev@example.com")[wangqiang\.dev\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://github.com/wangqiang-dev")[https\:\/\/github\.com\/wangqiang\-dev]

中国，浙江省，杭州，西湖区文一西路 969 号，310000

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/wangqiang-dev")[wangqiang\-dev] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/wangqiang-dev")[wangqiang\-dev]
]

= 简介

#resume-pad[
- 拥有 8 年以上软件研发经验，擅长设计高并发、高可用的分布式系统
- 熟悉微服务架构、容器化部署与云原生技术，主导过多个从 0 到 1 的核心业务系统
- 具备优秀的团队协作与跨部门沟通能力，热衷于技术分享与开源社区贡献
]

= 教育背景
#resume-pad[
#resume-subheading[浙江大学][#link("https://www.zju.edu.cn/")[https\:\/\/www\.zju\.edu\.cn\/]][硕士，计算机科学与技术，成绩：3\.8][2014年9月–2017年6月]
- 研究方向为分布式一致性协议与高性能存储，硕士论文获校级优秀论文
- 以第一作者发表 CCF\-B 类会议论文一篇
#strong[课程]：分布式系统、高级操作系统、算法设计与分析、大数据处理技术

#resume-subheading[南京大学][#link("https://www.nju.edu.cn/")[https\:\/\/www\.nju\.edu\.cn\/]][学士，软件工程，成绩：3\.7][2010年9月–2014年6月]
- 连续三年获得校级一等奖学金
- 参与开源项目开发，积累 Linux 环境下的工程实践能力
#strong[课程]：数据结构、数据库原理、操作系统、计算机网络
]

= 工作经历
#resume-pad[
#resume-subheading[高级后端工程师][#link("https://www.alibaba.com/")[https\:\/\/www\.alibaba\.com\/]][阿里巴巴集团][2020年7月至今]
- 负责交易核心链路的稳定性和性能优化，支撑双 11 峰值每秒 50 万笔订单
- 主导订单中心微服务化改造，落地全链路压测与混沌工程体系
- 推进 Go 技术栈在业务线推广，提升研发效率 30%
- 带领 5 人小组完成多个大促项目，培养 2 名新人成长为核心研发
#strong[关键字]：高并发、微服务、全链路压测、团队管理

#resume-subheading[后端软件开发工程师][#link("https://www.antgroup.com/")[https\:\/\/www\.antgroup\.com\/]][蚂蚁集团][2017年7月–2020年6月]
- 参与智能风控平台开发，使用 Flink 构建实时特征计算引擎
- 设计并实现规则引擎与模型推理服务，将决策延迟降低至 100ms 以内
- 负责日常需求迭代与线上问题排查，保障服务稳定性
#strong[关键字]：Flink、风控、规则引擎、Java

#resume-subheading[后端开发实习生][#link("https://www.huawei.com/")[https\:\/\/www\.huawei\.com\/]][华为技术有限公司][2016年9月–2017年6月]
- 参与分布式存储系统的开发，完成文件分片与副本同步模块的编码工作
- 编写自动化测试脚本，提升模块测试覆盖率至 85%
#strong[关键字]：分布式存储、C\+\+、自动化测试
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、技术文档阅读])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[后端开发]：专家], [#strong[关键字]：Java、Go、Python、Spring Boot、gRPC])

#grid(columns: (1fr, auto), align: (left, right), [#strong[分布式系统]：专家], [#strong[关键字]：Kafka、Redis、ZooKeeper、一致性算法])

#grid(columns: (1fr, auto), align: (left, right), [#strong[云原生]：高级], [#strong[关键字]：Kubernetes、Docker、Istio、Prometheus])

#grid(columns: (1fr, auto), align: (left, right), [#strong[数据库]：高级], [#strong[关键字]：MySQL、TiDB、PostgreSQL、索引优化])
]

= 荣誉
#resume-pad[
#resume-subheading[阿里巴巴双 11 技术尖兵][][阿里巴巴集团][2021年11月]
在 2021 年双 11 大促中，因保障核心交易链路零故障并获得显著性能提升而获此奖项。
]

= 证书
#resume-pad[
#resume-subheading[AWS Certified Solutions Architect \- Associate][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][Amazon Web Services][2022年3月]

#resume-subheading[软考系统架构设计师][#link("https://www.ruankao.org.cn/")[https\:\/\/www\.ruankao\.org\.cn\/]][人力资源和社会保障部][2019年11月]
]

= 出版刊物
#resume-pad[
#resume-subheading[一种基于 Raft 优化的分布式存储共识机制][][中国计算机学会(CCF) 分布式计算与系统会议][2016年10月]
提出一种改进的 Raft 联合共识算法，减少了领导选举延迟，并在 100 节点模拟集群中验证吞吐量提升 23%。
]

= 项目
#resume-pad[
#resume-subheading[开源分布式缓存组件 OpenCache][#link("https://github.com/wangqiang-dev/opencache")[https\:\/\/github\.com\/wangqiang\-dev\/opencache]][一个基于 Go 实现的高性能分布式缓存中间件，支持 LRU\/TTL 和多节点分片。][2021年1月至今]
- 设计并实现了分布式缓存的核心读写链路，采用一致性哈希进行数据分片
- 使用 gRPC 进行节点间通信，集成 Prometheus 指标暴露与 Grafana 监控界面
- 项目累计获得 800\+ Star，被多家创业公司用于生产环境
#strong[关键字]：Go、分布式缓存、一致性哈希

#resume-subheading[实时日志分析平台 LogStream][#link("https://github.com/wangqiang-dev/logstream")[https\:\/\/github\.com\/wangqiang\-dev\/logstream]][一个基于 Flink 和 Kafka 的日志实时聚合与分析平台。][2019年1月–2019年6月]
- 基于 Flink SQL 实现实时 ETL，支持毫秒级窗口聚合
- 设计消息回放与采样机制，保障数据准确性与系统吞吐
- 在蚂蚁内部上线后，处理日志量峰值达 200 万条\/秒
#strong[关键字]：Flink、Kafka、实时计算
]

= 兴趣爱好
#resume-pad[
#strong[开源社区]：Kubernetes、CNCF

#strong[户外运动]：登山、马拉松
]

= 志愿服务
#resume-pad[
#resume-subheading[组织者][][杭州开源技术社区][2021年1月至今]
- 定期组织线下技术分享会，邀请业内外专家交流云原生与后端架构实践
- 累计组织 20\+ 场活动，参与人数超 2000 人次
]