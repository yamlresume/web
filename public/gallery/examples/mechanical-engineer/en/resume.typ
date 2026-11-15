#set document(
  title: "Daniel R. Whitaker - Senior Mechanical Engineer | Product Design & Manufacturing",
  author: "Daniel R. Whitaker",
  keywords: "Mechanical Design, Analysis & Simulation, Manufacturing & Quality, Project Leadership, Software & Automation",
  description: "Résumé of Daniel R. Whitaker",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Daniel R\. Whitaker]] #v(-0.2em)

#text(size: 1.44em)[Senior Mechanical Engineer | Product Design & Manufacturing]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(512) 555-0147")[(512) 555\-0147] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:daniel.whitaker@example.com")[daniel\.whitaker\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.danielwhitaker-engineering.com")[https\:\/\/www\.danielwhitaker\-engineering\.com]

4821 Cedar Ridge Drive, Austin, Texas, United States, 78731

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/daniel-whitaker-me")[daniel\-whitaker\-me] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/dwhitaker-eng")[dwhitaker\-eng]
]

= Basics

#resume-pad[
- Senior mechanical engineer with 10\+ years of experience in product design, analysis, and manufacturing for automotive and industrial systems
- Proven record of taking concepts from requirements through CAD, prototype validation, and production launch
- Strong background in GD&T, FEA, DFM, and root\-cause analysis; comfortable leading cross\-functional teams and suppliers
- Committed to designing reliable, cost\-effective, and sustainable mechanical solutions for demanding operating environments
]

= Education
#resume-pad[
#resume-subheading[University of Texas at Austin][#link("https://www.utexas.edu")[https\:\/\/www\.utexas\.edu]][Master, Mechanical Engineering, Score: 3\.9][Aug 2012–May 2014]
- Focused on design optimization, simulation, and advanced manufacturing methods
- Completed thesis on lightweight structural mounts for electric vehicle powertrains
- Served as graduate teaching assistant for the senior capstone design course
#strong[Courses]: Advanced Thermodynamics, Finite Element Methods, Mechanical Vibrations, Design for Manufacturing, Robotics and Automation, Computational Fluid Dynamics

#resume-subheading[Texas A&M University][#link("https://www.tamu.edu")[https\:\/\/www\.tamu\.edu]][Bachelor, Mechanical Engineering, Score: 3\.8][Aug 2008–May 2012]
- Built a strong foundation in mechanics, materials, and product design
- Led a Formula SAE team project focused on chassis and suspension improvements
- Graduated with honors and completed an industry internship in automotive manufacturing
#strong[Courses]: Statics and Dynamics, Materials Science, Machine Design, Manufacturing Processes, Heat Transfer, Instrumentation and Measurement
]

= Work
#resume-pad[
#resume-subheading[Senior Mechanical Engineer][#link("https://www.apexmechsystems.com")[https\:\/\/www\.apexmechsystems\.com]][Apex Mechanical Systems][Jan 2020–Present]
- Lead mechanical design for industrial actuation and enclosure platforms, owning requirements, architecture, detailed CAD, and production release
- Drive FEA, thermal, and tolerance stack\-up analyses to validate performance, reliability, and safety margins before prototype builds
- Partner with electrical, software, manufacturing, and supply\-chain teams to launch cost\-effective designs into low\- and high\-volume production
- Mentor junior engineers and standardize design\-review, DFMEA, and drawing\-check processes across the mechanical team
#strong[Keywords]: Product Development, GD&T, FEA, DFM, Supplier Qualification

#resume-subheading[Mechanical Design Engineer][#link("https://www.novadrivepowertrain.com")[https\:\/\/www\.novadrivepowertrain\.com]][NovaDrive Powertrain][Jun 2016–Dec 2019]
- Designed aluminum and steel powertrain components for hybrid and electric drivetrains, from concept through validation and launch
- Created 3D CAD models, detailed drawings, and tolerance analyses using SolidWorks and Creo in a PLM\-controlled environment
- Led root\-cause investigations for durability and NVH issues, implementing design and process corrective actions with suppliers
- Supported prototype builds, dyno testing, and production trials, reducing component mass by 12% without compromising strength
#strong[Keywords]: Powertrain, SolidWorks, Tolerance Analysis, NVH, Validation Testing

#resume-subheading[Manufacturing Engineer][#link("https://www.cascaderobotics.com")[https\:\/\/www\.cascaderobotics\.com]][Cascade Robotics][Jul 2014–May 2016]
- Owned manufacturing processes for precision\-machined and sheet\-metal assemblies used in collaborative robot systems
- Developed work instructions, fixtures, and inspection plans; improved first\-pass yield from 88% to 96% on a key assembly line
- Applied Lean and Six Sigma methods to reduce cycle time, scrap, and variability while maintaining tight dimensional tolerances
- Collaborated with design engineering on DFM reviews and ECO implementation for new product introductions
#strong[Keywords]: Lean Manufacturing, Six Sigma, CNC Machining, Fixture Design, Process Improvement
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: Technical writing, Public speaking])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Limited Working Proficiency], [#strong[Keywords]: Conversational Spanish, Supplier communication])

#grid(columns: (1fr, auto), align: (left, right), [#strong[German]: Elementary Proficiency], [#strong[Keywords]: Basic conversation])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Mechanical Design]: Expert], [#strong[Keywords]: SolidWorks, Creo, AutoCAD, GD&T, DFM, Tolerance Analysis])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analysis & Simulation]: Advanced], [#strong[Keywords]: ANSYS, Abaqus, FEA, CFD, Thermal Analysis, MATLAB])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Manufacturing & Quality]: Advanced], [#strong[Keywords]: Lean Manufacturing, Six Sigma, CNC Machining, Injection Molding, SPC, Root Cause Analysis])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Project Leadership]: Advanced], [#strong[Keywords]: Cross\-functional Teams, Agile, Vendor Management, Budgeting, Risk Mitigation])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Software & Automation]: Intermediate], [#strong[Keywords]: Python, LabVIEW, PLC Programming, Minitab, Jira])
]

