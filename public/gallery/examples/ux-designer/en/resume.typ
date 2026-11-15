#set document(
  title: "Elena Marsh - UX Designer creating inclusive, human-centered digital experiences",
  author: "Elena Marsh",
  keywords: "User Research, Prototyping, Visual Design, UX Strategy",
  description: "Résumé of Elena Marsh",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Elena Marsh]] #v(-0.2em)

#text(size: 1.44em)[UX Designer creating inclusive, human\-centered digital experiences]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0139")[(415) 555\-0139] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:elena.marsh@example.com")[elena\.marsh\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://elenamarsh.design")[https\:\/\/elenamarsh\.design]

548 Market St, Suite 300, San Francisco, California, United States, 94104

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/elenamarshux")[elenamarshux] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M256 8a248 248 0 1 0 0 496 248 248 0 1 0 0-496zM420 122.4c29.5 36 47.4 82 47.8 132-7-1.5-77-15.7-147.5-6.8-5.8-14-11.2-26.4-18.6-41.6 78.3-32 113.8-77.5 118.3-83.5zM396.4 97.9c-3.8 5.4-35.7 48.3-111 76.5-34.7-63.8-73.2-116.2-79-124 67.2-16.2 138 1.3 190.1 47.5zM165.9 64.6c5.6 7.7 43.4 60.1 78.5 122.5-99.1 26.3-186.4 25.9-195.8 25.8 13.7-65.7 58-120.4 117.3-148.3zM44.2 256.3c0-2.2 0-4.3 .1-6.5 9.3 .2 111.9 1.5 217.7-30.1 6.1 11.9 11.9 23.9 17.2 35.9-76.6 21.6-146.2 83.5-180.5 142.3-33.8-37.6-54.5-87.2-54.5-141.6zM126 423.4c22.1-45.2 82.2-103.6 167.6-132.8 29.7 77.3 42 142.1 45.2 160.6-68.1 29-150 21.1-212.8-27.9zm248.4 8.5c-2.2-12.9-13.4-74.9-41.2-151 66.4-10.6 124.7 6.8 131.9 9.1-9.4 58.9-43.3 109.8-90.8 142z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://dribbble.com/elenamarsh")[elenamarsh] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@elenamarsh.ux")[elenamarsh\.ux]
]

= Basics

#resume-pad[
- UX designer with 7\+ years of experience designing web and mobile products across health tech, fintech, and analytics
- Human\-centered design advocate specializing in user research, prototyping, and design systems
- Collaborative team player skilled at partnering with product managers, engineers, and stakeholders to ship intuitive solutions
- Passionate about accessibility and inclusive design, ensuring every user can accomplish their goals with ease
]

= Education
#resume-pad[
#resume-subheading[California College of the Arts][#link("https://www.cca.edu/")[https\:\/\/www\.cca\.edu\/]][Bachelor, Interaction Design, Score: 3\.8][Sep 2013–May 2017]
- Developed a strong foundation in user\-centered design principles and iterative design processes
- Completed hands\-on projects in mobile app design, responsive web design, and interactive installations
- Recognized for outstanding work in the senior capstone project, a public transit navigation tool for elderly users
#strong[Courses]: Human\-Computer Interaction, Visual Communication, Design Research Methods, Prototyping for Digital Products, Psychology of User Experience, Design Ethics and Accessibility
]

= Work
#resume-pad[
#resume-subheading[Senior Product Designer][#link("https://www.nimbusanalytics.com/")[https\:\/\/www\.nimbusanalytics\.com\/]][Nimbus Analytics][Mar 2021–Present]
- Led end\-to\-end design for a data visualization platform used by 50,000\+ analysts, revamping the dashboard experience and reducing onboarding time by 35%
- Built and maintained the company’s first design system, including 120\+ accessible components and tokens, resulting in a 40% faster handoff to engineering
- Drove user research initiatives, conducting 30\+ contextual interviews and usability tests to shape the product roadmap
- Partnered with product and engineering leadership to define design strategy and quarterly OKRs for the analytics suite
- Mentored two junior designers, facilitating design critiques and skill\-building workshops
#strong[Keywords]: Product Strategy, Design Systems, User Research, Data Visualization, Figma, Mentorship

