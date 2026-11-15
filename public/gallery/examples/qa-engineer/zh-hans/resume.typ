#set document(
  title: "李思远 - 高级质量保证工程师 | 测试自动化与质量工程",
  author: "李思远",
  keywords: "测试自动化, 接口与性能测试, 质量工程, 持续集成与工具, 编程语言",
  description: "Résumé of 李思远",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[李思远]] #v(-0.2em)

#text(size: 1.44em)[高级质量保证工程师 | 测试自动化与质量工程]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+86 139 1234 5678")[\+86 139 1234 5678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:siyuan.li.qa@example.com")[siyuan\.li\.qa\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.siyuanli.dev")[https\:\/\/www\.siyuanli\.dev]

中国，上海，上海，上海市浦东新区张江路 88 号，201203

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/lisiyuan-qa")[lisiyuan\-qa] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/lisiyuan-qa")[lisiyuan\-qa]
]

= 简介

#resume-pad[
- 8 年以上互联网产品测试经验，专注电商、支付与中台系统的质量保障
- 擅长测试策略设计、接口自动化、性能测试与 CI\/CD 质量门禁建设
- 熟练使用 Python、Pytest、Selenium、Postman、JMeter、SQL 等工具
- 具备跨团队协作与质量度量经验，善于推动缺陷左移和发布效率提升
]

= 教育背景
#resume-pad[
#resume-subheading[华东理工大学][#link("https://www.ecust.edu.cn")[https\:\/\/www\.ecust\.edu\.cn]][学士，软件工程，成绩：3\.7\/4\.0][2013\-09\-01–2017\-06\-30]
- 系统学习软件测试、软件工程与数据库等核心课程，成绩排名专业前 15%
- 参与校内软件质量实践项目，完成测试用例设计、缺陷跟踪与测试报告编写
- 毕业设计聚焦 Web 应用自动化测试，使用 Selenium 完成核心流程回归验证
#strong[课程]：软件测试技术、数据结构与算法、数据库原理、操作系统、计算机网络、面向对象程序设计、软件工程、Web 应用开发
]

= 工作经历
#resume-pad[
#resume-subheading[高级质量保证工程师][#link("https://www.yunfan-tech.com")[https\:\/\/www\.yunfan\-tech\.com]][云帆科技][2022\-03\-01至今]
- 负责电商中台与支付链路的质量保障，制定测试策略和发布准入标准，覆盖 Web、API 与移动端场景
- 搭建基于 Pytest、Requests 与 Allure 的接口自动化测试体系，核心接口覆盖率从 45% 提升至 85%，回归测试耗时降低 60%
- 主导性能测试与容量评估，使用 JMeter 和 Grafana 定位瓶颈，支撑大促期间峰值 QPS 3 万以上稳定运行
- 推动 CI\/CD 质量门禁落地，将静态检查、单元测试、接口测试和冒烟测试接入 Jenkins 与 GitLab CI
- 参与缺陷复盘与质量度量，建立缺陷收敛率、逃逸率、自动化覆盖率等指标看板
#strong[关键字]：自动化测试、接口测试、性能测试、CI\/CD、质量度量、电商中台

#resume-subheading[质量保证工程师][#link("https://www.xinglian-mall.com")[https\:\/\/www\.xinglian\-mall\.com]][星链电商][2019\-07\-01–2022\-02\-28]
- 负责订单、库存、优惠券等核心模块的功能测试与回归测试，编写并维护 1200\+ 测试用例
- 使用 Postman、Charles 和 SQL 完成接口验证与数据核对，协助开发定位复杂业务缺陷
- 参与需求评审与测试设计，推动可测性改进，减少需求歧义和后期返工
- 编写自动化脚本，使用 Selenium WebDriver 覆盖核心 UI 流程，提升回归效率
#strong[关键字]：功能测试、测试用例、Selenium、Postman、SQL、缺陷管理

#resume-subheading[初级测试工程师][#link("https://www.zhilian-software.com")[https\:\/\/www\.zhilian\-software\.com]][智联软件][2017\-07\-01–2019\-06\-30]
- 执行 Web 与移动端产品测试，完成兼容性、边界值和异常场景验证
- 维护缺陷跟踪流程，使用 Jira 记录和跟进缺陷，推动问题闭环
- 参与测试环境搭建与测试数据准备，保障迭代版本按时交付
- 编写测试报告和质量周报，为项目决策提供数据支持
#strong[关键字]：Web 测试、移动端测试、Jira、兼容性测试、测试报告
]

