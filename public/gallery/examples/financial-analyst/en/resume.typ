#set document(
  title: "Marcus T. Ellington - Financial Analyst | FP&A, Valuation, and Data-Driven Forecasting",
  author: "Marcus T. Ellington",
  keywords: "Financial Modeling, Data Analysis, FP&A, Communication",
  description: "Résumé of Marcus T. Ellington",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Marcus T\. Ellington]] #v(-0.2em)

#text(size: 1.44em)[Financial Analyst | FP&A, Valuation, and Data\-Driven Forecasting]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0182")[(415) 555\-0182] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:marcus.ellington@finmail.com")[marcus\.ellington\@finmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marcusellington.com")[https\:\/\/www\.marcusellington\.com]

1200 Market Street, Suite 400, San Francisco, California, United States, 94102

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marcus-ellington")[marcus\-ellington] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/marcus-ellington")[marcus\-ellington]
]

= Basics

#resume-pad[
- Financial analyst with 6\+ years of experience in FP&A, investment research, and financial modeling across technology and consumer sectors
- Skilled at building driver\-based forecasts, analyzing variances, and translating complex data into clear recommendations for senior leadership
- Proven record of improving forecast accuracy, automating recurring reporting, and partnering with cross\-functional teams to support strategic decisions
- Comfortable working across the full analytics stack, from SQL and Python analysis to executive\-ready dashboards and investment memos
]

= Education
#resume-pad[
#resume-subheading[University of California, Berkeley][#link("https://www.berkeley.edu")[https\:\/\/www\.berkeley\.edu]][Bachelor, Economics, Score: 3\.9\/4\.0][Aug 2014–May 2018]
- Built a strong foundation in valuation, accounting, and quantitative analysis
- Completed capstone research on capital structure decisions in technology firms
- Developed proficiency in Excel, Python, and statistical modeling through coursework and projects
#strong[Courses]: Corporate Finance, Financial Accounting, Econometrics, Investments, Microeconomic Theory, Data Analysis with Python, Business Valuation, Risk Management

#resume-subheading[Boston College][#link("https://www.bc.edu")[https\:\/\/www\.bc\.edu]][Master, Finance, Score: 3\.8\/4\.0][Aug 2018–May 2019]
- Focused on corporate finance, valuation, and investment analysis
- Completed a practicum valuing a mid\-cap SaaS company using DCF and comparable company analysis
- Collaborated with a five\-person team to present investment recommendations to faculty and industry judges
#strong[Courses]: Financial Modeling, Investment Analysis, Corporate Valuation, Econometrics, Portfolio Management
]

= Work
#resume-pad[
#resume-subheading[Senior Financial Analyst][#link("https://www.alderridgecapital.com")[https\:\/\/www\.alderridgecapital\.com]][Alder Ridge Capital][Jun 2021–Present]
- Lead FP&A for a \$180M revenue portfolio, owning monthly forecasts, annual budgets, and long\-range plans for three business units
- Build and maintain three\-statement models, scenario analyses, and KPI dashboards used by the CFO and investment committee
- Improved forecast accuracy from ±12% to ±4% by redesigning driver\-based revenue and headcount models
- Automate recurring reporting with SQL, Python, and Power BI, reducing close\-cycle reporting time by 10 hours per month
- Partner with sales, product, and accounting teams to explain variances and support pricing, hiring, and investment decisions
#strong[Keywords]: FP&A, Forecasting, Three\-Statement Modeling, Variance Analysis, Power BI

#resume-subheading[Financial Analyst][#link("https://www.northstarequityresearch.com")[https\:\/\/www\.northstarequityresearch\.com]][Northstar Equity Research][Jul 2019–May 2021]
- Conducted equity research and valuation for mid\-cap technology and consumer companies, supporting a \$2\.4B AUM portfolio
- Built DCF, comparable company, and precedent transaction models; prepared investment memos and quarterly earnings reviews
- Analyzed results, updated estimates, and communicated risks and catalysts to portfolio managers and research leadership
- Maintained sector databases and automated data pulls using Python and Excel VBA
#strong[Keywords]: Equity Research, Valuation, DCF Modeling, Earnings Analysis, Excel VBA
]

