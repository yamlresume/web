#set document(
  title: "Jordan A. Mitchell - Operations Manager | Process Improvement & Supply Chain Strategy",
  author: "Jordan A. Mitchell",
  keywords: "Operations Leadership, Process Improvement, Supply Chain & Inventory, Data & Systems, Safety & Compliance",
  description: "Résumé of Jordan A. Mitchell",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Jordan A\. Mitchell]] #v(-0.2em)

#text(size: 1.44em)[Operations Manager | Process Improvement & Supply Chain Strategy]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(312) 555-0148")[(312) 555\-0148] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:jordan.mitchell.ops@gmail.com")[jordan\.mitchell\.ops\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.jordanmitchellops.com")[https\:\/\/www\.jordanmitchellops\.com]

415 West Randolph Street, Chicago, Illinois, United States, 60607

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/jordan-a-mitchell-ops")[jordan\-a\-mitchell\-ops] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@jordan.mitchell.ops")[jordan\.mitchell\.ops]
]

= Basics

#resume-pad[
- Operations leader with 10\+ years of experience across fulfillment, distribution, and retail supply chain operations
- Proven record of improving safety, quality, delivery, and cost through Lean tools, data\-driven labor planning, and frontline coaching
- Managed teams of 100\+ associates and 6 supervisors in high\-volume, multi\-shift environments
- Strong business partner to transportation, inventory, customer service, and sales teams; comfortable owning P&L and KPI targets
- Known for building accountable teams, stabilizing peak\-season execution, and turning operational metrics into action
]

= Education
#resume-pad[
#resume-subheading[University of Illinois Urbana\-Champaign][#link("https://illinois.edu")[https\:\/\/illinois\.edu]][Bachelor, Business Administration, Score: 3\.7][Aug 2011–May 2015]
- Graduated with honors and a concentration in operations and supply chain management
- Completed a capstone project on distribution network design for a regional retailer
- Served as vice president of the supply chain student association
#strong[Courses]: Operations Management, Supply Chain Management, Statistics for Business, Managerial Accounting, Organizational Behavior, Business Analytics, Project Management, Logistics and Transportation
]

= Work
#resume-pad[
#resume-subheading[Operations Manager][#link("https://www.meridianfulfillment.com")[https\:\/\/www\.meridianfulfillment\.com]][Meridian Fulfillment Partners][Mar 2021–Present]
- Lead daily operations for a 180,000\-square\-foot fulfillment center with 120\+ associates across receiving, inventory, picking, packing, and shipping
- Reduced order cycle time by 18% and overtime spend by 22% through labor scheduling, cross\-training, and daily tiered huddles
- Own labor, supplies, and equipment budgets; delivered \$1\.4M in annual savings through vendor consolidation and process controls
- Partner with transportation, customer service, and sales to achieve 99\.2% on\-time shipment and 99\.8% inventory accuracy
- Coach six supervisors and build a safety\-first culture with standardized work, root\-cause analysis, and visible KPI boards
#strong[Keywords]: Fulfillment Operations, P&L Management, Labor Planning, Lean Six Sigma, Inventory Control, Safety Compliance

#resume-subheading[Operations Supervisor][#link("https://www.lakeshoredistribution.com")[https\:\/\/www\.lakeshoredistribution\.com]][Lakeshore Distribution Co\.][Jun 2017–Feb 2021]
- Supervised 35 associates across two shifts in a high\-volume distribution center serving retail and e\-commerce customers
- Improved picking accuracy from 98\.6% to 99\.7% by redesigning zone assignments and implementing daily quality audits
- Led a WMS wave\-planning rollout that increased cases shipped per labor hour by 14%
- Maintained OSHA compliance and reduced recordable incidents by 30% through training, ergonomic improvements, and safety observations
- Coordinated peak\-season staffing plans and temporary labor onboarding for 60\+ seasonal associates
#strong[Keywords]: Distribution Operations, Warehouse Management, Quality Audits, Continuous Improvement, Team Leadership