= Awards
#resume-pad[
#resume-subheading[Engineering Excellence Award][][Apex Mechanical Systems][Nov 2023]
Recognized for leading the redesign of a high\-volume actuation platform that reduced field failures by 35% and lowered manufacturing cost by 18%\.

#resume-subheading[Innovation Patent Award][][NovaDrive Powertrain][Mar 2019]
Awarded for a lightweight mounting concept that improved durability and simplified assembly for an electric\-drive module\.
]

= Certificates
#resume-pad[
#resume-subheading[Professional Engineer (PE) License][#link("https://engineers.texas.gov")[https\:\/\/engineers\.texas\.gov]][Texas Board of Professional Engineers][Jun 2019]

#resume-subheading[Certified SolidWorks Professional (CSWP)][#link("https://www.solidworks.com/certification")[https\:\/\/www\.solidworks\.com\/certification]][Dassault Systèmes][Feb 2015]

#resume-subheading[Six Sigma Green Belt][#link("https://asq.org/certification")[https\:\/\/asq\.org\/certification]][ASQ][Sep 2017]
]

= Publications
#resume-pad[
#resume-subheading[Design Optimization of Lightweight Powertrain Mounts for Electric Vehicles][#link("https://asmedigitalcollection.asme.org/mechanicaldesign")[https\:\/\/asmedigitalcollection\.asme\.org\/mechanicaldesign]][Journal of Mechanical Design][Apr 2021]
- Presents a topology\-optimization workflow for aluminum\-intensive mounts that balances stiffness, durability, and mass
- Validates simulation results with physical testing and discusses implications for NVH and assembly
- Provides practical guidance for engineers designing lightweight structural components in electrified powertrains
]

= Projects
#resume-pad[
#resume-subheading[Lightweight EV Powertrain Mount][#link("https://www.apexmechsystems.com/projects/ev-mount")[https\:\/\/www\.apexmechsystems\.com\/projects\/ev\-mount]][Aluminum\-intensive mount designed to reduce mass while meeting durability and NVH targets\.][Jan 2022–Aug 2022]
- Led concept generation, CAD, FEA, and prototype validation for a next\-generation powertrain mount
- Reduced mass by 22% versus the incumbent design while improving stiffness and fatigue life
- Worked with casting and machining suppliers to transition the design into production
#strong[Keywords]: Lightweighting, Topology Optimization, Fatigue, Casting

#resume-subheading[Automated Assembly Cell Retrofit][#link("https://www.novadrivepowertrain.com/projects/assembly-cell")[https\:\/\/www\.novadrivepowertrain\.com\/projects\/assembly\-cell]][Retrofit of a manual powertrain assembly cell with semi\-automated fixtures and error\-proofing\.][Mar 2018–Nov 2018]
- Specified fixtures, sensors, and PLC logic to reduce operator error and improve cycle time
- Collaborated with controls and safety teams to commission the cell and validate capability
- Achieved a 20% throughput gain and a 30% reduction in rework during the first quarter after launch
#strong[Keywords]: Automation, Fixture Design, PLC, Process Validation

#resume-subheading[Solar Thermal Collector Test Stand][#link("https://www.utexas.edu")[https\:\/\/www\.utexas\.edu]][Laboratory test stand for evaluating solar thermal collector efficiency under controlled conditions\.][Sep 2013–May 2014]
- Designed and built instrumentation, plumbing, and data\-acquisition hardware for a graduate research project
- Calibrated sensors and analyzed thermal performance across varying flow rates and irradiance levels
- Documented results in a thesis chapter and presented findings to the research group
#strong[Keywords]: Thermal Systems, Instrumentation, Data Acquisition, Testing
]

= Interests
#resume-pad[
#strong[Mountain Biking]: Trail Riding, Bike Maintenance, Endurance Training

#strong[Woodworking]: Furniture Design, Hand Tools, Joinery

#strong[Robotics]: FIRST Mentoring, Arduino, ROS
]

= Volunteer
#resume-pad[
#resume-subheading[Engineering Mentor][#link("https://www.firstinspires.org/robotics/frc")[https\:\/\/www\.firstinspires\.org\/robotics\/frc]][FIRST Robotics Competition][Sep 2017–Present]
- Mentor a high\-school robotics team on mechanical design, fabrication, and competition strategy
- Guide students through CAD, prototyping, and design reviews, reinforcing safe and iterative engineering practices
- Help organize shop training and regional event preparation for a team of 30\+ students

#resume-subheading[Project Volunteer][#link("https://www.ewb-usa.org")[https\:\/\/www\.ewb\-usa\.org]][Engineers Without Borders USA][Jan 2015–Dec 2016]
- Supported a clean\-water project by helping design and test a small\-scale pumping and filtration system
- Assisted with technical documentation, supplier coordination, and community feedback sessions
- Participated in fundraising and outreach activities to sustain the chapter\'s project pipeline
]