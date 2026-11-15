#set document(
  title: "陈子昂 - 高级网络安全工程师 | 渗透测试与安全运营",
  author: "陈子昂",
  keywords: "渗透测试与红队评估, 安全运营与事件响应, 云原生与基础设施安全, 安全开发与自动化, 合规与风险管理",
  description: "Résumé of 陈子昂",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[陈子昂]] #v(-0.2em)

#text(size: 1.44em)[高级网络安全工程师 | 渗透测试与安全运营]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 138 1234 5678")[\+86 138 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:chen.ziang@securemail.cn")[chen\.ziang\@securemail\.cn] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.chenziang.dev")[https\:\/\/www\.chenziang\.dev]

中国，北京市，北京，北京市海淀区中关村南大街 5 号，100081

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/chenziang-sec")[chenziang\-sec] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/chenziang-sec")[chenziang\-sec] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 640 512\"><path fill=\"#000000\" d=\"M170.5 148.1l0 217.5 23.4 0 7.7 26.4 42-26.4 49.5 0 0-217.5-122.7 0zm97.8 193.9l-27.9 0-27.9 17.5-5.1-17.5-11.9 0 0-170.3 72.8 0 0 170.3zM149.8 247.7l-52.3 0c1.7-27.1 2.2-51.6 2.2-73.5l51.2 0s2-22.6-8.6-22.3l-88.5 0c3.5-13.1 7.9-26.7 13.1-40.7 0 0-24.1 0-32.3 21.6-3.4 8.9-13.2 43.1-30.7 78.1 5.9-.6 25.4-1.2 36.8-22.2 2.1-5.9 2.5-6.7 5.1-14.5l28.9 0c0 10.5-1.2 66.9-1.7 73.4l-52.3 0c-11.7 0-15.6 23.6-15.6 23.6l65.6 0c-4.4 49.9-28 91.9-70.8 125.1 20.5 5.9 40.9-.9 51-9.9 0 0 23-20.9 35.6-69.3l54 64.9s7.9-26.9-1.2-40c-7.6-8.9-28.1-33.1-36.8-41.8L87.9 312c4.4-14 7-27.6 7.9-40.7l61.6 0s-.1-23.6-7.6-23.6l0 0zm412-1.6c20.8-25.6 45-58.6 45-58.6s-18.6-14.8-27.4-4.1c-6 8.2-36.8 48.2-36.8 48.2l19.2 14.4zM411.8 187c-9-8.2-25.9 2.1-25.9 2.1s39.5 55 41.1 57.4l19.5-13.7s-25.7-37.6-34.7-45.9l0 0 0 0zM640 258.4c-19.8 0-130.9 .9-131.1 .9l0-101c4.8 0 12.4-.4 22.8-1.2 40.9-2.4 70.1-4 87.8-4.8 0 0 12.2-27.2-.6-33.4-3.1-1.2-23.2 4.6-23.2 4.6s-165.2 16.5-232.4 18c1.6 8.8 7.6 17.1 15.8 19.6 13.3 3.5 22.7 1.7 49.2 .9 24.8-1.6 43.7-2.4 56.5-2.4l0 99.8-133.5 0s2.8 22.3 25.5 22.9l107.9 0 0 70.9c0 14-11.2 22-24.5 21.1-14.1 .1-26.1-1.1-41.7-1.8 2 4 6.3 14.4 19.3 21.8 9.9 4.8 16.2 6.6 26 6.6 29.6 0 45.7-17.3 44.9-45.3l0-73.3 122.4 0c9.7 0 8.7-23.8 8.7-23.8l0 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.zhihu.com/people/chenziang-sec")[chenziang\-sec]
]

= 简介

#resume-pad[
资深网络安全工程师，拥有多年金融与互联网行业安全建设经验，擅长渗透测试、安全运营、云原生安全与零信任架构落地。

- 主导多家大型企业红蓝对抗、攻防演练与应急响应，累计发现并修复高危漏洞 200\+ 个
- 熟悉等保 2\.0、ISO 27001、GDPR 等合规要求，具备从 0 到 1 搭建安全管理体系的经验
- 熟练使用 Python、Go、Bash 编写安全工具，推动安全左移与 DevSecOps 流程建设
- 持有 CISSP、OSCP、CISP 等专业认证，具备良好的跨团队沟通与项目管理能力
]

= 教育背景
#resume-pad[
#resume-subheading[北京邮电大学][#link("https://www.bupt.edu.cn")[https\:\/\/www\.bupt\.edu\.cn]][硕士，网络空间安全，成绩：3\.8\/4\.0][2016年9月–2019年6月]
- 研究方向为云原生安全与威胁检测，参与国家级网络安全重点实验室项目
- 发表 2 篇安全领域学术论文，获校级优秀研究生称号
- 担任信息安全竞赛战队队长，带队进入全国总决赛
#strong[课程]：密码学与安全协议、网络攻防技术、操作系统安全、数据库安全、云安全与虚拟化、安全编程与代码审计