#resume-subheading[Operations Analyst][#link("https://www.cobaltretailsupply.com")[https\:\/\/www\.cobaltretailsupply\.com]][Cobalt Retail Supply][Aug 2015–May 2017]
- Analyzed demand forecasts, inventory turns, and transportation costs to support weekly operations planning
- Built Excel and SQL dashboards that gave managers real\-time visibility into fill rate, backorders, and labor productivity
- Supported RFQ and carrier scorecard processes, helping reduce inbound freight cost by 9%
- Documented standard operating procedures and trained associates on new inventory\-control workflows
#strong[Keywords]: Data Analysis, Inventory Planning, SQL, Excel, Freight Optimization
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: Business communication, Public speaking])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Limited Working Proficiency], [#strong[Keywords]: Team support, Operational instructions])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Operations Leadership]: Expert], [#strong[Keywords]: Team Development, P&L Ownership, Labor Planning, KPI Management, Change Management])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Process Improvement]: Advanced], [#strong[Keywords]: Lean Six Sigma, 5S, Root Cause Analysis, Standard Work, Value Stream Mapping])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Supply Chain & Inventory]: Advanced], [#strong[Keywords]: Demand Planning, Inventory Accuracy, Warehouse Management, Cross\-Docking, Supplier Management])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data & Systems]: Intermediate], [#strong[Keywords]: SQL, Excel, Tableau, WMS, ERP])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Safety & Compliance]: Advanced], [#strong[Keywords]: OSHA, Workers Compensation, Audit Readiness, Risk Mitigation])
]

= Awards
#resume-pad[
#resume-subheading[Operational Excellence Award][][Meridian Fulfillment Partners][Nov 2023]
Recognized for leading a cross\-functional initiative that reduced fulfillment cycle time by 18% while improving on\-time shipment performance during peak season\.

#resume-subheading[Leadership Impact Award][][Lakeshore Distribution Co\.][Jun 2020]
Awarded for developing frontline supervisors and improving associate engagement scores by 15 points across two shifts\.
]

= Certificates
#resume-pad[
#resume-subheading[Certified Supply Chain Professional (CSCP)][#link("https://www.ascm.org/certification-credentials/cscp/")[https\:\/\/www\.ascm\.org\/certification\-credentials\/cscp\/]][Association for Supply Chain Management][Sep 2022]

#resume-subheading[Lean Six Sigma Green Belt][#link("https://www.iise.org/lean-six-sigma/")[https\:\/\/www\.iise\.org\/lean\-six\-sigma\/]][Institute of Industrial and Systems Engineers][Apr 2019]

#resume-subheading[OSHA 30\-Hour General Industry][#link("https://www.nsc.org/workplace/training-and-courses/oshacourses")[https\:\/\/www\.nsc\.org\/workplace\/training\-and\-courses\/oshacourses]][National Safety Council][Jan 2018]
]

= Publications
#resume-pad[
#resume-subheading[Five Levers for a More Resilient Fulfillment Operation][#link("https://www.scmr.com/")[https\:\/\/www\.scmr\.com\/]][Supply Chain Management Review][Oct 2024]
- Outlines practical operating routines for stabilizing peak\-season throughput
- Covers labor modeling, inventory accuracy, cross\-training, and daily management systems
]

= Projects
#resume-pad[
#resume-subheading[Warehouse Layout Optimization][][Redesigned pick paths, storage zones, and staging areas to improve flow and reduce travel time in a 180,000\-square\-foot facility\.][Feb 2022–Jul 2022]
- Reduced average pick travel distance by 21% and improved lines picked per hour by 12%
- Collaborated with safety, inventory control, and frontline teams to phase changes without service disruption
- Documented new slotting rules and trained supervisors on sustained execution
#strong[Keywords]: Facility Layout, Slotting, Lean, Productivity

#resume-subheading[Peak Season Labor Model][][Built a flexible staffing and cross\-training model for a 40% volume surge across receiving, picking, and packing\.][Aug 2023–Dec 2023]
- Forecasted labor demand by function and shift using historical volume, productivity, and absenteeism data
- Reduced agency labor spend by 16% while maintaining 99%\+ on\-time shipment
- Created daily staffing dashboards adopted by operations and finance partners
#strong[Keywords]: Labor Modeling, Peak Planning, Cross\-Training, Forecasting
]

= Interests
#resume-pad[
#strong[Supply Chain Innovation]: Warehouse Automation, Robotics, Sustainability

#strong[Community & Mentoring]: Career Coaching, Food Security, Youth Sports

#strong[Personal Wellbeing]: Cycling, Hiking, Cooking
]

= Volunteer
#resume-pad[
#resume-subheading[Operations Volunteer][#link("https://www.chicagofoodbank.org/")[https\:\/\/www\.chicagofoodbank\.org\/]][Greater Chicago Food Depository][Mar 2018–Present]
- Support weekly food sorting, inventory checks, and distribution events for partner agencies
- Help train new volunteers on safe material handling and warehouse flow
- Contributed to a repacking initiative that increased volunteer throughput by 20%
]