#set document(
  title: "Jordan Avery Mitchell - Senior Project Manager | PMP | Agile Delivery Leader",
  author: "Jordan Avery Mitchell",
  keywords: "Project Management, Tools & Platforms, Leadership & Communication, Technical Acumen",
  description: "Résumé of Jordan Avery Mitchell",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Jordan Avery Mitchell]] #v(-0.2em)

#text(size: 1.44em)[Senior Project Manager | PMP | Agile Delivery Leader]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(512) 555-0147")[(512) 555\-0147] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:jordan.mitchell@example.com")[jordan\.mitchell\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.jordanmitchellpm.com")[https\:\/\/www\.jordanmitchellpm\.com]

600 Congress Avenue, Suite 1400, Austin, Texas, United States, 78701

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/jordanmitchellpm")[jordanmitchellpm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/jordanm_pm")[jordanm\_pm] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@jordanmitchellpm")[jordanmitchellpm]
]

= Basics

#resume-pad[
- Certified Project Manager (PMP) with 8\+ years of experience leading cross\-functional teams to deliver software, infrastructure, and business transformation projects on time and within budget\.
- Proven expertise in Agile, Scrum, and Waterfall methodologies, with a track record of improving delivery velocity by up to 35% and reducing project risk through proactive stakeholder engagement\.
- Skilled in budget management, resource allocation, vendor negotiation, and executive reporting for portfolios ranging from \$500K to \$8M\.
- Adept at bridging technical and business conversations, translating complex requirements into actionable roadmaps and measurable outcomes\.
]

= Education
#resume-pad[
#resume-subheading[University of Texas at Austin][#link("https://www.utexas.edu")[https\:\/\/www\.utexas\.edu]][Master, Business Administration, Score: 3\.9][Aug 2016–May 2018]
- Graduated with distinction from the McCombs School of Business
- Led a capstone project to redesign the delivery workflow for a local nonprofit, reducing average project cycle time by 22%
- Served as vice president of the Graduate Project Management Club, organizing workshops with industry leaders
#strong[Courses]: Project Management, Operations Management, Financial Accounting, Organizational Behavior, Data Analytics for Business, Strategic Management

#resume-subheading[Texas A&M University][#link("https://www.tamu.edu")[https\:\/\/www\.tamu\.edu]][Bachelor, Industrial Engineering, Score: 3\.7][Aug 2012–May 2016]
- Built a strong foundation in process optimization, statistical analysis, and systems thinking
- Completed a senior design project on lean manufacturing for a regional aerospace supplier
- Interned with a logistics firm, supporting schedule tracking and resource planning
#strong[Courses]: Engineering Economics, Probability and Statistics, Production Planning, Quality Control, Engineering Project Management, Systems Simulation
]

= Work
#resume-pad[
#resume-subheading[Senior Project Manager][#link("https://www.brightlinesolutions.com")[https\:\/\/www\.brightlinesolutions\.com]][Brightline Solutions Group][Jan 2022–Present]
- Lead a portfolio of 6 concurrent software delivery projects with a combined budget of \$8M, consistently achieving 95%\+ on\-time milestone completion\.
- Established a hybrid Agile\-Waterfall delivery framework that reduced scope creep by 28% and improved stakeholder satisfaction scores from 3\.8 to 4\.6 out of 5\.
- Coach and mentor 4 project managers and 12 cross\-functional team members, introducing capacity planning and risk burndown practices\.
- Partner with product, engineering, and compliance teams to align roadmaps, manage dependencies, and ensure regulatory readiness for fintech clients\.
- Present monthly executive dashboards covering schedule, cost, risk, and benefits realization to C\-level sponsors\.
#strong[Keywords]: Agile Delivery, Portfolio Management, Budget Management, Stakeholder Engagement, Risk Management

#resume-subheading[Project Manager][#link("https://www.cedarpointdigital.com")[https\:\/\/www\.cedarpointdigital\.com]][Cedar Point Digital][Jun 2019–Dec 2021]
- Managed 15\+ web and mobile application projects from initiation through launch, with budgets up to \$1\.2M and teams of 10\-18 people\.
- Implemented Scrum ceremonies and Jira workflows, increasing sprint predictability by 30% and reducing average defect escape rate by 18%\.
- Negotiated vendor contracts and managed external partners, saving \$220K over two years through consolidated licensing and improved payment terms\.
- Built project charters, WBS, RAID logs, and change control processes adopted as standard templates across the PMO\.
#strong[Keywords]: Scrum, Jira, Vendor Management, Change Control, PMO

#resume-subheading[Associate Project Manager][#link("https://www.lonestarinfra.com")[https\:\/\/www\.lonestarinfra\.com]][Lone Star Infrastructure Partners][Jul 2018–May 2019]
- Supported the delivery of municipal infrastructure and IT modernization projects with budgets totaling \$3\.5M\.
- Coordinated schedules, permits, and vendor deliverables across 8 workstreams, ensuring compliance with city and state requirements\.
- Prepared weekly status reports, meeting minutes, and risk registers for project sponsors and steering committees\.
- Assisted in the transition from waterfall to agile for the internal tools team, facilitating retrospectives and backlog grooming\.
#strong[Keywords]: Infrastructure, Compliance, Scheduling, Reporting, Agile Transition
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: TOEFL 115])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: DELE C1])