= 语言
#resume-pad[
#strong[中文]：母语或双语水平

#grid(columns: (1fr, auto), align: (left, right), [#strong[英语]：完全专业水平], [#strong[关键字]：CET\-6、技术文档阅读、英文邮件沟通])
]

= 专业技能
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[测试自动化]：高级], [#strong[关键字]：Pytest、Selenium、Playwright、Requests、Allure])

#grid(columns: (1fr, auto), align: (left, right), [#strong[接口与性能测试]：高级], [#strong[关键字]：Postman、JMeter、REST Assured、Grafana、SQL])

#grid(columns: (1fr, auto), align: (left, right), [#strong[质量工程]：专家], [#strong[关键字]：测试策略、测试用例设计、缺陷管理、质量度量、发布准入])

#grid(columns: (1fr, auto), align: (left, right), [#strong[持续集成与工具]：高级], [#strong[关键字]：Jenkins、GitLab CI、Docker、Git、Jira])

#grid(columns: (1fr, auto), align: (left, right), [#strong[编程语言]：中级], [#strong[关键字]：Python、Java、JavaScript、Shell、SQL])
]

= 荣誉
#resume-pad[
#resume-subheading[年度质量之星][][云帆科技][2023\-12\-20]
表彰在支付链路稳定性治理和大促质量保障中的突出贡献，主导的自动化回归方案使发布效率提升 40%。

#resume-subheading[优秀项目奖][][星链电商][2021\-01\-15]
在订单中台重构项目中负责测试设计与回归保障，推动核心链路缺陷逃逸率下降 35%。
]

= 证书
#resume-pad[
#resume-subheading[ISTQB 高级认证测试工程师][#link("https://www.istqb.org/certifications")[https\:\/\/www\.istqb\.org\/certifications]][ISTQB][2021\-05\-15]

#resume-subheading[软件评测师（中级）][#link("https://www.ruankao.org.cn")[https\:\/\/www\.ruankao\.org\.cn]][中国计算机技术职业资格认证中心][2019\-11\-09]
]

= 出版刊物
#resume-pad[
#resume-subheading[基于持续集成的接口自动化测试实践][][软件质量与测试][2023\-10\-01]
总结在电商项目中落地接口自动化与 CI 质量门禁的实践经验，涵盖框架设计、用例治理、稳定性提升和度量体系。
]

= 项目
#resume-pad[
#resume-subheading[电商支付链路自动化测试平台][#link("https://github.com/lisiyuan-qa/payment-qa-platform")[https\:\/\/github\.com\/lisiyuan\-qa\/payment\-qa\-platform]][面向支付与订单链路的自动化测试平台，覆盖接口回归、数据校验和持续集成质量门禁。][2022\-08\-01–2023\-06\-30]
- 基于 Pytest 与 Requests 设计分层测试框架，支持用例参数化、环境切换和 Allure 报告
- 接入 GitLab CI，实现合并请求触发冒烟测试与接口回归，平均反馈时间缩短至 15 分钟
- 建立支付场景测试数据工厂，降低脏数据导致的误报率，提升用例稳定性
#strong[关键字]：自动化测试、支付链路、Pytest、CI\/CD、Allure

#resume-subheading[大促全链路压测与容量评估][][针对大促峰值流量开展全链路压测，识别系统瓶颈并输出容量规划建议。][2023\-09\-01–2023\-11\-30]
- 使用 JMeter 编排订单、库存、支付等核心链路压测场景，模拟峰值 QPS 3 万
- 结合 Grafana、Prometheus 和日志分析定位慢查询与线程池瓶颈
- 推动缓存优化、限流降级和数据库索引调整，保障大促期间核心接口可用性达到 99\.99%
#strong[关键字]：性能测试、JMeter、容量评估、全链路压测、稳定性
]

= 兴趣爱好
#resume-pad[
#strong[技术社区]：测试开发、自动化测试、质量工程、技术分享

#strong[运动]：跑步、羽毛球、骑行

#strong[阅读]：软件工程、产品思维、历史
]

= 志愿服务
#resume-pad[
#resume-subheading[技术分享志愿者][#link("https://testerhome.com")[https\:\/\/testerhome\.com]][TesterHome 测试社区][2021\-03\-01–2024\-12\-31]
- 参与测试技术主题的线上线下分享，累计分享接口自动化与质量度量实践 6 次
- 协助组织测试开发沙龙，负责议题筛选、讲师沟通和活动资料整理
- 在社区解答自动化测试与 CI\/CD 相关问题，持续输出测试工程实践经验
]