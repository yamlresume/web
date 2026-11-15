#set document(
  title: "Maya Patel - Product Manager with 7+ years of SaaS and AI product experience",
  author: "Maya Patel",
  keywords: "Product Management, Data Analytics, Design & Prototyping, Technical Fluency",
  description: "Résumé of Maya Patel",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Maya Patel]] #v(-0.2em)

#text(size: 1.44em)[Product Manager with 7\+ years of SaaS and AI product experience]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0193")[(415) 555\-0193] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:maya.patel@example.com")[maya\.patel\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://mayapatel.dev")[https\:\/\/mayapatel\.dev]

San Francisco, California, United States, 94107

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/mayapatel")[mayapatel] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/mayapatel_pm")[mayapatel\_pm]
]

= Basics

#resume-pad[
- Product Manager with 7\+ years of experience defining and launching data\-driven SaaS products
- Proven track record of growing ARR by 3x through customer discovery, roadmap execution, and cross\-functional leadership
- Skilled in merging qualitative user research with quantitative analytics to prioritize features that deliver measurable outcomes
- Experienced in leading agile teams and collaborating with engineering, design, GTM, and executive stakeholders
- Passionate about applying AI\/ML capabilities to solve real customer problems in responsible and user\-friendly ways
]

= Education
#resume-pad[
#resume-subheading[University of California, Berkeley][#link("https://www.berkeley.edu/")[https\:\/\/www\.berkeley\.edu\/]][Bachelor, Business Administration and Computer Science, Score: 3\.9][Aug 2014–May 2018]
- Graduated with highest honors and completed an interdisciplinary capstone that resulted in a working product prototype
- Served as president of the campus Product Club, organizing industry speaker series and product case competitions
- Developed foundational skills in software development, data analysis, and customer\-centric business strategy
#strong[Courses]: Product Management and Innovation, Data Structures and Algorithms, Consumer Behavior, Marketing Analytics, Finance, Machine Learning and Artificial Intelligence, Entrepreneurship, Design Thinking
]

= Work
#resume-pad[
#resume-subheading[Senior Product Manager][#link("https://www.nimbus-cloud.io")[https\:\/\/www\.nimbus\-cloud\.io]][Nimbus Cloud Technologies][Jun 2022–Present]
- Own the product strategy and roadmap for an AI\-powered customer service platform used by 1,200\+ enterprise teams
- Grew monthly active users by 45% and increased paid conversion by 28% through targeted onboarding improvements and a rebuilt pricing page
- Led discovery and delivery of an intelligent suggestions feature, reducing average first\-response time by 22%
- Partner with engineering, design, data science, and sales leaders to align quarterly OKRs and accelerate time\-to\-market
- Direct cross\-functional squads of 12 with a mentorship focus on design and product analytics
#strong[Keywords]: AI\/ML, Roadmap Strategy, OKR Planning, Customer Discovery, Cross\-functional Leadership

#resume-subheading[Product Manager][#link("https://www.brightpath.ai")[https\:\/\/www\.brightpath\.ai]][Brightpath Analytics][Jun 2020–May 2022]
- Managed the analytics suite for a mid\-market B2B SaaS product, handling 30\+ releases per year
- Introduced an experimentation framework that increased feature adoption by 20% and reduced churn by 15%
- Conducted 50\+ user interviews and synthesized insights into prioritized product themes and acceptance criteria
- Launched a self\-serve reporting module that drove a \$1\.2M increase in annual recurring revenue
- Developed a product analytics maturity model to improve data quality and internal decision\-making
#strong[Keywords]: SaaS, A\/B Testing, User Interviews, Experimentation, B2B Analytics