#resume-subheading[南京邮电大学][#link("https://www.njupt.edu.cn")[https\:\/\/www\.njupt\.edu\.cn]][学士，信息安全，成绩：3\.7\/4\.0][2012年9月–2016年6月]
- 系统学习信息安全基础理论，完成网络攻防、密码学与系统安全等核心课程
- 参与校信息安全协会，组织校内 CTF 培训与安全沙龙
#strong[课程]：计算机网络、信息安全导论、密码学基础、操作系统、数据结构与算法、Web 安全
]

= 工作经历
#resume-pad[
#resume-subheading[高级网络安全工程师][#link("https://www.yundunsec.com")[https\:\/\/www\.yundunsec\.com]][云盾网络安全科技有限公司][2023年7月至今]
- 负责金融云平台安全架构设计与落地，覆盖 IAM、数据加密、网络隔离与零信任接入
- 主导红蓝对抗与攻防演练，优化检测规则 300\+ 条，将高危事件平均响应时间缩短 45%
- 推动 DevSecOps 建设，将 SAST、DAST、SCA 集成至 CI\/CD 流水线，上线前漏洞修复率提升至 95%
- 建立安全运营中心（SOC）指标体系，定期输出威胁情报与风险报告，支撑管理层决策
- 指导 5 人安全团队，制定培训与演练计划，提升团队渗透测试与应急响应能力
#strong[关键字]：零信任、云安全、红蓝对抗、DevSecOps、安全运营、应急响应

#resume-subheading[安全运营工程师][#link("https://www.xinghepay.com")[https\:\/\/www\.xinghepay\.com]][星河支付科技有限公司][2022年1月–2023年6月]
- 负责支付业务安全监控与事件响应，日均处理安全告警 2000\+ 条，误报率降低 30%
- 搭建基于 ELK 与 Suricata 的日志分析平台，实现异常登录、暴力破解与数据泄露场景的实时检测
- 参与等保 2\.0 三级测评与整改，完成 60\+ 项安全控制措施落地，顺利通过外部审计
- 编写 Python 自动化脚本，实现漏洞扫描、资产梳理与报告生成，节省每周 10 小时人工成本
- 组织季度安全意识培训与钓鱼演练，员工安全事件上报率提升 2 倍
#strong[关键字]：SIEM、等保 2\.0、ELK、Python、威胁检测、安全意识

#resume-subheading[渗透测试工程师][#link("https://www.beichencloud.com")[https\:\/\/www\.beichencloud\.com]][北辰云计算有限公司][2019年7月–2021年12月]
- 负责 Web、移动 App 与 API 渗透测试，累计完成 120\+ 个项目，发现高危漏洞 200\+ 个
- 编写渗透测试报告与修复建议，协助研发团队完成漏洞复现、修复验证与回归测试
- 建设内部漏洞知识库与测试用例库，推动安全测试标准化，提升团队交付效率 25%
- 参与客户红队评估与社工演练，模拟 APT 攻击路径，帮助客户完善边界防护与检测能力
#strong[关键字]：渗透测试、OWASP Top 10、Burp Suite、Metasploit、API 安全、红队评估
]

= 语言
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[中文]：母语或双语水平], [#strong[关键字]：普通话二级甲等])

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、TOEIC 900、技术文档写作])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[渗透测试与红队评估]：专家], [#strong[关键字]：Burp Suite、Metasploit、Nmap、OWASP Top 10、社会工程学])

#grid(columns: (1fr, auto), align: (left, right), [#strong[安全运营与事件响应]：高级], [#strong[关键字]：SIEM、Splunk、ELK、威胁情报、应急响应])

#grid(columns: (1fr, auto), align: (left, right), [#strong[云原生与基础设施安全]：高级], [#strong[关键字]：Kubernetes、Docker、容器安全、微隔离、零信任])

#grid(columns: (1fr, auto), align: (left, right), [#strong[安全开发与自动化]：高级], [#strong[关键字]：Python、Go、Bash、DevSecOps、代码审计])

#grid(columns: (1fr, auto), align: (left, right), [#strong[合规与风险管理]：中级], [#strong[关键字]：等保 2\.0、ISO 27001、GDPR、风险评估、安全审计])
]

= 荣誉
#resume-pad[
#resume-subheading[年度优秀安全工程师][][云盾网络安全科技有限公司][2024年12月]
表彰在云平台零信任安全架构落地与红蓝对抗演练中的突出贡献，推动高危事件响应效率提升 45%。

