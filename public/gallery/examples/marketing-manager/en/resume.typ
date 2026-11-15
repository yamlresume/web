#set document(
  title: "Jordan Ellis - Senior Marketing Manager | Brand Strategist | Growth Marketing",
  author: "Jordan Ellis",
  keywords: "Marketing Strategy, Digital Marketing, Analytics & CRM, Social Media, Project Management",
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

#text(size: 1.44em)[Senior Marketing Manager | Brand Strategist | Growth Marketing]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0138")[(415) 555\-0138] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:jordan.ellis@marketingpro.com")[jordan\.ellis\@marketingpro\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.jordanellis.com")[https\:\/\/www\.jordanellis\.com]

482 Market Street, Suite 900, San Francisco, California, United States, 94105

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/jordanellis")[jordanellis] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/jordanellis")[jordanellis] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@jordanellis")[jordanellis]
]

= Basics

#resume-pad[
- Integrated marketing leader with 8\+ years of experience developing and executing data\-driven campaigns across digital, social, and traditional channels\.
- Proven track record of increasing brand awareness, generating qualified leads, and driving revenue growth for B2B and B2C companies\.
- Skilled in building and mentoring high\-performing marketing teams, managing budgets up to \$2M, and collaborating with cross\-functional stakeholders\.
- Adept at leveraging analytics, CRM, and marketing automation tools to optimize performance and inform strategic decisions\.
]

= Education
#resume-pad[
#resume-subheading[Northwestern University][#link("https://www.northwestern.edu/")[https\:\/\/www\.northwestern\.edu\/]][Master, Integrated Marketing Communications, Score: 3\.95][Sep 2016–Jun 2018]
- Graduated with distinction and received the Dean\'s Scholarship for academic excellence\.
- Completed capstone project on omnichannel customer journey mapping for a national retail brand\.
#strong[Courses]: Consumer Insight and Analytics, Brand Communication, Digital Marketing Strategy, Marketing Finance, Strategic Communications, Media Planning

#resume-subheading[University of California, Berkeley][#link("https://www.berkeley.edu/")[https\:\/\/www\.berkeley\.edu\/]][Bachelor, Marketing and Business Administration, Score: 3\.8][Aug 2012–May 2016]
- Served as Marketing Director for the student business association, growing membership by 30%\.
- Completed internship with a local startup, developing social media and content marketing playbooks\.
#strong[Courses]: Principles of Marketing, Consumer Behavior, Business Analytics, Microeconomics, Statistics, Organizational Behavior
]

= Work
#resume-pad[
#resume-subheading[Senior Marketing Manager][#link("https://www.brightwavedigital.com")[https\:\/\/www\.brightwavedigital\.com]][Brightwave Digital][Jan 2022–Present]
- Lead a team of 6 marketing professionals to plan and execute integrated campaigns for 12\+ B2B and B2C clients\.
- Developed and managed annual marketing budgets exceeding \$2M, consistently delivering ROI above 300%\.
- Spearheaded a brand refresh and website redesign that increased organic traffic by 65% and lead conversion by 28%\.
- Implemented marketing automation workflows in HubSpot, reducing manual tasks by 40% and improving lead nurturing\.
- Built a reporting framework using Google Analytics, Tableau, and Salesforce to track KPIs and present insights to C\-suite\.
#strong[Keywords]: Integrated Marketing, Budget Management, Marketing Automation, Team Leadership, ROI Optimization

#resume-subheading[Marketing Manager][#link("https://www.northstarconsumer.com")[https\:\/\/www\.northstarconsumer\.com]][Northstar Consumer Goods][Mar 2019–Dec 2021]
- Managed product marketing for a portfolio of 15\+ consumer packaged goods, generating \$18M in annual revenue\.
- Launched 8 new products from concept to market, achieving average first\-year sales targets of 115%\.
- Led consumer research and segmentation studies to inform positioning, messaging, and media mix\.
- Partnered with sales and e\-commerce teams to develop promotional calendars and retail activation programs\.
- Grew social media following by 120% through influencer partnerships and user\-generated content campaigns\.
#strong[Keywords]: Product Marketing, Consumer Research, Go\-to\-Market, E\-commerce, Influencer Marketing

#resume-subheading[Marketing Specialist][#link("https://www.sparkandco.com")[https\:\/\/www\.sparkandco\.com]][Spark & Co\.][Jun 2018–Feb 2019]
- Executed email marketing campaigns with open rates 22% above industry benchmarks\.
- Assisted in the development of content marketing strategy, producing blog posts, whitepapers, and case studies\.
- Coordinated trade show and event marketing logistics, generating 500\+ qualified leads\.
- Analyzed campaign performance and prepared monthly reports for senior management\.
#strong[Keywords]: Email Marketing, Content Marketing, Event Marketing, Analytics
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: TOEFL 115, Business Writing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: DELE B2])

