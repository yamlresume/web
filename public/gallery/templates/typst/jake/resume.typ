#set document(
  title: "Andy Dufresne - Headed for the Pacific",
  author: "Andy Dufresne",
  keywords: "Web Development, DevOps, Design",
  description: "Résumé of Andy Dufresne",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Andy Dufresne]] #v(-0.2em)

#text(size: 1.44em)[Headed for the Pacific]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(213) 555-9876")[(213) 555\-9876] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:hi@ppresume.com")[hi\@ppresume\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://ppresume.com/gallery")[https\:\/\/ppresume\.com\/gallery]

123 Main Street, Sacramento, California, United States, 95814

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M311 196.8l0 81.3c0 2.1-1.6 3.7-3.7 3.7l-13 0c-1.3 0-2.4-.7-3-1.5L254 230 254 278.2c0 2.1-1.6 3.7-3.7 3.7l-13 0c-2.1 0-3.7-1.6-3.7-3.7l0-81.3c0-2.1 1.6-3.7 3.7-3.7l12.9 0c1.1 0 2.4 .6 3 1.6l37.3 50.3 0-48.2c0-2.1 1.6-3.7 3.7-3.7l13 0c2.1-.1 3.8 1.6 3.8 3.5l0 .1zm-93.7-3.7l-13 0c-2.1 0-3.7 1.6-3.7 3.7l0 81.3c0 2.1 1.6 3.7 3.7 3.7l13 0c2.1 0 3.7-1.6 3.7-3.7l0-81.3c0-1.9-1.6-3.7-3.7-3.7zm-31.4 68.1l-35.6 0 0-64.4c0-2.1-1.6-3.7-3.7-3.7l-13 0c-2.1 0-3.7 1.6-3.7 3.7l0 81.3c0 1 .3 1.8 1 2.5 .7 .6 1.5 1 2.5 1l52.2 0c2.1 0 3.7-1.6 3.7-3.7l0-13c0-1.9-1.6-3.7-3.5-3.7l.1 0zm193.7-68.1l-52.3 0c-1.9 0-3.7 1.6-3.7 3.7l0 81.3c0 1.9 1.6 3.7 3.7 3.7l52.2 0c2.1 0 3.7-1.6 3.7-3.7l0-13.1c0-2.1-1.6-3.7-3.7-3.7l-35.5 0 0-13.6 35.5 0c2.1 0 3.7-1.6 3.7-3.7l0-13.1c0-2.1-1.6-3.7-3.7-3.7l-35.5 0 0-13.7 35.5 0c2.1 0 3.7-1.6 3.7-3.7l0-13c-.1-1.9-1.7-3.7-3.7-3.7l.1 0zM512 93.4l0 326c-.1 51.2-42.1 92.7-93.4 92.6l-326 0C41.4 511.9-.1 469.8 0 418.6l0-326C.1 41.4 42.2-.1 93.4 0l326 0c51.2 .1 92.7 42.1 92.6 93.4zM441.6 233.5c0-83.4-83.7-151.3-186.4-151.3S68.8 150.1 68.8 233.5c0 74.7 66.3 137.4 155.9 149.3 21.8 4.7 19.3 12.7 14.4 42.1-.8 4.7-3.8 18.4 16.1 10.1s107.3-63.2 146.5-108.2c27-29.7 39.9-59.8 39.9-93.1l0-.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://line.com/PPResumeX")[PPResumeX] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M459.4 151.7c.3 4.5 .3 9.1 .3 13.6 0 138.7-105.6 298.6-298.6 298.6-59.5 0-114.7-17.2-161.1-47.1 8.4 1 16.6 1.3 25.3 1.3 49.1 0 94.2-16.6 130.3-44.8-46.1-1-84.8-31.2-98.1-72.8 6.5 1 13 1.6 19.8 1.6 9.4 0 18.8-1.3 27.6-3.6-48.1-9.7-84.1-52-84.1-103l0-1.3c14 7.8 30.2 12.7 47.4 13.3-28.3-18.8-46.8-51-46.8-87.4 0-19.5 5.2-37.4 14.3-53 51.7 63.7 129.3 105.3 216.4 109.8-1.6-7.8-2.6-15.9-2.6-24 0-57.8 46.8-104.9 104.9-104.9 30.2 0 57.5 12.7 76.7 33.1 23.7-4.5 46.5-13.3 66.6-25.3-7.8 24.4-24.4 44.8-46.1 57.8 21.1-2.3 41.6-8.1 60.4-16.2-14.3 20.8-32.2 39.3-52.6 54.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://twitter.com/PPResumeX")[PPResumeX]
]

= Basics

#resume-pad[
- Computer Science major with strong foundation in data structures, algorithms, and software development
- Pixel perfect full stack web developer, specialised in creating high\-quality, visually appealing websites
- Experiened in databases (SQL, NoSQL), familiar with server\-side technologies (Node\.js, Express, etc\.)
- Team player, with detail\-oriented mindset and a keen eye for design and user experiences
]

