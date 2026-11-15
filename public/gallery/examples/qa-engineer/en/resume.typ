#set document(
  title: "Jordan Ellis - QA Engineer | Test Automation & Quality Assurance",
  author: "Jordan Ellis",
  keywords: "Test Automation, Manual Testing, Performance Testing, DevOps & Tools, Programming",
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

#text(size: 1.44em)[QA Engineer | Test Automation & Quality Assurance]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0132")[(415) 555\-0132] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:jordan.ellis@example.com")[jordan\.ellis\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://jordanellis.dev")[https\:\/\/jordanellis\.dev]

4521 Innovation Way, San Jose, California, United States, 95112

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/jordanellis-qa")[jordanellis\-qa] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/jordanellisqa")[jordanellisqa] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/12345678/jordan-ellis")[jordan\-ellis]
]

= Basics

#resume-pad[
- Detail\-oriented QA Engineer with 6\+ years of experience designing and executing comprehensive test strategies for web and mobile applications\.
- Skilled in test automation using Selenium, Cypress, Playwright, and REST Assured, with a strong focus on reducing release cycles and improving defect detection\.
- Proven ability to collaborate with cross\-functional teams, translate requirements into test cases, and drive quality improvements throughout the SDLC\.
- Experienced in manual testing, API testing, performance testing, and CI\/CD integration, with a commitment to continuous learning and process optimization\.
]

= Education
#resume-pad[
#resume-subheading[University of California, Davis][#link("https://www.ucdavis.edu")[https\:\/\/www\.ucdavis\.edu]][Bachelor, Computer Science, Score: 3\.7][Sep 2014–Jun 2018]
- Graduated with honors and a strong foundation in software engineering principles\.
- Completed coursework focused on testing methodologies, quality assurance, and software development life cycles\.
- Led a capstone project on automated regression testing for a campus web portal\.
#strong[Courses]: Data Structures and Algorithms, Software Engineering, Database Systems, Web Development, Operating Systems, Computer Networks, Introduction to Software Testing
]

= Work
#resume-pad[
#resume-subheading[Senior QA Engineer][#link("https://www.brightwave-tech.com")[https\:\/\/www\.brightwave\-tech\.com]][BrightWave Technologies][Jan 2022–Present]
- Lead QA efforts for a suite of SaaS products, defining test strategies and ensuring high\-quality releases\.
- Built and maintained automated test suites using Cypress and Playwright, increasing regression coverage by 45%\.
- Integrated automated tests into CI\/CD pipelines with GitHub Actions, reducing release validation time from 3 days to 8 hours\.
- Mentored junior QA engineers, conducted code reviews, and established testing best practices across the team\.
- Collaborated with product managers and developers to review requirements and identify risks early in the development cycle\.
#strong[Keywords]: Test Automation, Cypress, Playwright, CI\/CD, Mentoring

#resume-subheading[QA Engineer][#link("https://www.novaretailsystems.com")[https\:\/\/www\.novaretailsystems\.com]][Nova Retail Systems][Mar 2019–Dec 2021]
- Designed and executed manual and automated test cases for web and mobile retail applications\.
- Developed API test suites using Postman and REST Assured, validating microservices and third\-party integrations\.
- Reduced production defects by 30% through improved regression testing and defect triage processes\.
- Participated in Agile ceremonies and contributed to sprint planning, estimation, and continuous improvement\.
- Maintained test documentation and reported quality metrics to stakeholders using Jira and Confluence\.
#strong[Keywords]: Manual Testing, API Testing, Postman, Jira, Regression Testing

