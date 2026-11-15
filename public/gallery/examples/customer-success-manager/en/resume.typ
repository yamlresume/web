#set document(
  title: "Maya Chen - Strategic Customer Success Manager | SaaS Retention & Expansion",
  author: "Maya Chen",
  keywords: "Customer Success Management, Account Growth, Data & Analytics, Leadership & Collaboration, Tools",
  description: "Résumé of Maya Chen",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Maya Chen]] #v(-0.2em)

#text(size: 1.44em)[Strategic Customer Success Manager | SaaS Retention & Expansion]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0132")[(415) 555\-0132] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:maya.chen@example.com")[maya\.chen\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.mayachen.com")[https\:\/\/www\.mayachen\.com]

450 Mission Street, Suite 1200, San Francisco, California, United States, 94107

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/maya-chen-csm")[maya\-chen\-csm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@maya.chen")[maya\.chen]
]

= Basics

#resume-pad[
Customer Success Manager with 6\+ years of experience driving retention, product adoption, and expansion revenue for B2B SaaS companies\. Skilled at building trusted relationships with executive stakeholders and translating customer goals into measurable business outcomes\.

- Manage a \$4\.2M book of business across 45 mid\-market and enterprise accounts, consistently exceeding net revenue retention targets\.
- Designed a customer health scoring model that reduced churn by 18% and increased expansion pipeline by 32%\.
- Lead cross\-functional initiatives with Product, Sales, and Support to improve onboarding, QBRs, and customer advocacy\.
- Known for data\-informed storytelling, empathetic communication, and a proactive, solution\-oriented approach\.
]

= Education
#resume-pad[
#resume-subheading[University of Washington][#link("https://www.washington.edu")[https\:\/\/www\.washington\.edu]][Bachelor, Business Administration and Marketing, Score: 3\.7][Sep 2014–Jun 2018]
- Graduated cum laude with a focus on customer strategy and B2B marketing
- Completed capstone project on reducing churn in subscription\-based businesses
- Served as vice president of the undergraduate marketing association
#strong[Courses]: Customer Relationship Management, Organizational Behavior, Data Analytics for Business, Negotiation and Conflict Resolution, Marketing Analytics, Project Management, Business Communication, Consumer Behavior
]

= Work
#resume-pad[
#resume-subheading[Senior Customer Success Manager][#link("https://www.cloudloop.com")[https\:\/\/www\.cloudloop\.com]][CloudLoop][Mar 2021–Present]
- Own strategic relationships with 45 enterprise and mid\-market accounts representing \$4\.2M in ARR
- Achieved 118% net revenue retention in FY2023 through proactive renewals, upsells, and multi\-threading
- Built a customer health score model using product usage, support tickets, and NPS to prioritize risk and growth
- Facilitate executive business reviews and quarterly success plans with C\-level stakeholders
- Partner with Product to relay customer feedback, influencing roadmap decisions for three major releases
- Mentor two customer success associates and lead onboarding for new CSM hires
#strong[Keywords]: Customer Health Scoring, QBR Facilitation, Churn Reduction, Upsell & Cross\-sell, Executive Business Reviews, Renewal Management, Team Leadership

#resume-subheading[Customer Success Associate][#link("https://www.brightdesk.com")[https\:\/\/www\.brightdesk\.com]][BrightDesk][Jun 2018–Feb 2021]
- Managed a portfolio of 80 SMB accounts with a combined ARR of \$1\.1M
- Improved onboarding completion rate from 62% to 89% by redesigning the welcome journey
- Reduced average first\-response time from 8 hours to 45 minutes by implementing triage workflows
- Conducted quarterly business reviews and identified expansion opportunities totaling \$240K
- Documented 30\+ help center articles and led customer webinars on best practices
#strong[Keywords]: Onboarding, SMB Accounts, Customer Journey Mapping, Support Triage, Webinars, Expansion Revenue, Product Adoption
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: Native speaker])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: DELE B2])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Mandarin]: Limited Working Proficiency], [#strong[Keywords]: Conversational])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Customer Success Management]: Expert], [#strong[Keywords]: Customer Health Scoring, QBR Facilitation, Churn Reduction, Renewal Management, Executive Business Reviews, Customer Journey Mapping])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Account Growth]: Advanced], [#strong[Keywords]: Upsell & Cross\-sell, Expansion Revenue, Account Planning, Negotiation, Stakeholder Management, Customer Advocacy])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data & Analytics]: Advanced], [#strong[Keywords]: Salesforce, Gainsight, Looker, SQL, NPS, CSAT, SaaS Metrics])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Leadership & Collaboration]: Advanced], [#strong[Keywords]: Team Leadership, Mentoring, Cross\-functional Collaboration, Process Improvement, Project Management, Communication])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tools]: Intermediate], [#strong[Keywords]: Zendesk, Jira, Slack, HubSpot, Google Workspace, Notion])
]