#strong[French]: Elementary Proficiency
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Project Management]: Expert], [#strong[Keywords]: Agile & Scrum, Waterfall, Hybrid Delivery, Portfolio Management, Risk Management, Budgeting, Resource Planning])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tools & Platforms]: Advanced], [#strong[Keywords]: Jira, Confluence, MS Project, Asana, Trello, Smartsheet, Miro])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Leadership & Communication]: Expert], [#strong[Keywords]: Stakeholder Engagement, Executive Reporting, Team Mentoring, Conflict Resolution, Vendor Negotiation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Technical Acumen]: Intermediate], [#strong[Keywords]: SQL, API Integration, Cloud Fundamentals, Data Analysis, CI\/CD Concepts])
]

= Awards
#resume-pad[
#resume-subheading[Project Management Excellence Award][][Brightline Solutions Group][Nov 2023]
Recognized for leading the highest\-performing delivery portfolio in the company, achieving 98% on\-time delivery and a 4\.7\/5 stakeholder satisfaction rating\.

#resume-subheading[Dean\'s List][][University of Texas at Austin][May 2017]
Awarded for academic excellence in the McCombs School of Business MBA program\.
]

= Certificates
#resume-pad[
#resume-subheading[Project Management Professional (PMP)][#link("https://www.pmi.org/certifications/project-management-pmp")[https\:\/\/www\.pmi\.org\/certifications\/project\-management\-pmp]][Project Management Institute][Mar 2020]

#resume-subheading[Certified ScrumMaster (CSM)][#link("https://www.scrumalliance.org/certifications")[https\:\/\/www\.scrumalliance\.org\/certifications]][Scrum Alliance][Sep 2019]

#resume-subheading[Certified Agile Leader (CAL)][#link("https://www.scrumalliance.org/certifications")[https\:\/\/www\.scrumalliance\.org\/certifications]][Scrum Alliance][Jun 2022]
]

= Publications
#resume-pad[
#resume-subheading[Agile Portfolio Management in Regulated Industries][#link("https://www.pmi.org/learning/library/agile-portfolio-management-regulated-industries")[https\:\/\/www\.pmi\.org\/learning\/library\/agile\-portfolio\-management\-regulated\-industries]][PMI Global Congress Proceedings][Oct 2022]
- Examines how hybrid delivery models can satisfy regulatory requirements while preserving Agile flexibility\.
- Presents a case study from fintech and healthcare projects with measurable improvements in compliance and speed\.
- Offers practical templates for RAID logs, stage gates, and executive dashboards\.
]

= References
#resume-pad[
#resume-subheading[Dr\. Evelyn Hart][Former MBA Capstone Advisor][evelyn\.hart\@utexas\.edu][(512) 555\-0198]
Jordan consistently demonstrated exceptional leadership and analytical rigor\. Their ability to align diverse stakeholders and drive projects to completion makes them an invaluable asset to any organization\.
]

= Projects
#resume-pad[
#resume-subheading[Global ERP Rollout][#link("https://www.brightlinesolutions.com/projects/global-erp")[https\:\/\/www\.brightlinesolutions\.com\/projects\/global\-erp]][A multi\-site ERP implementation for a manufacturing client across 6 countries\.][Feb 2022–Nov 2023]
- Led a 25\-person cross\-functional team through discovery, design, build, test, and deployment phases\.
- Managed a \$4\.2M budget and coordinated 5 external vendors, delivering all 6 country rollouts within 3% of budget\.
- Reduced order\-to\-cash cycle time by 19% through process standardization and automation\.
#strong[Keywords]: ERP, Change Management, Vendor Coordination, Global Rollout

#resume-subheading[Customer Data Platform Migration][#link("https://www.cedarpointdigital.com/projects/cdp-migration")[https\:\/\/www\.cedarpointdigital\.com\/projects\/cdp\-migration]][Migrated legacy customer data into a unified cloud platform for a retail client\.][Jan 2021–Aug 2021]
- Directed a 12\-person team to migrate 40M\+ customer records with zero critical data loss\.
- Established data quality gates and rollback plans that reduced post\-launch incidents by 40%\.
- Facilitated weekly steering committee meetings and delivered executive dashboards on progress and risks\.
#strong[Keywords]: Data Migration, Cloud, Data Quality, Stakeholder Management
]

= Interests
#resume-pad[
#strong[Professional Development]: Agile Coaching, Leadership, Public Speaking, Mentoring

#strong[Personal]: Trail Running, Cooking, Travel, Photography
]

= Volunteer
#resume-pad[
#resume-subheading[Volunteer Program Coordinator][#link("https://pmi-austin.org")[https\:\/\/pmi\-austin\.org]][PMI Austin Chapter][Jan 2021–Dec 2023]
- Coordinated monthly professional development events for 300\+ chapter members, increasing attendance by 25%\.
- Recruited and managed 15 volunteers, creating onboarding materials and recognition programs\.
- Facilitated a mentoring circle for aspiring project managers, supporting 20 mentees over two years\.
]