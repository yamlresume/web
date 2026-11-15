#set document(
  title: "Morgan Casey - DevOps Engineer | Cloud Infrastructure & Automation",
  author: "Morgan Casey",
  keywords: "Cloud Platforms, CI/CD, Containers & Orchestration, Infrastructure as Code, Monitoring & Logging, Scripting & Automation, Security & Compliance",
  description: "Résumé of Morgan Casey",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "en", number-type: "old-style",
)

// paragraph spacing equals the leading, so consecutive paragraphs are stacked
// exactly like lines within one paragraph — parity with the LaTeX template's
// default \parskip of 0pt
#set par(
  leading: 0.57em,
  spacing: 0.57em,
)

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
#text(size: 2.488em, weight: "bold")[#smallcaps[Morgan Casey]] #v(-0.2em)

#text(size: 1.44em)[DevOps Engineer | Cloud Infrastructure & Automation]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(512) 555-0147")[(512) 555\-0147] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:morgan.casey@example.com")[morgan\.casey\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://morgancasey.dev")[https\:\/\/morgancasey\.dev]

2400 Nueces Street, Austin, Texas, United States, 78705

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/morgancasey")[morgancasey] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/morgancasey")[morgancasey]
]

= Basics

#resume-pad[
DevOps engineer with 6\+ years of experience designing, automating, and operating cloud\-native infrastructure on AWS and Azure\. Skilled in building CI\/CD pipelines, implementing infrastructure as code, and orchestrating containerized workloads with Kubernetes\. Proven record of cutting deployment times, improving system reliability, and building strong collaboration between development and operations teams\.

- Reduced average deployment time from 45 minutes to 8 minutes by migrating legacy Jenkins pipelines to GitLab CI\/CD\.
- Managed 200\+ microservices across multiple Kubernetes clusters using Helm, Argo CD, and Terraform\.
- Implemented an observability stack with Prometheus, Grafana, and the ELK Stack, cutting mean time to detection by 40%\.
]

= Education
#resume-pad[
#resume-subheading[University of Texas at Austin][#link("https://www.utexas.edu/")[https\:\/\/www\.utexas\.edu\/]][Bachelor, Computer Science, Score: 3\.7][Aug 2014–May 2018]
- Focused on distributed systems, networking, and cloud computing
- Completed a capstone project on container orchestration and cluster scheduling
- Served as a teaching assistant for the Operating Systems course for two semesters
#strong[Courses]: Operating Systems, Computer Networks, Distributed Systems, Database Systems, Cloud Computing, Algorithms and Data Structures
]

= Work
#resume-pad[
#resume-subheading[Senior DevOps Engineer][#link("https://www.cloudforgesystems.com")[https\:\/\/www\.cloudforgesystems\.com]][CloudForge Systems][Jan 2022–Present]
- Lead a team of 4 DevOps engineers managing multi\-region AWS infrastructure for a SaaS platform serving 500K\+ users
- Architected GitOps workflows with Argo CD and Terraform, enabling self\-service deployments for 12 product teams
- Reduced cloud spend by 28% through right\-sizing, reserved instances, and automated scheduling of non\-production environments
- Designed a disaster recovery strategy with cross\-region backups and automated failover, achieving an RTO of 15 minutes and an RPO of 5 minutes
- Mentored junior engineers and established on\-call best practices, decreasing escalations by 35%
#strong[Keywords]: AWS, Terraform, Kubernetes, Argo CD, GitOps, Cost Optimization

#resume-subheading[DevOps Engineer][#link("https://www.nimbusstack.io")[https\:\/\/www\.nimbusstack\.io]][NimbusStack][Jun 2019–Dec 2021]
- Built and maintained CI\/CD pipelines in GitLab CI for 80\+ microservices, integrating automated testing and security scans
- Migrated a monolithic application to Kubernetes, improving scalability and reducing infrastructure costs by 20%
- Implemented infrastructure as code with Terraform and Ansible across 300\+ EC2 instances and RDS databases
- Set up centralized logging and monitoring with the ELK Stack and Prometheus, enabling proactive alerting
- Partnered with developers to containerize applications and optimize Docker images for faster cold starts
#strong[Keywords]: GitLab CI, Kubernetes, Terraform, Ansible, Prometheus, Docker

