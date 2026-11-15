#set document(
  title: "Jordan Ellis - Business Analyst | Process Improvement & Data Insights",
  author: "Jordan Ellis",
  keywords: "Business Analysis, Data Analysis, Project Delivery, Tools",
  description: "Résumé of Jordan Ellis",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Jordan Ellis]] #v(-0.2em)

#text(size: 1.44em)[Business Analyst | Process Improvement & Data Insights]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-2387")[(415) 555\-2387] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:jordan.ellis@example.com")[jordan\.ellis\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.jordanellisba.com")[https\:\/\/www\.jordanellisba\.com]

456 Market Street, Suite 900, San Francisco, California, United States, 94105

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/jordanellisba")[jordanellisba] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/jordanellisba")[jordanellisba]
]

= Basics

#resume-pad[
- Business analyst with 6\+ years of experience translating complex business needs into actionable technical requirements
- Skilled in process mapping, stakeholder facilitation, and data\-driven decision support across finance and SaaS domains
- Proficient in SQL, Tableau, and Agile delivery, with a track record of improving operational efficiency and user adoption
- Strong communicator who bridges gaps between business leaders, product teams, and engineering stakeholders
]

= Education
#resume-pad[
#resume-subheading[University of California, Berkeley][#link("https://www.berkeley.edu/")[https\:\/\/www\.berkeley\.edu\/]][Bachelor, Business Administration, Score: 3\.8][Sep 2014–Jun 2018]
- Graduated with honors and a concentration in business analytics and information systems
- Completed capstone project on optimizing customer onboarding workflows for a regional financial services firm
- Developed strong foundations in quantitative analysis, process design, and cross\-functional collaboration
#strong[Courses]: Business Analytics, Financial Accounting, Operations Management, Statistics for Business, Information Systems, Marketing Research, Corporate Finance, Managerial Economics
]

= Work
#resume-pad[
#resume-subheading[Senior Business Analyst][#link("https://www.northwindanalytics.com")[https\:\/\/www\.northwindanalytics\.com]][Northwind Analytics][Jan 2022–Present]
- Lead requirements elicitation and process discovery for a portfolio of data platform and reporting initiatives
- Facilitate workshops with product, finance, and operations stakeholders to define scope, acceptance criteria, and success metrics
- Translate business rules into user stories, data mappings, and functional specifications for engineering teams
- Partner with QA and business owners to coordinate UAT, defect triage, and post\-launch adoption tracking
- Mentor junior analysts and contribute to the BA community of practice through templates, coaching, and peer reviews
#strong[Keywords]: Requirements Elicitation, Process Improvement, Stakeholder Management, Agile Delivery, UAT Coordination, Data Mapping

#resume-subheading[Business Analyst][#link("https://www.blueriverfinancial.com")[https\:\/\/www\.blueriverfinancial\.com]][BlueRiver Financial][Jun 2019–Dec 2021]
- Supported digital transformation projects across lending, servicing, and member experience teams
- Documented current\-state and future\-state processes, identifying automation opportunities that reduced manual effort by 25%
- Built SQL queries and Tableau dashboards to track KPIs, operational bottlenecks, and customer behavior trends
- Coordinated requirement reviews, sprint demos, and change requests with product owners and technical leads
- Created test scenarios and assisted business users during UAT cycles for new workflow and reporting releases
#strong[Keywords]: Business Process Mapping, SQL, Tableau, Agile Scrum, UAT, Financial Services

#resume-subheading[Junior Business Analyst][#link("https://www.cedarpointconsulting.com")[https\:\/\/www\.cedarpointconsulting\.com]][Cedar Point Consulting][Jul 2018–May 2019]
- Gathered and documented business requirements for small\-business technology and operations projects
- Prepared meeting notes, process flows, and requirement traceability matrices to support project delivery
- Conducted data validation and basic reporting to help clients monitor project outcomes and service levels
- Collaborated with senior consultants to prepare client presentations and implementation roadmaps
#strong[Keywords]: Requirements Documentation, Process Flows, Data Validation, Client Presentations
]

