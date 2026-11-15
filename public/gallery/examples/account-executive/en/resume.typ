#set document(
  title: "Jordan A. Ellis - Senior Account Executive | Enterprise SaaS & Strategic Partnerships",
  author: "Jordan A. Ellis",
  keywords: "Enterprise Sales, Sales Tools & CRM, Communication & Leadership",
  description: "Résumé of Jordan A. Ellis",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Jordan A\. Ellis]] #v(-0.2em)

#text(size: 1.44em)[Senior Account Executive | Enterprise SaaS & Strategic Partnerships]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0138")[(415) 555\-0138] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:jordan.ellis@example.com")[jordan\.ellis\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.jordanellis.com")[https\:\/\/www\.jordanellis\.com]

450 Mission Street, Suite 1200, San Francisco, California, United States, 94105

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/jordanellis")[jordanellis] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/jordanellis_sales")[jordanellis\_sales]
]

= Basics

#resume-pad[
- Results\-driven Senior Account Executive with 8\+ years of experience driving revenue growth in enterprise SaaS and technology solutions\.
- Consistently exceeded annual quotas by 120%\+ through consultative selling, strategic account planning, and C\-level relationship building\.
- Skilled in full\-cycle sales from prospecting to close, with expertise in contract negotiation, pipeline management, and cross\-functional collaboration\.
- Adept at identifying customer pain points, delivering tailored solutions, and expanding accounts through upsell and cross\-sell strategies\.
]

= Education
#resume-pad[
#resume-subheading[University of Washington][#link("https://www.washington.edu")[https\:\/\/www\.washington\.edu]][Bachelor, Business Administration, Score: 3\.7][Sep 2009–Jun 2013]
- Graduated with honors and a concentration in sales and marketing\.
- Led a sales case competition team that placed first among 20 teams\.
- Completed an internship with a local tech startup, supporting lead generation and market research\.
#strong[Courses]: Principles of Marketing, Organizational Behavior, Financial Accounting, Business Negotiation, Strategic Management, Consumer Behavior
]

= Work
#resume-pad[
#resume-subheading[Senior Account Executive][#link("https://www.cloudpeaksolutions.com")[https\:\/\/www\.cloudpeaksolutions\.com]][CloudPeak Solutions][Jan 2021–Present]
- Own full\-cycle sales process for enterprise accounts, from prospecting to close, generating \$3\.5M\+ in annual recurring revenue\.
- Exceeded annual quota by 125% in 2022 and 118% in 2023, consistently ranking in the top 5% of sales performers\.
- Built and maintained strong relationships with C\-level executives, resulting in a 40% increase in account expansion\.
- Negotiated complex multi\-year contracts, improving average deal size by 30% and reducing sales cycle by 15%\.
#strong[Keywords]: Enterprise Sales, SaaS, Quota Attainment, C\-Level Relationships

#resume-subheading[Account Executive][#link("https://www.brightwaveanalytics.com")[https\:\/\/www\.brightwaveanalytics\.com]][BrightWave Analytics][Mar 2017–Dec 2020]
- Managed a portfolio of 50\+ mid\-market accounts, achieving 110% of quota in 2018 and 2019\.
- Developed and executed strategic account plans, resulting in \$1\.2M in new business revenue\.
- Collaborated with marketing and product teams to align solutions with customer needs and drive retention\.
#strong[Keywords]: Mid\-Market Sales, Pipeline Management, Salesforce, Consultative Selling

#resume-subheading[Business Development Representative][#link("https://www.nimbussoftware.com")[https\:\/\/www\.nimbussoftware\.com]][Nimbus Software][Jul 2014–Feb 2017]
- Prospected and qualified 100\+ leads per month through outbound calls, emails, and social selling\.
- Generated \$800K in qualified pipeline within first year, exceeding target by 130%\.
- Supported account executives with research, call preparation, and CRM data management\.
#strong[Keywords]: Lead Generation, Outbound Sales, CRM, Cold Calling
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: TOEFL 115])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: DELE C1])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Mandarin]: Limited Working Proficiency], [#strong[Keywords]: HSK 3])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Enterprise Sales]: Expert], [#strong[Keywords]: Full\-Cycle Sales, Quota Attainment, Contract Negotiation, Revenue Growth])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Sales Tools & CRM]: Advanced], [#strong[Keywords]: Salesforce, HubSpot, Outreach\.io, LinkedIn Sales Navigator])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Communication & Leadership]: Expert], [#strong[Keywords]: C\-Level Presentations, Cross\-Functional Collaboration, Team Mentoring, Strategic Planning])
]

= Awards
#resume-pad[
#resume-subheading[Presidents Club][][CloudPeak Solutions][Jan 2023]
Recognized as top 5% of sales performers for exceeding annual quota and driving enterprise revenue growth\.

#resume-subheading[Rookie of the Year][][BrightWave Analytics][Dec 2018]
Awarded for highest new logo acquisition and fastest ramp\-up to full quota among new account executives\.
]

= Certificates
#resume-pad[
#resume-subheading[Certified Sales Professional (CSP)][#link("https://www.salesmanagement.org/csp")[https\:\/\/www\.salesmanagement\.org\/csp]][Sales Management Association][May 2019]

#resume-subheading[Salesforce Certified Administrator][#link("https://trailhead.salesforce.com/en/credentials/administrator")[https\:\/\/trailhead\.salesforce\.com\/en\/credentials\/administrator]][Salesforce][Aug 2020]
]

= Publications
#resume-pad[
#resume-subheading[The Consultative SaaS Sales Playbook][#link("https://www.saleshacker.com/consultative-saas-sales-playbook")[https\:\/\/www\.saleshacker\.com\/consultative\-saas\-sales\-playbook]][SalesHacker][Mar 2022]
- Article outlining a repeatable framework for consultative selling in SaaS\.
- Covers discovery, solution mapping, objection handling, and closing strategies\.
- Featured in SalesHacker\'s top 10 sales articles of 2022\.
]

= Projects
#resume-pad[
#resume-subheading[Enterprise CRM Migration][#link("https://www.cloudpeaksolutions.com/case-studies/crm-migration")[https\:\/\/www\.cloudpeaksolutions\.com\/case\-studies\/crm\-migration]][Led the migration of legacy CRM to Salesforce for enterprise clients\.][Feb 2021–Aug 2021]
- Managed cross\-functional team of 6 to ensure seamless data migration and user adoption\.
- Reduced reporting time by 40% and improved pipeline visibility for sales leadership\.
- Delivered training sessions to 200\+ users across three business units\.
#strong[Keywords]: CRM Migration, Salesforce, Change Management

#resume-subheading[Sales Playbook Development][][Created a repeatable sales playbook for mid\-market segment\.][Jan 2019–Jun 2019]
- Documented best practices for prospecting, discovery, and objection handling\.
- Rolled out playbook to 25 account executives, contributing to a 15% increase in win rate\.
- Standardized CRM stages and reporting for improved forecasting accuracy\.
#strong[Keywords]: Sales Playbook, Process Improvement, Training
]

= Interests
#resume-pad[
#strong[Sports]: Golf, Tennis, Running

#strong[Personal Development]: Podcasts, Reading, Public Speaking
]

= Volunteer
#resume-pad[
#resume-subheading[Mentor][#link("https://www.bayareasalesmentors.org")[https\:\/\/www\.bayareasalesmentors\.org]][Bay Area Sales Mentorship Program][Sep 2019–Present]
- Mentored junior sales professionals on prospecting, negotiation, and career development\.
- Conducted monthly workshops on consultative selling and account management\.
- Helped mentees achieve an average 20% increase in quota attainment\.
]