#grid(columns: (1fr, auto), align: (left, right), [#strong[French]: Limited Working Proficiency], [#strong[Keywords]: Conversational])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Marketing Strategy]: Expert], [#strong[Keywords]: Brand Positioning, Go\-to\-Market, Competitive Analysis, Customer Segmentation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Digital Marketing]: Advanced], [#strong[Keywords]: SEO, SEM, PPC, Email Marketing, Content Marketing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analytics & CRM]: Advanced], [#strong[Keywords]: Google Analytics, HubSpot, Salesforce, Tableau, A\/B Testing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Social Media]: Expert], [#strong[Keywords]: LinkedIn, Instagram, TikTok, Hootsuite, Sprout Social])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Project Management]: Advanced], [#strong[Keywords]: Agile, Asana, Jira, Budgeting, Cross\-functional])
]

= Awards
#resume-pad[
#resume-subheading[Marketer of the Year][][Brightwave Digital][Nov 2023]
Recognized for leading an integrated campaign that increased lead generation by 42% and exceeded revenue targets by 18%\.

#resume-subheading[Excellence in Brand Strategy][][Northstar Consumer Goods][Apr 2021]
Awarded for successful rebranding initiative across 5 product lines, resulting in a 25% increase in brand recall\.
]

= Certificates
#resume-pad[
#resume-subheading[Google Analytics Certified Professional][#link("https://skillshop.exceedlms.com/student/catalog")[https\:\/\/skillshop\.exceedlms\.com\/student\/catalog]][Google][Jan 2023]

#resume-subheading[HubSpot Inbound Marketing Certification][#link("https://academy.hubspot.com/courses/inbound-marketing")[https\:\/\/academy\.hubspot\.com\/courses\/inbound\-marketing]][HubSpot Academy][Mar 2022]

#resume-subheading[Certified Digital Marketing Professional][#link("https://digitalmarketinginstitute.com/certifications")[https\:\/\/digitalmarketinginstitute\.com\/certifications]][Digital Marketing Institute][Jul 2021]
]

= Publications
#resume-pad[
#resume-subheading[The Future of Omnichannel Retail Marketing][#link("https://www.journalofdigitalmarketing.com/articles/omnichannel-retail")[https\:\/\/www\.journalofdigitalmarketing\.com\/articles\/omnichannel\-retail]][Journal of Digital Marketing][Sep 2022]
- Examines how brands can create seamless customer experiences across online and offline channels\.
- Provides a framework for measuring omnichannel campaign effectiveness and attribution\.

#resume-subheading[Data\-Driven Personalization in B2B Marketing][#link("https://www.marketingprofs.com/articles/data-driven-personalization-b2b")[https\:\/\/www\.marketingprofs\.com\/articles\/data\-driven\-personalization\-b2b]][MarketingProfs][Feb 2021]
- Explores practical applications of predictive analytics for lead scoring and segmentation\.
- Includes a case study on increasing conversion rates through personalized content\.
]

= Projects
#resume-pad[
#resume-subheading[GreenLeaf Product Launch][#link("https://www.brightwavedigital.com/case-studies/greenleaf")[https\:\/\/www\.brightwavedigital\.com\/case\-studies\/greenleaf]][Integrated launch campaign for an eco\-friendly home care line\.][Mar 2023–Sep 2023]
- Led a cross\-functional team of 8 to plan and execute a multi\-channel launch\.
- Achieved 150% of first\-quarter sales target and a 25% increase in brand awareness\.
#strong[Keywords]: Product Launch, Integrated Campaign, Sustainability

#resume-subheading[Customer Loyalty Revamp][#link("https://www.northstarconsumer.com/case-studies/loyalty")[https\:\/\/www\.northstarconsumer\.com\/case\-studies\/loyalty]][Redesigned loyalty program to improve retention and engagement\.][Jun 2020–Nov 2020]
- Implemented tiered rewards and personalized offers based on purchase history\.
- Increased repeat purchase rate by 18% and member engagement by 32%\.
#strong[Keywords]: Retention, CRM, Personalization
]

= Interests
#resume-pad[
#strong[Professional Development]: Marketing Podcasts, Industry Conferences, Case Studies

#strong[Outdoor Activities]: Hiking, Cycling, Photography

#strong[Community]: Mentoring, Nonprofit Marketing, Volunteering
]

= Volunteer
#resume-pad[
#resume-subheading[Marketing Volunteer][#link("https://www.sffoodbank.org/")[https\:\/\/www\.sffoodbank\.org\/]][San Francisco Food Bank][Jan 2019–Dec 2023]
- Developed a social media content calendar to raise awareness for hunger relief\.
- Helped organize the annual fundraising gala that exceeded the donation goal by 20%\.

#resume-subheading[Workshop Mentor][#link("https://girlswhocode.com/")[https\:\/\/girlswhocode\.com\/]][Girls Who Code][Sep 2020–Present]
- Mentored high school students in digital marketing and personal branding workshops\.
- Coordinated guest speaker sessions with local marketing professionals\.
]