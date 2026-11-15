#set document(
  title: "张伟 - DevOps 工程师 | 云原生与自动化运维专家",
  author: "张伟",
  keywords: "容器与编排, 云平台, CI/CD, 基础设施即代码, 监控与日志, 编程语言",
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

#text(size: 1.44em)[DevOps 工程师 | 云原生与自动化运维专家]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 0013 8000")[\+86 138 0013 8000] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:zhangwei.devops@example.com")[zhangwei\.devops\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://zhangwei.devops.example.com")[https\:\/\/zhangwei\.devops\.example\.com]

中国，北京，北京，北京市海淀区中关村大街 27 号，100085

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/zhangwei-devops")[zhangwei\-devops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/zhangwei-devops")[zhangwei\-devops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/zhangwei-devops")[zhangwei\-devops]
]

= 简介

#resume-pad[
- 5 年以上 DevOps 与云原生领域经验，擅长构建高可用、可扩展的 CI\/CD 流水线和基础设施自动化平台
- 精通 Kubernetes、Docker、Terraform、Ansible 等工具，具备大规模集群运维与故障排查能力
- 熟悉 AWS、阿里云等云平台，能够设计并实施多云架构下的持续交付与监控告警方案
- 具备良好的团队协作与沟通能力，推动 DevOps 文化落地，提升研发效能与系统稳定性
]

= 教育背景
#resume-pad[
#resume-subheading[清华大学][#link("https://www.tsinghua.edu.cn")[https\:\/\/www\.tsinghua\.edu\.cn]][硕士，计算机科学与技术，成绩：3\.9\/4\.0][2017年9月–2020年7月]
- 研究方向为云原生计算与自动化运维，参与多项实验室科研项目
- 荣获清华大学优秀研究生称号，多次获得学业奖学金
#strong[课程]：分布式系统、云计算与虚拟化、高级操作系统、计算机网络、数据库系统、软件工程

#resume-subheading[北京邮电大学][#link("https://www.bupt.edu.cn")[https\:\/\/www\.bupt\.edu\.cn]][学士，软件工程，成绩：3\.7\/4\.0][2013年9月–2017年7月]
- 系统学习计算机科学与软件工程核心课程，奠定扎实的编程与系统设计基础
- 担任班级学习委员，组织多次技术分享与编程竞赛
#strong[课程]：数据结构与算法、操作系统、计算机网络、数据库原理、软件测试、编译原理
]

= 工作经历
#resume-pad[
#resume-subheading[高级 DevOps 工程师][#link("https://www.bytedance.com")[https\:\/\/www\.bytedance\.com]][字节跳动][2022年12月至今]
- 负责公司级云原生平台的建设与维护，支撑数千个微服务的持续交付与稳定运行
- 设计并落地基于 Kubernetes 的多集群管理方案，实现跨可用区的高可用部署与弹性伸缩
- 主导 CI\/CD 流水线优化，将平均构建部署时间从 25 分钟降低至 8 分钟，显著提升研发效率
- 推动基础设施即代码（IaC）实践，使用 Terraform 和 Ansible 管理云资源，确保环境一致性
- 建立全面的监控告警体系，基于 Prometheus、Grafana 和 Alertmanager 实现秒级故障发现与响应
- 指导初级工程师，组织内部技术分享，推动 DevOps 最佳实践在团队内落地
#strong[关键字]：Kubernetes、云原生、CI\/CD、Terraform、监控告警

#resume-subheading[DevOps 工程师][#link("https://www.alibabagroup.com")[https\:\/\/www\.alibabagroup\.com]][阿里巴巴集团][2020年7月–2022年12月]
- 参与电商核心系统的持续集成与持续部署平台开发，服务数百个业务团队
- 使用 Jenkins 和 GitLab CI 构建自动化流水线，集成代码扫描、单元测试和自动化部署
- 维护基于 Docker 和 Kubernetes 的容器化环境，优化资源利用率与调度策略
- 搭建 ELK 日志收集与分析平台，帮助开发团队快速定位线上问题
- 参与双十一大促保障，完成容量规划、压测和应急预案演练，确保系统平稳运行
#strong[关键字]：Jenkins、GitLab CI、Docker、ELK、阿里云

#resume-subheading[运维开发工程师][#link("https://www.tencent.com")[https\:\/\/www\.tencent\.com]][腾讯科技][2018年7月–2020年6月]
- 负责游戏业务服务器的自动化运维与监控，保障 7x24 小时稳定运行
- 开发自动化运维脚本和工具，使用 Python 和 Shell 实现批量部署、配置管理和日志分析
- 参与构建内部 CMDB 和发布系统，提升运维操作的标准化与效率
- 协助处理线上故障，参与 root cause 分析并推动改进措施落地
#strong[关键字]：Python、Shell、自动化运维、CMDB、监控
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话二级甲等])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、TOEFL 105])

#grid(columns: (1fr, auto), align: (left, right), [#strong[日语]：初级水平], [#strong[关键字]：JLPT N4])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[容器与编排]：专家], [#strong[关键字]：Kubernetes、Docker、Helm、Istio、Containerd])

#grid(columns: (1fr, auto), align: (left, right), [#strong[云平台]：高级], [#strong[关键字]：AWS、阿里云、腾讯云、Azure、多云架构])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CI\/CD]：高级], [#strong[关键字]：Jenkins、GitLab CI、Argo CD、GitHub Actions、Tekton])

