#set document(
  title: "Elena M. Vasquez - Senior Cybersecurity Engineer | Cloud Security & Threat Detection",
  author: "Elena M. Vasquez",
  keywords: "Cloud Security, Threat Detection and Response, Application Security, Network Security, Programming and Automation, Governance Risk and Compliance",
  description: "Résumé of Elena M. Vasquez",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Elena M\. Vasquez]] #v(-0.2em)

#text(size: 1.44em)[Senior Cybersecurity Engineer | Cloud Security & Threat Detection]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0198")[(415) 555\-0198] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:elena.vasquez@example.com")[elena\.vasquez\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://elenavasquez.dev")[https\:\/\/elenavasquez\.dev]

475 Brannan Street, Suite 300, San Francisco, California, United States, 94107

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/elena-vasquez-sec")[elena\-vasquez\-sec] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/elenavasquez")[elenavasquez] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/1234567/elena-vasquez")[elena\-vasquez]
]

= Basics

#resume-pad[
- Cybersecurity engineer with 8\+ years of experience securing cloud\-native applications, enterprise networks, and high\-traffic SaaS platforms\.
- Specialized in threat detection, incident response, vulnerability management, and secure architecture across AWS and Azure environments\.
- Adept at building automation with Python, Terraform, and SIEM tooling to reduce response time and strengthen security posture\.
- Collaborates with engineering, compliance, and product teams to translate risk requirements into practical controls and measurable outcomes\.
]

= Education
#resume-pad[
#resume-subheading[Georgia Institute of Technology][#link("https://www.gatech.edu")[https\:\/\/www\.gatech\.edu]][Master, Cybersecurity, Score: 3\.9][Aug 2013–May 2015]
- Completed graduate coursework in secure systems, network defense, and applied cryptography\.
- Built a cloud incident response lab and evaluated detection coverage for common attack paths\.
- Collaborated on a capstone project focused on identity\-based threat detection in hybrid environments\.
#strong[Courses]: Advanced Network Security, Applied Cryptography, Cloud Security Architecture, Incident Response and Forensics, Secure Software Development, Risk Management and Compliance

#resume-subheading[University of Illinois Urbana\-Champaign][#link("https://illinois.edu")[https\:\/\/illinois\.edu]][Bachelor, Computer Science, Score: 3\.8][Aug 2009–May 2013]
- Developed a strong foundation in operating systems, networking, and software engineering\.
- Completed coursework projects in network protocol analysis and secure application development\.
- Served as a teaching assistant for an introductory computer security course\.
#strong[Courses]: Data Structures, Operating Systems, Computer Networks, Database Systems, Algorithms, Software Engineering
]

= Work
#resume-pad[
#resume-subheading[Staff Cybersecurity Engineer][#link("https://www.northstarcloud.io")[https\:\/\/www\.northstarcloud\.io]][Northstar Cloud Systems][Jan 2021–Present]
- Lead threat detection and incident response for a multi\-tenant cloud platform serving enterprise customers\.
- Designed detection\-as\-code pipelines and tuned SIEM\/EDR alerts to cut mean time to investigate by 35%\.
- Partnered with platform engineering to implement zero trust controls, least\-privilege IAM, and secure\-by\-default services\.
- Coordinated tabletop exercises and post\-incident reviews with legal, compliance, and product stakeholders\.
- Mentored security engineers and established reusable playbooks for cloud forensics and containment\.
#strong[Keywords]: Threat Detection, Incident Response, AWS Security, SIEM, Zero Trust

#resume-subheading[Senior Security Engineer][#link("https://www.apexfintech.com")[https\:\/\/www\.apexfintech\.com]][Apex Financial Technologies][Mar 2017–Dec 2020]
- Owned vulnerability management and secure SDLC programs for payment and lending applications\.
- Led PCI DSS remediation efforts across distributed teams and reduced critical findings by 42% year over year\.
- Built Python and Splunk automations to correlate vulnerability data with asset ownership and patch status\.
- Performed threat modeling, security reviews, and penetration test coordination for new product launches\.
#strong[Keywords]: Vulnerability Management, PCI DSS, Python, Splunk, Penetration Testing