= Languages
#resume-pad[
#strong[English]: Native or Bilingual Proficiency

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: Financial reporting, Client presentations])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Financial Modeling]: Expert], [#strong[Keywords]: Three\-Statement Modeling, DCF, Comparable Companies, Scenario Analysis, Budgeting])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Analysis]: Advanced], [#strong[Keywords]: SQL, Python, Pandas, Power BI, Tableau, Excel VBA])

#grid(columns: (1fr, auto), align: (left, right), [#strong[FP&A]: Advanced], [#strong[Keywords]: Forecasting, Variance Analysis, KPI Reporting, Headcount Planning, Long\-Range Planning])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Communication]: Expert], [#strong[Keywords]: Executive Presentations, Cross\-Functional Collaboration, Investment Memos, Stakeholder Management])
]

= Awards
#resume-pad[
#resume-subheading[Outstanding Graduate Student Award][][Boston College][May 2019]
Awarded to the top graduating student in the Master of Finance program for academic excellence and leadership in collaborative coursework\.
]

= Certificates
#resume-pad[
#resume-subheading[Financial Modeling & Valuation Analyst (FMVA)][#link("https://corporatefinanceinstitute.com/certifications/fmva/")[https\:\/\/corporatefinanceinstitute\.com\/certifications\/fmva\/]][Corporate Finance Institute][Mar 2022]

#resume-subheading[Microsoft Certified\: Data Analyst Associate][#link("https://learn.microsoft.com/en-us/credentials/certifications/data-analyst-associate/")[https\:\/\/learn\.microsoft\.com\/en\-us\/credentials\/certifications\/data\-analyst\-associate\/]][Microsoft][Jan 2023]
]

= Publications
#resume-pad[
#resume-subheading[Improving Forecast Accuracy with Driver\-Based Planning][#link("https://www.financeleadershipjournal.com/articles/driver-based-planning")[https\:\/\/www\.financeleadershipjournal\.com\/articles\/driver\-based\-planning]][Finance Leadership Journal][Oct 2023]
- Article covering practical approaches to driver\-based forecasting, variance analysis, and forecast governance
- Draws on experience redesigning revenue and headcount models for a multi\-business\-unit portfolio
]

= Projects
#resume-pad[
#resume-subheading[Revenue Forecasting Dashboard][#link("https://github.com/marcus-ellington/revenue-forecast-dashboard")[https\:\/\/github\.com\/marcus\-ellington\/revenue\-forecast\-dashboard]][Interactive dashboard for monitoring revenue drivers, forecast accuracy, and variance explanations\.][Jan 2023–Apr 2023]
- Built a Power BI dashboard connected to SQL models to track bookings, pipeline, and revenue by segment
- Added variance views that let finance and sales leaders drill into forecast misses by region and product
- Reduced manual variance commentary preparation from two days to under four hours
#strong[Keywords]: Power BI, SQL, Forecasting, Variance Analysis

#resume-subheading[SaaS Benchmarking Model][#link("https://github.com/marcus-ellington/saas-benchmarking-model")[https\:\/\/github\.com\/marcus\-ellington\/saas\-benchmarking\-model]][Python and Excel model for benchmarking SaaS growth, retention, and margin metrics across public companies\.][Mar 2022–Jun 2022]
- Collected and normalized public\-company data for 40\+ SaaS businesses
- Calculated growth, gross margin, net revenue retention, and rule\-of\-40 metrics for comparative analysis
- Presented findings on operating efficiency and growth durability to an internal research team
#strong[Keywords]: SaaS Metrics, Python, Excel, Benchmarking
]

= Interests
#resume-pad[
#strong[Investing]: Value Investing, ETF Research, Personal Finance

#strong[Outdoors]: Trail Running, Cycling, Photography
]

= Volunteer
#resume-pad[
#resume-subheading[Volunteer Financial Coach][#link("https://www.bayareafinancialliteracy.org")[https\:\/\/www\.bayareafinancialliteracy\.org]][Bay Area Financial Literacy Coalition][Sep 2020–Present]
- Coach low\-income households on budgeting, debt reduction, and savings strategies through monthly one\-on\-one sessions
- Develop plain\-language workshop materials on credit, banking, and retirement basics
- Track participant progress and adapt coaching plans to individual financial goals
]