#resume-subheading[全国网络安全挑战赛二等奖][][中国网络安全挑战赛组委会][2018年11月]
作为战队核心成员参与 Web 安全与逆向工程赛项，在 300 余支队伍中进入全国前十。
]

= 证书
#resume-pad[
#resume-subheading[CISSP 国际注册信息系统安全专家][#link("https://www.isc2.org")[https\:\/\/www\.isc2\.org]][ISC2][2021年6月]

#resume-subheading[OSCP 认证渗透测试专家][#link("https://www.offsec.com")[https\:\/\/www\.offsec\.com]][Offensive Security][2020年3月]

#resume-subheading[CISP 注册信息安全专业人员][#link("https://www.cisp.cn")[https\:\/\/www\.cisp\.cn]][中国信息安全测评中心][2020年9月]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于零信任架构的企业云原生安全实践][#link("https://www.cnki.net")[https\:\/\/www\.cnki\.net]][《网络安全技术与应用》][2023年5月]
- 分析传统边界安全模型在云原生环境下面临的挑战
- 提出融合身份认证、微隔离与持续风险评估的零信任落地框架
- 结合金融行业案例验证方案在降低横向移动风险方面的效果

#resume-subheading[面向 API 资产的安全测试与风险治理方法][#link("https://www.cnki.net")[https\:\/\/www\.cnki\.net]][《信息安全研究》][2021年10月]
- 梳理 API 资产发现、权限校验与敏感数据暴露的常见风险
- 设计覆盖设计、开发、测试与运营阶段的 API 安全治理流程
- 给出自动化测试与持续监控的工程实践建议
]

= 引荐
#resume-pad[
#resume-subheading[李明远][前技术总监][limingyuan\@yundunsec\.com][\+86 139 0000 1234]
陈子昂在云平台安全架构与红蓝对抗项目中展现出扎实的技术功底和优秀的跨团队协作能力，能够独立负责复杂安全项目并推动落地。
]

= 项目
#resume-pad[
#resume-subheading[企业零信任访问平台][#link("https://www.yundunsec.com/projects/zero-trust")[https\:\/\/www\.yundunsec\.com\/projects\/zero\-trust]][面向多分支企业的统一身份认证与细粒度访问控制平台][2024年1月–2024年11月]
- 负责身份代理、策略引擎与风险评分模块的安全设计
- 实现基于设备指纹、用户行为与上下文风险的动态访问控制
- 支撑 5000\+ 员工远程办公场景，降低未授权访问风险 60%
#strong[关键字]：零信任、身份认证、微隔离、风险评分

#resume-subheading[云原生安全审计系统][#link("https://www.yundunsec.com/projects/cloud-audit")[https\:\/\/www\.yundunsec\.com\/projects\/cloud\-audit]][面向 Kubernetes 与容器环境的配置审计与运行时检测系统][2023年8月–2023年12月]
- 集成 CIS Benchmark 与自定义策略，实现集群配置基线自动化检查
- 基于 eBPF 采集容器运行时行为，检测异常进程、文件与网络活动
- 将审计结果接入 CI\/CD 与告警平台，推动 200\+ 项配置风险闭环
#strong[关键字]：Kubernetes、容器安全、eBPF、CIS Benchmark

#resume-subheading[红蓝对抗演练平台][#link("https://www.beichencloud.com/projects/red-blue")[https\:\/\/www\.beichencloud\.com\/projects\/red\-blue]][支持自动化攻击编排与防御效果评估的攻防演练平台][2021年4月–2021年12月]
- 设计攻击剧本编排、目标资产管理与演练复盘模块
- 集成 MITRE ATT&CK 战术图谱，量化检测覆盖与响应能力
- 支撑 10\+ 场内部攻防演练，缩短演练环境准备时间 50%
#strong[关键字]：红蓝对抗、MITRE ATT&CK、攻击编排、安全评估
]

= 兴趣爱好
#resume-pad[
#strong[网络安全研究]：CTF 竞赛、漏洞挖掘、威胁情报

#strong[运动]：马拉松、羽毛球、徒步

#strong[阅读与写作]：技术博客、历史、科幻小说
]

= 志愿服务
#resume-pad[
#resume-subheading[安全讲师][#link("https://www.cybervolunteer.cn")[https\:\/\/www\.cybervolunteer\.cn]][中国网络安全志愿者联盟][2020年3月至今]
- 参与社区网络安全公益培训，面向中小企业与高校学生普及安全开发与防护知识
- 编写 Web 安全入门课程与实验手册，累计培训学员 800\+ 人次
- 组织漏洞披露与应急响应志愿活动，协助 20\+ 家单位完成安全事件处置
]