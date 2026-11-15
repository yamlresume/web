#set document(
  title: "Jordan Ellis - Human Resources Manager | Talent Development & Employee Relations",
  author: "Jordan Ellis",
  keywords: "Talent Acquisition, Employee Relations, HRIS & Analytics, Compensation & Benefits, Learning & Development, Compliance",
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

#text(size: 1.44em)[Human Resources Manager | Talent Development & Employee Relations]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(312) 555-0198")[(312) 555\-0198] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:jordan.ellis@example.com")[jordan\.ellis\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.linkedin.com/in/jordanellis")[https\:\/\/www\.linkedin\.com\/in\/jordanellis]

123 North Wacker Drive, Suite 1500, Chicago, Illinois, United States, 60601

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/jordanellis")[jordanellis] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/jordanellis")[jordanellis]
]

= Basics

#resume-pad[
- Strategic Human Resources Manager with 8\+ years of experience in talent acquisition, employee relations, and organizational development\.
- Proven track record of designing and implementing HR programs that improve retention, engagement, and compliance\.
- Expertise in HRIS implementation, compensation and benefits administration, and performance management\.
- Collaborative leader skilled in partnering with cross\-functional teams to align HR initiatives with business goals\.
]

= Education
#resume-pad[
#resume-subheading[University of Illinois at Urbana\-Champaign][#link("https://illinois.edu")[https\:\/\/illinois\.edu]][Master, Human Resources Management, Score: 3\.9][Aug 2012–May 2014]
- Graduated with honors, focusing on strategic HR and data\-driven decision making\.
- Completed a capstone project on employee engagement strategies for a Fortune 500 company\.
#strong[Courses]: Strategic Human Resource Management, Organizational Behavior, Compensation and Benefits, Employment Law, Talent Acquisition and Retention, HR Analytics

#resume-subheading[DePaul University][#link("https://www.depaul.edu")[https\:\/\/www\.depaul\.edu]][Bachelor, Psychology, Score: 3\.7][Sep 2008–Jun 2012]
- Developed strong foundation in human behavior and organizational dynamics\.
- Interned at a local nonprofit, assisting with volunteer coordination and training\.
#strong[Courses]: Industrial and Organizational Psychology, Research Methods, Social Psychology, Statistics
]

= Work
#resume-pad[
#resume-subheading[Human Resources Manager][#link("https://www.apexsolutions.com")[https\:\/\/www\.apexsolutions\.com]][Apex Solutions Inc\.][Mar 2019–Present]
- Lead a team of 5 HR professionals, overseeing all HR functions for a 500\-employee organization\.
- Developed and implemented a new talent acquisition strategy, reducing time\-to\-fill by 30% and improving quality of hire\.
- Launched an employee wellness program that increased participation by 45% and reduced absenteeism by 15%\.
- Partnered with leadership to redesign performance management process, resulting in 20% increase in goal completion\.
- Ensured compliance with federal, state, and local employment laws, passing all audits with zero findings\.
#strong[Keywords]: Talent Acquisition, Employee Relations, Performance Management, Compliance

#resume-subheading[Senior HR Generalist][#link("https://www.brightwave.io")[https\:\/\/www\.brightwave\.io]][BrightWave Technologies][Jun 2016–Feb 2019]
- Managed full\-cycle recruitment for technical and non\-technical roles, filling 120\+ positions in 3 years\.
- Administered compensation and benefits programs, conducting annual market analysis and benchmarking\.
- Implemented an HRIS system (Workday) that streamlined onboarding and reduced paperwork by 80%\.
- Provided coaching and guidance to managers on employee relations issues, resolving 95% of cases without escalation\.
#strong[Keywords]: Recruitment, HRIS, Compensation, Employee Relations