= Education
#resume-pad[
#resume-subheading[University of Southern California][#link("https://www.cs.usc.edu/")[https\:\/\/www\.cs\.usc\.edu\/]][Bachelor, Computer Engineering and Computer Science, Score: 3\.8][Sep 2016–Jul 2020]
- Developed proficiency in programming languages such as Java, C\+\+, and Python
- Gained hands\-on experience in software development through various projects and assignments
- Strong communication and teamwork skills acquired through group projects and presentations
#strong[Courses]: Discrete Methods in Computer Science, Programming Language Concepts, Data Structures and Object\-Oriented Design, Operating Systems, Computer Architecture, Database Systems, Computer Networking, Introduction to the Theory of Computing
]

= Work
#resume-pad[
#resume-subheading[Senior Software Engineer][#link("https://ppresume.com")[https\:\/\/ppresume\.com]][PPResume][Dec 2022–Present]
- Developed and implemented efficient and scalable code, ensuring high\-quality and maintainable web applications
- Collaborated with cross\-functional teams to gather project requirements and translate them into technical solutions
- Conducted thorough testing and debugging to identify and resolve any issues or bugs in the software
- Actively participated in code reviews, providing valuable feedback to improve code quality and adherence to best practices
- Mentored and guided junior developers, fostering a collaborative and growth\-oriented team environment
#strong[Keywords]: Scalability, Growth, Quality, Mentorship

#resume-subheading[Software Engineer][#link("https://ppresume.com")[https\:\/\/ppresume\.com]][PPResume][Sep 2020–Dec 2022]
- Created reusable React components to ensure code efficiency and maintainability
- Integrated with RESTful APIs to fetch and display dynamic data on the frontend
- Implemented client\-side routing using React Router for smooth navigation between pages
- Actively participated in Agile development methodologies, attending daily stand\-up meetings and sprint planning sessions
#strong[Keywords]: RESTful, React, Agile
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: TOEFL 110, IELTS 7\.5])

#strong[Chinese]: Elementary Proficiency
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Web Development]: Expert], [#strong[Keywords]: Python, Ruby, CSS, React, JavaScript])

#grid(columns: (1fr, auto), align: (left, right), [#strong[DevOps]: Intermediate], [#strong[Keywords]: Python, Kubernetes, Docker, Shell, Ansible])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Design]: Intermediate], [#strong[Keywords]: Sketch, Figma, Photoshop])
]

= Awards
#resume-pad[
#resume-subheading[Dean\'s List][][University of Southern California][Oct 2016]
Awarded to students who achieve a high academic standing by maintaining
a specified grade point average (GPA) during a semester\.
]

= Certificates
#resume-pad[
#resume-subheading[AWS Certified Developer \- Associate][#link("https://aws.amazon.com/certification/")[https\:\/\/aws\.amazon\.com\/certification\/]][AWS][Mar 2021]
]

= Publications
#resume-pad[
#resume-subheading[Enhancing Human\-Computer Interaction through Augmented Reality][#link("https://dl.acm.org/journal/tiis")[https\:\/\/dl\.acm\.org\/journal\/tiis]][ACM Transactions on Interactive Intelligent Systems][Dec 2017]
- Explores the potential of augmented reality (AR) in improving interaction between humans and computers
- Highlights benefits of AR in various areas such as gaming, education, healthcare, and design
- Discusses challenges and future directions of AR technology in enhancing user experience
]

= References
#resume-pad[
#resume-subheading[Dr\. Amanda Reynolds][Computer Science Professor][amanda\.reynolds\@usc\.edu][(555) 123\-4567]
Andy Dufresne shows exceptional problem\-solving skills and a solid
understanding of programming concepts, he would bring immense value to
any team or organization he becomes a part of\.
]

= Projects
#resume-pad[
#resume-subheading[EduWeb][#link("https://www.eduweb.xyz/")[https\:\/\/www\.eduweb\.xyz\/]][A web\-based educational platform for interactive learning][Sep 2016–Dec 2016]
- Designed to enhance online learning experiences
- Facilitates students\' engagement and collaboration through interactive features and user\-friendly interface
- Offers a wide range of courses across various subjects
- Aims to improve the way students learn through the power of the web
#strong[Keywords]: Education, Online Learning, HCI
]

= Interests
#resume-pad[
#strong[Sports]: Soccer, Swimming, Bicycling, Hiking

#strong[Music]: Piano, Guitar
]

= Volunteer
#resume-pad[
#resume-subheading[Tech Mentor][#link("https://www.usccsesociety.org/")[https\:\/\/www\.usccsesociety\.org\/]][USC Computer Science and Engineering Society][Sep 2015–Jul 2023]
- Volunteered as a Tech Mentor at USC Computer Science and Engineering Society
- Provided guidance and assistance to fellow students in their technical projects and coursework
- Assisted in organizing workshops, coding competitions, and networking events for the society members
- Contributed to fostering a collaborative and supportive environment within the student community
]