#resume-subheading[Security Analyst][#link("https://www.blueriverhealth.org")[https\:\/\/www\.blueriverhealth\.org]][BlueRiver Health Systems][Jun 2015–Feb 2017]
- Monitored and triaged security events in a 24x7 SOC supporting clinical and corporate environments\.
- Investigated phishing, malware, and unauthorized access incidents and documented response actions\.
- Improved endpoint detection coverage and reduced false positives through rule tuning and asset baselining\.
- Assisted with HIPAA security assessments and NIST CSF gap analysis across infrastructure teams\.
#strong[Keywords]: SOC Operations, NIST CSF, Endpoint Security, Log Analysis, Phishing Response
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: Native speaker, Technical writing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: Professional working, Cross\-team liaison])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud Security]: Expert], [#strong[Keywords]: AWS, Azure, GCP, Terraform, IAM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Threat Detection and Response]: Expert], [#strong[Keywords]: SIEM, EDR, SOAR, Splunk, CrowdStrike])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Application Security]: Advanced], [#strong[Keywords]: OWASP Top 10, SAST, DAST, Threat Modeling, Secure SDLC])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Network Security]: Advanced], [#strong[Keywords]: Firewalls, IDS\/IPS, VPN, Zero Trust, Wireshark])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programming and Automation]: Advanced], [#strong[Keywords]: Python, Bash, PowerShell, Go, Ansible])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Governance Risk and Compliance]: Advanced], [#strong[Keywords]: SOC 2, ISO 27001, NIST CSF, PCI DSS, HIPAA])
]

= Awards
#resume-pad[
#resume-subheading[Outstanding Security Engineer Award][][Northstar Cloud Systems][Nov 2023]
Recognized for leading the response to a high\-severity cloud incident and improving detection coverage across critical services\.

#resume-subheading[Capture the Flag Champion][][BSides San Francisco][Sep 2019]
Placed first in a team\-based enterprise security competition focused on cloud exploitation, forensics, and incident response\.
]

= Certificates
#resume-pad[
#resume-subheading[Certified Information Systems Security Professional (CISSP)][#link("https://www.isc2.org/certifications/cissp")[https\:\/\/www\.isc2\.org\/certifications\/cissp]][ISC2][Jun 2018]

#resume-subheading[AWS Certified Security \- Specialty][#link("https://aws.amazon.com/certification/certified-security-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-security\-specialty\/]][Amazon Web Services][Feb 2022]

#resume-subheading[Offensive Security Certified Professional (OSCP)][#link("https://www.offsec.com/courses/pen-200/")[https\:\/\/www\.offsec\.com\/courses\/pen\-200\/]][Offensive Security][Oct 2016]

#resume-subheading[GIAC Certified Incident Handler (GCIH)][#link("https://www.giac.org/certifications/certified-incident-handler-gcih/")[https\:\/\/www\.giac\.org\/certifications\/certified\-incident\-handler\-gcih\/]][SANS Institute][Mar 2020]
]

= Publications
#resume-pad[
#resume-subheading[Detecting Lateral Movement in Cloud Environments][#link("https://ieeexplore.ieee.org/document/9876543")[https\:\/\/ieeexplore\.ieee\.org\/document\/9876543]][IEEE Security & Privacy][Aug 2022]
- Presents a practical detection model for identifying lateral movement across hybrid cloud workloads\.
- Combines identity telemetry, network flow logs, and endpoint signals to reduce false positives\.
- Includes open\-source detection rules and evaluation results from a simulated enterprise environment\.
]

= Projects
#resume-pad[
#resume-subheading[PhishGuard][#link("https://github.com/elenavasquez/phishguard")[https\:\/\/github\.com\/elenavasquez\/phishguard]][Open\-source phishing triage platform for SOC teams][Jan 2020–Jun 2021]
- Automates phishing report ingestion, enrichment, and analyst triage workflows\.
- Integrates with email security APIs and ticketing systems to reduce manual effort\.
- Provides dashboards for tracking recurring sender patterns and campaign trends\.
#strong[Keywords]: Phishing, Python, SOAR, Email Security

#resume-subheading[Cloud IAM Posture Scanner][#link("https://github.com/elenavasquez/iam-posture-scanner")[https\:\/\/github\.com\/elenavasquez\/iam\-posture\-scanner]][Automated scanner for identifying risky IAM permissions in AWS][Mar 2022–Nov 2022]
- Inventories IAM roles, policies, and trust relationships across multiple AWS accounts\.
- Flags excessive permissions, unused credentials, and risky cross\-account access paths\.
- Generates remediation guidance and exports findings to security dashboards\.
#strong[Keywords]: AWS, IAM, Python, Security Automation
]

= Interests
#resume-pad[
#strong[Security Research]: CTF competitions, Malware analysis, Cloud forensics

#strong[Outdoors]: Trail running, Rock climbing, Backpacking
]

= Volunteer
#resume-pad[
#resume-subheading[Mentor and Workshop Instructor][#link("https://www.bawic.org")[https\:\/\/www\.bawic\.org]][Bay Area Women in Cybersecurity][Sep 2019–Present]
- Mentor early\-career security professionals on cloud security fundamentals and career development\.
- Deliver hands\-on workshops covering detection engineering, log analysis, and incident response\.
- Help organize community meetups and an annual conference track for local practitioners\.
]