#resume-subheading[Junior QA Analyst][#link("https://www.cloudsprint.io")[https\:\/\/www\.cloudsprint\.io]][CloudSprint Inc\.][Jul 2018–Feb 2019]
- Executed test cases for cloud\-based applications and documented defects with clear reproduction steps\.
- Assisted in the creation of test plans and test scripts based on business requirements\.
- Performed smoke, functional, and regression testing during release cycles\.
- Worked closely with senior QA engineers to learn automation frameworks and testing tools\.
#strong[Keywords]: Test Cases, Bug Tracking, SQL, Agile
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: Technical Writing, Public Speaking])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Limited Working Proficiency], [#strong[Keywords]: DELE B2, Conversational])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Test Automation]: Expert], [#strong[Keywords]: Selenium, Cypress, Playwright, Appium, REST Assured])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Manual Testing]: Advanced], [#strong[Keywords]: Test Planning, Regression Testing, Exploratory Testing, User Acceptance Testing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Performance Testing]: Intermediate], [#strong[Keywords]: JMeter, LoadRunner, Gatling])

#grid(columns: (1fr, auto), align: (left, right), [#strong[DevOps & Tools]: Advanced], [#strong[Keywords]: Jenkins, GitHub Actions, Docker, Git, Jira])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programming]: Advanced], [#strong[Keywords]: Python, JavaScript, Java, SQL, Bash])
]

= Awards
#resume-pad[
#resume-subheading[Quality Champion Award][][BrightWave Technologies][Nov 2023]
Recognized for outstanding contributions to test automation and quality process improvements, leading to a 40% reduction in escaped defects\.
]

= Certificates
#resume-pad[
#resume-subheading[ISTQB Certified Tester Foundation Level][#link("https://www.istqb.org/certifications")[https\:\/\/www\.istqb\.org\/certifications]][ISTQB][Aug 2019]

#resume-subheading[Certified Selenium Professional][#link("https://www.seleniumacademy.com")[https\:\/\/www\.seleniumacademy\.com]][Selenium Academy][Feb 2021]
]

= Publications
#resume-pad[
#resume-subheading[Automating Accessibility Checks in CI Pipelines][#link("https://www.ministryoftesting.com/articles/automating-accessibility-checks")[https\:\/\/www\.ministryoftesting\.com\/articles\/automating\-accessibility\-checks]][Ministry of Testing][Apr 2023]
- Discusses strategies for integrating accessibility testing into automated CI\/CD workflows\.
- Covers tools such as axe\-core, Pa11y, and Lighthouse\.
- Provides practical examples for reducing accessibility defects in web applications\.
]

= Projects
#resume-pad[
#resume-subheading[OpenCart QA Test Suite][#link("https://github.com/jordanellis-qa/opencart-qa-suite")[https\:\/\/github\.com\/jordanellis\-qa\/opencart\-qa\-suite]][Open\-source test suite for e\-commerce checkout flows][Jan 2021–May 2021]
- Developed a Selenium\-based test suite covering cart, checkout, and payment workflows\.
- Implemented Page Object Model and data\-driven testing with Pytest\.
- Configured GitHub Actions to run tests on every pull request\.
#strong[Keywords]: Selenium, Python, Pytest, Page Object Model

#resume-subheading[API Contract Testing Framework][#link("https://github.com/jordanellis-qa/api-contract-testing")[https\:\/\/github\.com\/jordanellis\-qa\/api\-contract\-testing]][Lightweight framework for validating API contracts across microservices][Sep 2022–Feb 2023]
- Built a reusable framework using Python and JSON Schema to validate API request\/response contracts\.
- Integrated with Postman and Newman for CI execution\.
- Reduced integration defects by catching schema mismatches early\.
#strong[Keywords]: API Testing, JSON Schema, Python, Postman
]

= Interests
#resume-pad[
#strong[Open Source]: Testing, Automation, Community

#strong[Outdoor Activities]: Hiking, Cycling, Photography
]

= Volunteer
#resume-pad[
#resume-subheading[Workshop Volunteer][#link("https://www.baqaa.org")[https\:\/\/www\.baqaa\.org]][Bay Area Quality Assurance Association][Feb 2020–Present]
- Volunteer workshop facilitator for introductory test automation sessions\.
- Helped organize quarterly meetups and mentored attendees new to QA\.
- Contributed to the association\'s knowledge\-sharing initiatives\.
]