#resume-subheading[Cloud Operations Engineer][#link("https://www.dataharbor.com")[https\:\/\/www\.dataharbor\.com]][DataHarbor][Jul 2018–May 2019]
- Managed AWS EC2, S3, and RDS resources for an internal data analytics platform
- Automated routine operational tasks with Python and Bash, saving roughly 15 hours of manual effort per week
- Assisted in implementing backup and recovery procedures for critical production databases
- Participated in the on\-call rotation and incident response for production systems
#strong[Keywords]: AWS, Python, Bash, Linux, Backup
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: TOEFL 115])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Limited Working Proficiency], [#strong[Keywords]: DELE B2])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud Platforms]: Expert], [#strong[Keywords]: AWS, Azure, GCP, EC2, S3, Lambda])

#grid(columns: (1fr, auto), align: (left, right), [#strong[CI\/CD]: Advanced], [#strong[Keywords]: GitLab CI, Jenkins, GitHub Actions, Argo CD, CircleCI])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Containers & Orchestration]: Expert], [#strong[Keywords]: Kubernetes, Docker, Helm, Istio, OpenShift])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Infrastructure as Code]: Advanced], [#strong[Keywords]: Terraform, Ansible, CloudFormation, Pulumi])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Monitoring & Logging]: Advanced], [#strong[Keywords]: Prometheus, Grafana, ELK Stack, Datadog, CloudWatch])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Scripting & Automation]: Expert], [#strong[Keywords]: Python, Bash, Go, PowerShell])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Security & Compliance]: Intermediate], [#strong[Keywords]: IAM, Vault, SOC 2, CIS Benchmarks, Trivy])
]

= Awards
#resume-pad[
#resume-subheading[Cloud Innovator Award][][CloudForge Systems][Nov 2023]
Recognized for designing and implementing a cost optimization program that saved more than \$500K annually\.
]

= Certificates
#resume-pad[
#resume-subheading[AWS Certified DevOps Engineer \- Professional][#link("https://aws.amazon.com/certification/certified-devops-engineer-professional/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-devops\-engineer\-professional\/]][Amazon Web Services][Mar 2022]

#resume-subheading[Certified Kubernetes Administrator (CKA)][#link("https://www.cncf.io/certification/cka/")[https\:\/\/www\.cncf\.io\/certification\/cka\/]][Cloud Native Computing Foundation][Aug 2021]

#resume-subheading[HashiCorp Certified\: Terraform Associate][#link("https://www.hashicorp.com/certification/terraform-associate")[https\:\/\/www\.hashicorp\.com\/certification\/terraform\-associate]][HashiCorp][Jan 2021]
]

= Publications
#resume-pad[
#resume-subheading[Implementing GitOps for Multi\-Cluster Kubernetes][#link("https://www.devopstoday.com/gitops-multi-cluster-kubernetes")[https\:\/\/www\.devopstoday\.com\/gitops\-multi\-cluster\-kubernetes]][DevOps Today][Sep 2023]
- Discusses patterns for managing multiple Kubernetes clusters with Argo CD and Terraform
- Covers security, drift detection, and progressive delivery strategies
]

= Projects
#resume-pad[
#resume-subheading[KubeWatch][#link("https://github.com/morgancasey/kubewatch")[https\:\/\/github\.com\/morgancasey\/kubewatch]][Open\-source Kubernetes monitoring and alerting toolkit][Feb 2022–Nov 2023]
- Built a lightweight operator that watches cluster events and routes alerts to Slack and PagerDuty
- Integrated with Prometheus Alertmanager for advanced routing and silencing
- Reached 500\+ stars on GitHub and is used by more than 30 organizations
#strong[Keywords]: Kubernetes, Go, Prometheus, Operator

#resume-subheading[Terraform AWS Landing Zone][#link("https://github.com/morgancasey/terraform-aws-landing-zone")[https\:\/\/github\.com\/morgancasey\/terraform\-aws\-landing\-zone]][Reusable Terraform modules for secure AWS multi\-account setups][Mar 2021–Aug 2022]
- Published a set of Terraform modules implementing AWS Control Tower best practices
- Automated account provisioning, guardrails, and centralized logging
- Reduced new account setup time from days to under an hour
#strong[Keywords]: Terraform, AWS, Landing Zone, Security
]

= Interests
#resume-pad[
#strong[Open Source]: CNCF, Kubernetes, Terraform

#strong[Outdoor Activities]: Hiking, Running, Cycling
]

= Volunteer
#resume-pad[
#resume-subheading[Workshop Organizer][#link("https://www.meetup.com/austin-devops/")[https\:\/\/www\.meetup\.com\/austin\-devops\/]][Austin DevOps Community][Mar 2020–Present]
- Organize monthly workshops on cloud\-native technologies and DevOps practices
- Coordinate with speakers and sponsors to deliver free technical education
- Mentor newcomers transitioning into DevOps roles
]