#grid(columns: (1fr, auto), align: (left, right), [#strong[基础设施即代码]：高级], [#strong[关键字]：Terraform、Ansible、Pulumi、CloudFormation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[监控与日志]：中级], [#strong[关键字]：Prometheus、Grafana、ELK、Loki、Alertmanager])

#grid(columns: (1fr, auto), align: (left, right), [#strong[编程语言]：高级], [#strong[关键字]：Python、Go、Shell、Java、SQL])
]

= 荣誉
#resume-pad[
#resume-subheading[年度优秀员工][][字节跳动][2024年1月]
表彰在云原生平台建设中展现出的卓越技术领导力与跨团队协作能力，推动研发效能显著提升。

#resume-subheading[技术创新奖][][阿里巴巴集团][2021年12月]
因在 CI\/CD 流水线优化和容器化改造中的突出贡献，获得部门技术创新奖。
]

= 证书
#resume-pad[
#resume-subheading[AWS Certified DevOps Engineer – Professional][#link("https://aws.amazon.com/certification/certified-devops-engineer-professional/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-devops\-engineer\-professional\/]][Amazon Web Services][2023年3月]

#resume-subheading[Certified Kubernetes Administrator (CKA)][#link("https://www.cncf.io/certification/cka/")[https\:\/\/www\.cncf\.io\/certification\/cka\/]][Cloud Native Computing Foundation][2021年8月]

#resume-subheading[Red Hat Certified Engineer (RHCE)][#link("https://www.redhat.com/en/services/certification/rhce")[https\:\/\/www\.redhat\.com\/en\/services\/certification\/rhce]][Red Hat][2019年11月]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于 Kubernetes 的云原生持续交付实践][#link("https://www.devopschina.org/publications/cloud-native-cd")[https\:\/\/www\.devopschina\.org\/publications\/cloud\-native\-cd]][中国 DevOps 社区][2023年6月]
- 探讨如何利用 Kubernetes 和 Argo CD 构建高效的持续交付流水线
- 分享多集群管理、灰度发布和自动化回滚的实践经验
- 分析云原生时代下 DevOps 团队面临的挑战与应对策略
]

= 项目
#resume-pad[
#resume-subheading[云原生 CI\/CD 平台][#link("https://github.com/zhangwei-devops/cloud-native-cicd")[https\:\/\/github\.com\/zhangwei\-devops\/cloud\-native\-cicd]][基于 Kubernetes 和 Argo CD 的企业级持续集成与持续交付平台][2023年1月至今]
- 设计并实现面向多团队的 CI\/CD 平台，支持自动化构建、测试、镜像打包和部署
- 集成 Kubernetes、Argo CD、Harbor 和 SonarQube，提供端到端的持续交付能力
- 平台上线后支撑日均 2000\+ 次构建部署，研发交付效率提升 40%
#strong[关键字]：Kubernetes、Argo CD、CI\/CD、云原生

#resume-subheading[微服务监控告警系统][#link("https://github.com/zhangwei-devops/microservice-monitoring")[https\:\/\/github\.com\/zhangwei\-devops\/microservice\-monitoring]][面向大规模微服务的可观测性平台，提供指标、日志和告警能力][2022年3月–2022年12月]
- 构建基于 Prometheus Operator 的监控体系，覆盖 500\+ 微服务实例
- 设计自定义指标与告警规则，实现业务指标与基础设施指标的统一采集
- 接入 Grafana 统一看板和 Alertmanager 告警分发，故障平均发现时间缩短 70%
#strong[关键字]：Prometheus、Grafana、可观测性、微服务

#resume-subheading[自动化运维平台][#link("https://github.com/zhangwei-devops/autoops-platform")[https\:\/\/github\.com\/zhangwei\-devops\/autoops\-platform]][基于 Ansible 的自动化运维管理平台][2020年9月–2021年8月]
- 开发自动化运维平台，集成资产管理和批量执行功能
- 使用 Ansible 和 Python 实现配置管理、应用部署和巡检任务自动化
- 平台上线后减少 60% 的人工操作，提升运维效率与准确性
#strong[关键字]：Ansible、Python、自动化运维、CMDB
]

= 兴趣爱好
#resume-pad[
#strong[开源]：Kubernetes、Prometheus、Terraform

#strong[运动]：跑步、游泳、骑行

#strong[摄影]：风光摄影、人像摄影
]

= 志愿服务
#resume-pad[
#resume-subheading[社区讲师][#link("https://www.copu.org.cn")[https\:\/\/www\.copu\.org\.cn]][中国开源软件推进联盟][2021年3月至今]
- 定期在社区分享云原生与 DevOps 技术实践，累计举办 10\+ 场线上讲座
- 参与开源项目文档翻译与代码贡献，推动国内开源生态发展
- 担任技术大会志愿者，协助组织 DevOps 主题分论坛

#resume-subheading[志愿者][#link("https://www.devopsbeijing.org")[https\:\/\/www\.devopsbeijing\.org]][北京 DevOps 社区][2019年6月–2021年2月]
- 协助组织月度技术沙龙，负责活动策划、嘉宾邀请和现场协调
- 运营社区技术微信群，解答成员问题并整理分享资料
]