#resume-subheading[HR Coordinator][#link("https://www.communityhealth.org")[https\:\/\/www\.communityhealth\.org]][Community Health Network][Jul 2014–May 2016]
- Supported HR operations including onboarding, offboarding, and employee records management\.
- Assisted in organizing training sessions and maintaining training records for 300\+ employees\.
- Processed payroll and benefits changes accurately and timely\.
#strong[Keywords]: Onboarding, HR Operations, Payroll
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: Native speaker])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: DELE C1])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Talent Acquisition]: Expert], [#strong[Keywords]: Sourcing, Interviewing, Employer Branding, Offer Negotiation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Employee Relations]: Advanced], [#strong[Keywords]: Conflict Resolution, Coaching, Policy Development, Investigations])

#grid(columns: (1fr, auto), align: (left, right), [#strong[HRIS & Analytics]: Advanced], [#strong[Keywords]: Workday, SAP SuccessFactors, Tableau, Excel])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Compensation & Benefits]: Advanced], [#strong[Keywords]: Market Benchmarking, Job Evaluation, Benefits Administration])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Learning & Development]: Intermediate], [#strong[Keywords]: Needs Assessment, Curriculum Design, LMS Administration])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Compliance]: Advanced], [#strong[Keywords]: FMLA, ADA, EEO, FLSA])
]

= Awards
#resume-pad[
#resume-subheading[HR Excellence Award][][Apex Solutions Inc\.][Nov 2021]
Recognized for outstanding contributions to employee engagement and retention, resulting in a 25% reduction in turnover\.

#resume-subheading[Dean\'s List][][University of Illinois at Urbana\-Champaign][May 2014]
Awarded for academic excellence in the Master of Human Resources Management program\.
]

= Certificates
#resume-pad[
#resume-subheading[SHRM Senior Certified Professional (SHRM\-SCP)][#link("https://www.shrm.org/certification")[https\:\/\/www\.shrm\.org\/certification]][Society for Human Resource Management][Jan 2020]

#resume-subheading[Professional in Human Resources (PHR)][#link("https://www.hrci.org/certification")[https\:\/\/www\.hrci\.org\/certification]][HR Certification Institute][Jun 2017]
]

= Publications
#resume-pad[
#resume-subheading[Building a Culture of Engagement in Remote Teams][#link("https://www.hrtoday.com/remote-engagement")[https\:\/\/www\.hrtoday\.com\/remote\-engagement]][HR Today Magazine][Aug 2022]
- Article discussing strategies for maintaining employee engagement in remote and hybrid work environments\.
- Highlights case studies from Apex Solutions and other leading organizations\.
]

= References
#resume-pad[
#resume-subheading[Dr\. Patricia Nguyen][Former Professor and Mentor][patricia\.nguyen\@illinois\.edu][(217) 555\-0142]
Jordan Ellis was an exceptional student and has become a standout HR professional\. Their strategic thinking and people\-first approach make them an invaluable asset to any organization\.
]

= Projects
#resume-pad[
#resume-subheading[Employee Wellness Program Redesign][#link("https://www.apexsolutions.com/wellness")[https\:\/\/www\.apexsolutions\.com\/wellness]][A comprehensive wellness program aimed at improving employee health and reducing burnout\.][Jan 2020–Dec 2020]
- Conducted needs assessment survey and focus groups to identify key health concerns\.
- Partnered with wellness vendors to offer fitness classes, mental health resources, and nutrition workshops\.
- Achieved 45% employee participation and 15% reduction in absenteeism within the first year\.
#strong[Keywords]: Wellness, Engagement, Burnout Prevention

#resume-subheading[HRIS Implementation][][Led the implementation of Workday HRIS for a 300\-employee organization\.][Mar 2017–Nov 2017]
- Managed project timeline, vendor coordination, and data migration\.
- Developed training materials and conducted workshops for managers and employees\.
- Reduced onboarding paperwork by 80% and improved data accuracy\.
#strong[Keywords]: HRIS, Workday, Project Management
]

= Interests
#resume-pad[
#strong[Professional Development]: SHRM Membership, HR Conferences, Mentoring

#strong[Community Service]: Volunteering, Nonprofit Board

#strong[Outdoor Activities]: Hiking, Cycling, Camping
]

= Volunteer
#resume-pad[
#resume-subheading[Volunteer Coordinator][#link("https://www.shrmchicago.org")[https\:\/\/www\.shrmchicago\.org]][SHRM Chicago Chapter][Jan 2018–Dec 2021]
- Coordinated volunteer activities for monthly chapter meetings and annual HR conference\.
- Recruited and managed a team of 15 volunteers, ensuring smooth event operations\.
- Increased volunteer participation by 30% through outreach and recognition programs\.
]