= Languages
#resume-pad[
#strong[English]: Native or Bilingual Proficiency

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Limited Working Proficiency], [#strong[Keywords]: Business conversations, Client support])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Mandarin]: Elementary Proficiency], [#strong[Keywords]: Basic conversation])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Business Analysis]: Expert], [#strong[Keywords]: Requirements Elicitation, Process Mapping, Stakeholder Management, Gap Analysis, User Stories])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Analysis]: Advanced], [#strong[Keywords]: SQL, Tableau, Excel, Power BI, Data Visualization])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Project Delivery]: Advanced], [#strong[Keywords]: Agile Scrum, UAT Coordination, Change Management, Risk Management])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Tools]: Intermediate], [#strong[Keywords]: Jira, Confluence, Visio, Lucidchart, Smartsheet])
]

= Awards
#resume-pad[
#resume-subheading[Excellence in Business Analysis Award][][Northwind Analytics][Nov 2023]
Recognized for leading a cross\-functional requirements program that improved delivery predictability and stakeholder satisfaction across three product teams\.

#resume-subheading[Dean\'s List][][University of California, Berkeley][May 2017]
Awarded for sustained academic achievement in the Business Administration program\.
]

= Certificates
#resume-pad[
#resume-subheading[Certified Business Analysis Professional (CBAP)][#link("https://www.iiba.org/certification/cbap/")[https\:\/\/www\.iiba\.org\/certification\/cbap\/]][International Institute of Business Analysis][Mar 2021]

#resume-subheading[Professional Scrum Master I][#link("https://www.scrum.org/professional-scrum-certifications/professional-scrum-master-i-certification")[https\:\/\/www\.scrum\.org\/professional\-scrum\-certifications\/professional\-scrum\-master\-i\-certification]][Scrum\.org][Aug 2022]

#resume-subheading[Tableau Desktop Specialist][#link("https://www.tableau.com/learn/certification/desktop-specialist")[https\:\/\/www\.tableau\.com\/learn\/certification\/desktop\-specialist]][Tableau][Jan 2023]
]

= Publications
#resume-pad[
#resume-subheading[Bridging the Gap Between IT and Business\: A Practical Framework][#link("https://www.northwindanalytics.com/insights/bridging-it-business")[https\:\/\/www\.northwindanalytics\.com\/insights\/bridging\-it\-business]][Northwind Analytics Insights][Sep 2023]
- Presents a repeatable framework for aligning business stakeholders and technical teams during discovery
- Outlines techniques for requirement prioritization, process documentation, and measurable acceptance criteria
- Includes practical templates and lessons learned from data platform and reporting initiatives
]

= Projects
#resume-pad[
#resume-subheading[Customer Onboarding Process Redesign][][A cross\-functional initiative to simplify customer onboarding and reduce time to first value\.][Jan 2023–Jun 2023]
- Mapped current\-state onboarding journeys across sales, operations, and support teams
- Facilitated stakeholder workshops to prioritize pain points and define future\-state workflow requirements
- Partnered with engineering and QA to deliver phased improvements, including automated document collection and status tracking
- Established KPIs and a post\-launch dashboard to monitor cycle time, handoffs, and customer satisfaction
#strong[Keywords]: Process Redesign, Customer Onboarding, Workshop Facilitation, KPI Reporting

#resume-subheading[Sales Forecasting Dashboard][][A Tableau dashboard that consolidated pipeline, bookings, and renewal data for sales leadership\.][Mar 2021–Aug 2021]
- Defined dashboard requirements and metric definitions with sales operations and finance stakeholders
- Wrote SQL queries to combine data from CRM, billing, and contract systems
- Built interactive Tableau views for pipeline health, forecast variance, and segment performance
- Delivered training and documentation to support weekly forecasting reviews and executive reporting
#strong[Keywords]: Tableau, SQL, Sales Operations, Forecasting
]

= Interests
#resume-pad[
#strong[Data Storytelling]: Tableau, Power BI, Narrative Visualization

#strong[Community]: Mentoring, Volunteering, Professional Development
]

= Volunteer
#resume-pad[
#resume-subheading[Volunteer Mentor][#link("https://www.babaa.org")[https\:\/\/www\.babaa\.org]][Bay Area Business Analysts Association][Jan 2022–Present]
- Mentor early\-career business analysts on requirements gathering, stakeholder communication, and career development
- Review portfolio artifacts and provide feedback on process mapping, user stories, and data analysis approaches
- Support association events and workshops focused on business analysis best practices
]