#resume-subheading[Associate Product Manager][#link("https://www.leadgenix.co")[https\:\/\/www\.leadgenix\.co]][LeadGenix][Jul 2018–Jun 2020]
- Supported the senior product team in building a marketing automation web application for SMBs
- Coordinated sprint planning, backlog grooming, and release communication across remote teams
- Automated weekly competitor analysis and usability review processes, saving 6 hours of manual work per week
- Collaborated with customer success on win\/loss analysis that refined the qualification criteria for lead\-scoring workflows
#strong[Keywords]: Backlog Management, Agile, Customer Success, Sprint Planning, Competitor Analysis
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: TOEFL 118])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: DELE C1])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Mandarin]: Elementary Proficiency], [#strong[Keywords]: HSK 3])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Product Management]: Expert], [#strong[Keywords]: Roadmapping, User Research, Agile Development, Stakeholder Management, OKR Planning, Pricing Strategy])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Analytics]: Advanced], [#strong[Keywords]: SQL, Amplitude, Google Analytics, A\/B Testing, Metrics])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Design & Prototyping]: Intermediate], [#strong[Keywords]: Figma, Miro, Wireframing, User Journey Mapping])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Technical Fluency]: Intermediate], [#strong[Keywords]: REST APIs, Python, JavaScript, AWS, Machine Learning Basics])
]

= Awards
#resume-pad[
#resume-subheading[Product Leader of the Year][][SFF Product Leadership Forum][Dec 2023]
Recognized for delivering an AI\-native user experience that became a company flagship feature and significantly exceeded adoption targets\.

#resume-subheading[Dean\'s List][][University of California, Berkeley][May 2016]
Awarded for outstanding academic performance in business and computer science coursework\.
]

= Certificates
#resume-pad[
#resume-subheading[Certified Product Manager (CPM)][#link("https://www.productmanagementconsortium.org/certification")[https\:\/\/www\.productmanagementconsortium\.org\/certification]][Product Management Consortium][Apr 2022]

#resume-subheading[Pragmatic Institute Certification][#link("https://www.pragmaticinstitute.com")[https\:\/\/www\.pragmaticinstitute\.com]][Pragmatic Institute][Sep 2021]

#resume-subheading[AWS Cloud Practitioner][#link("https://aws.amazon.com/certification/certified-cloud-practitioner")[https\:\/\/aws\.amazon\.com\/certification\/certified\-cloud\-practitioner]][Amazon Web Services][Feb 2021]
]

= Publications
#resume-pad[
#resume-subheading[Designing Responsible AI Product Features Customers Can Trust][#link("https://medium.com/product-coalition/designing-responsible-ai-product-features-customers-can-trust")[https\:\/\/medium\.com\/product\-coalition\/designing\-responsible\-ai\-product\-features\-customers\-can\-trust]][Product Coalition][Feb 2023]
Explores how product managers can combine transparent AI model disclosures, user control, and ethical design principles to create products that earn long\-term customer trust\.
]

= Projects
#resume-pad[
#resume-subheading[MarketPulse Analytics Dashboard][#link("https://github.com/mayapatel/marketpulse")[https\:\/\/github\.com\/mayapatel\/marketpulse]][A self\-served product analytics dashboard concept designed to help small teams understand feature adoption and user retention\.][Jan 2021–Apr 2021]
- Created end\-to\-end UX concept and interactive MVP in Figma
- Defined event taxonomy and sample SQL queries for core product metrics
- Ran usability tests with 10 potential users and iterated based on the findings
#strong[Keywords]: Product Analytics, Figma, SQL, Information Architecture
]

= Interests
#resume-pad[
#strong[Tech & Design]: AI Ethics, Design Thinking, No\-Code

#strong[Outdoor Activities]: Hiking, Trail Running, Kayaking
]

= Volunteer
#resume-pad[
#resume-subheading[Mentorship Lead][#link("https://www.womeninproduct.org")[https\:\/\/www\.womeninproduct\.org]][Women in Product][Jan 2021–Present]
- Mentored 12 early\-career product managers and developed a structured onboarding guide for the mentorship program
- Organized monthly speaker events and cross\-company product workshops with 200\+ attendees
- Built a resource library of product templates and interview preparation material for the community
]