= Awards
#resume-pad[
#resume-subheading[Customer Success Leader of the Quarter][][CloudLoop][Jun 2023]
Recognized for achieving the highest net revenue retention and expansion attainment across the customer success team in Q2 2023\.

#resume-subheading[President\'s Award for Service Excellence][][BrightDesk][May 2019]
Awarded for outstanding customer satisfaction scores and for leading a cross\-team initiative that improved onboarding efficiency\.
]

= Certificates
#resume-pad[
#resume-subheading[Certified Customer Success Manager (CCSM)][#link("https://www.successcoaching.com/certified-customer-success-manager")[https\:\/\/www\.successcoaching\.com\/certified\-customer\-success\-manager]][SuccessCOACHING][Feb 2022]

#resume-subheading[Customer Success Certification][#link("https://academy.hubspot.com/courses/customer-success")[https\:\/\/academy\.hubspot\.com\/courses\/customer\-success]][HubSpot Academy][Sep 2021]

#resume-subheading[Salesforce Certified Administrator][#link("https://trailhead.salesforce.com/credentials/administrator")[https\:\/\/trailhead\.salesforce\.com\/credentials\/administrator]][Salesforce][Nov 2020]
]

= Publications
#resume-pad[
#resume-subheading[The Retention Playbook for Mid\-Market SaaS][#link("https://www.customersuccesscollective.com/retention-playbook")[https\:\/\/www\.customersuccesscollective\.com\/retention\-playbook]][Customer Success Collective][Mar 2023]
- Practical framework for diagnosing churn risk using product usage, support signals, and stakeholder maps
- Includes templates for health scores, executive business reviews, and renewal negotiations
- Featured in the Customer Success Collective weekly newsletter
]

= Projects
#resume-pad[
#resume-subheading[Customer Health Score 2\.0][#link("https://www.cloudloop.com/customer-health-score")[https\:\/\/www\.cloudloop\.com\/customer\-health\-score]][Redesigned the customer health scoring model to predict churn and expansion more accurately\.][Jan 2023–Aug 2023]
- Consolidated data from Salesforce, Gainsight, Zendesk, and product analytics into a single health score
- Built a weighted model with 12 signals, including login frequency, support sentiment, and executive engagement
- Reduced false\-positive risk alerts by 40% and increased CSM efficiency by 15%
#strong[Keywords]: Health Score, Churn Prediction, Salesforce, Gainsight, Data Modeling

#resume-subheading[CSM Onboarding Portal][#link("https://www.cloudloop.com/csm-onboarding")[https\:\/\/www\.cloudloop\.com\/csm\-onboarding]][Internal portal that centralizes onboarding resources, playbooks, and certification paths for new CSMs\.][Apr 2022–Oct 2022]
- Reduced new CSM ramp time from 12 weeks to 7 weeks
- Standardized onboarding checklists, call frameworks, and product certification milestones
- Adopted by the entire customer success organization across three regions
#strong[Keywords]: Onboarding, Enablement, Documentation, Process Design
]

= Interests
#resume-pad[
#strong[Community Building]: Customer Success Meetups, Mentorship, Networking

#strong[Content Creation]: Podcasting, Writing, Video Editing

#strong[Wellbeing]: Yoga, Hiking, Meditation

#strong[Travel]: Cultural Exploration, Food, Photography
]

= Volunteer
#resume-pad[
#resume-subheading[Mentor][#link("https://www.womenincustomersuccess.org")[https\:\/\/www\.womenincustomersuccess\.org]][Women in Customer Success][Jan 2022–Dec 2023]
- Mentor early\-career customer success professionals through monthly 1\:1 sessions and resume reviews
- Lead quarterly workshops on executive communication, negotiation, and career development
- Helped 12 mentees secure promotions or new roles in customer success
]