#resume-subheading[Product Designer][#link("https://www.brightlinehealth.com/")[https\:\/\/www\.brightlinehealth\.com\/]][Brightline Health][Jun 2017–Feb 2021]
- Designed patient\-facing mobile app and web portal for a telehealth startup, improving task completion rate by 28%
- Collaborated with clinical and engineering teams to translate complex healthcare workflows into simple, accessible experiences
- Planned and moderated remote usability testing sessions, synthesizing findings into actionable design recommendations
- Created high\-fidelity prototypes in Figma and ran rapid iteration cycles to validate concepts with real patients
- Advocated for accessibility standards, partnering with engineers to meet WCAG 2\.1 AA compliance across all products
#strong[Keywords]: Healthcare, Mobile App Design, Accessibility, Prototyping, Usability Testing, User Flows
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: Native speaker, Writing and documentation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Limited Working Proficiency], [#strong[Keywords]: Conversational, Basic reading comprehension])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[User Research]: Advanced], [#strong[Keywords]: Interviews, Surveys, Personas, Journey Mapping, Usability Testing])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prototyping]: Expert], [#strong[Keywords]: Figma, Sketch, Adobe XD, Framer, Interactive Prototypes])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Visual Design]: Advanced], [#strong[Keywords]: Typography, Color Theory, Layout, Design Systems, Accessibility (WCAG)])

#grid(columns: (1fr, auto), align: (left, right), [#strong[UX Strategy]: Intermediate], [#strong[Keywords]: Product Roadmapping, Stakeholder Management, Design Sprints, Metrics, A\/B Testing])
]

= Awards
#resume-pad[
#resume-subheading[UX Design Award — Best Mobile App][][Interaction Design Association][Oct 2022]
Recognized for designing a mindful spending app that helps users understand their financial habits through visual data and gentle behavioral nudges\.
]

= Certificates
#resume-pad[
#resume-subheading[NN\/g UX Certification][#link("https://www.nngroup.com/")[https\:\/\/www\.nngroup\.com\/]][Nielsen Norman Group][Jun 2022]

#resume-subheading[Google UX Design Professional Certificate][#link("https://www.coursera.org/professional-certificates/google-ux-design")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-ux\-design]][Google][Aug 2021]
]

= Publications
#resume-pad[
#resume-subheading[Designing for Trust in Health Tech][#link("https://uxdesign.cc/designing-for-trust-in-health-tech")[https\:\/\/uxdesign\.cc\/designing\-for\-trust\-in\-health\-tech]][UX Collective][Jan 2021]
Explores how transparency, clear language, and coherent visual hierarchy can build trust in digital health products, sharing lessons learned from patient\-facing design research\.
]

= Projects
#resume-pad[
#resume-subheading[Mindful Spending App][#link("https://www.behance.net/gallery/mindful-spending-app")[https\:\/\/www\.behance\.net\/gallery\/mindful\-spending\-app]][A personal finance app concept that helps users build mindful spending habits through visual spending insights and gentle, non\-judgmental nudges\.][Jan 2020–May 2020]
- Conducted diary studies and interviews with 12 participants to understand emotional relationships with money
- Designed low\-fidelity paper prototypes and iterated through high\-fidelity Figma mockups based on feedback
- Developed an interactive prototype in Framer to test navigation and core\-spending reflection features
- Awarded an honorable mention in the IxDA student design showcase
#strong[Keywords]: Mobile App, Fintech, User Research, Prototyping, Accessibility
]

= Interests
#resume-pad[
#strong[Photography]: Street photography, Portraits, Film photography

#strong[Accessibility]: Inclusive design, Assistive technology, Web accessibility

#strong[Hiking]: Bay Area trails, National parks, Nature photography
]

= Volunteer
#resume-pad[
#resume-subheading[Design Mentor][#link("https://www.design4goodsf.org/")[https\:\/\/www\.design4goodsf\.org\/]][Design4Good SF][Sep 2018–Dec 2022]
- Mentored early\-career designers from underrepresented backgrounds in portfolio development and interview preparation
- Facilitated monthly critique sessions to help mentees refine their design thinking and presentation skills
- Partnered with local nonprofits on pro\-bono design projects, including a website refresh for a food bank and a donation flow redesign for a homeless shelter
]