#set document(
  title: "Priya Raman - Senior Data Engineer | Cloud Data Platforms & Real-Time Pipelines",
  author: "Priya Raman",
  keywords: "Data Engineering, Cloud Platforms, Programming, Databases, Streaming & Messaging, Analytics & BI",
  description: "Résumé of Priya Raman",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Priya Raman]] #v(-0.2em)

#text(size: 1.44em)[Senior Data Engineer | Cloud Data Platforms & Real\-Time Pipelines]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(206) 555-0182")[(206) 555\-0182] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:priya.raman@outlook.com")[priya\.raman\@outlook\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.priyaraman.dev")[https\:\/\/www\.priyaraman\.dev]

2210 Fremont Avenue N, Seattle, Washington, United States, 98103

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/priyaraman")[priyaraman] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/priyaraman")[priyaraman] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 384 512\"><path fill=\"#000000\" d=\"M291 311l-195.7-41.3-8.2 39.3 195.7 41 8.2-39zm51-87L188.5 95.7 163 126.5 316.5 254.8 342 224zm-31.2 39.7L129.5 179 112.8 215.5 294 300 310.8 263.7zM262.3 32l-32 24 119.3 160.3 32-24-119.3-160.3zm20.5 328l-200 0 0 39.7 200 0 0-39.7zm39.7 80l-279.5 0 0-120-40 0 0 160 359.5 0 0-160-40 0 0 120z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://stackoverflow.com/users/1234567/priya-raman")[priya\-raman]
]

= Basics

#resume-pad[
Data engineer with 7\+ years of experience designing, building, and operating batch and streaming data pipelines\. Skilled in cloud\-native data platforms, data modeling, and data quality\. Proven track record of translating business requirements into reliable, scalable data products\.
]

= Education
#resume-pad[
#resume-subheading[Seattle Polytechnic Institute][#link("https://www.seattlepoly.edu")[https\:\/\/www\.seattlepoly\.edu]][Master, Data Engineering, Score: 3\.9][Sep 2015–Jun 2017]
- Focused on distributed data processing, storage systems, and cloud\-native architectures
- Completed a capstone on real\-time streaming pipelines for urban mobility data
- Built hands\-on experience with Spark, Kafka, and columnar data warehouses
#strong[Courses]: Distributed Systems, Database Systems, Data Warehousing, Cloud Computing, Machine Learning for Data, Data Modeling, Stream Processing, Information Retrieval

#resume-subheading[Cascade State University][#link("https://www.cascadestate.edu")[https\:\/\/www\.cascadestate\.edu]][Bachelor, Computer Science, Score: 3\.7][Sep 2011–Jun 2015]
- Developed a strong foundation in algorithms, databases, and software engineering
- Completed coursework in statistics and data analysis
- Served as a teaching assistant for an introductory database course
#strong[Courses]: Data Structures, Algorithms, Operating Systems, Computer Networks, Software Engineering, Statistics
]

= Work
#resume-pad[
#resume-subheading[Senior Data Engineer][#link("https://www.auroradatalabs.com")[https\:\/\/www\.auroradatalabs\.com]][Aurora Data Labs][Jan 2021–Present]
- Designed and maintained batch and streaming pipelines using Apache Spark, Kafka, Airflow, and dbt
- Led migration of legacy ETL workflows to a cloud\-native lakehouse on Snowflake and Databricks
- Built data quality checks and lineage metadata to improve incident detection and root\-cause analysis
- Partnered with analytics and product teams to define data models, SLAs, and delivery timelines
- Mentored junior engineers on pipeline design, testing, and operational best practices
#strong[Keywords]: Apache Spark, Apache Kafka, Apache Airflow, dbt, Snowflake, Data Modeling, Data Quality, ETL\/ELT

#resume-subheading[Data Engineer][#link("https://www.pulseretail.com")[https\:\/\/www\.pulseretail\.com]][Pulse Retail Group][Jul 2017–Dec 2020]
- Built and operated ELT pipelines for retail sales, inventory, and customer analytics
- Modeled warehouse layers in Amazon Redshift and automated transformations with Airflow
- Integrated third\-party marketing and POS data into a unified reporting environment
- Improved pipeline reliability through monitoring, alerting, and automated data validation
- Supported Tableau dashboards used by merchandising and finance teams
#strong[Keywords]: Python, SQL, AWS Glue, Amazon Redshift, Apache Airflow, Tableau, Data Warehousing

#resume-subheading[Data Engineering Intern][#link("https://www.cascadehealth.org")[https\:\/\/www\.cascadehealth\.org]][Cascade Health Systems][Jun 2016–Aug 2016]
- Assisted with building SQL\-based ETL jobs for clinical and operational reporting
- Profiled source data and documented data quality issues for remediation
- Automated recurring data extracts and validation checks with Python
#strong[Keywords]: SQL, Python, ETL, Data Profiling
]

= Languages
#resume-pad[
#strong[English]: Native or Bilingual Proficiency

#strong[Tamil]: Native or Bilingual Proficiency

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Limited Working Proficiency], [#strong[Keywords]: DELE B2])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Engineering]: Expert], [#strong[Keywords]: Apache Spark, Apache Kafka, Apache Airflow, dbt, Snowflake, Databricks, Data Modeling])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud Platforms]: Advanced], [#strong[Keywords]: AWS, Azure, Google Cloud, AWS Glue, Azure Data Factory, Google BigQuery])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Programming]: Advanced], [#strong[Keywords]: Python, SQL, Scala, Java, Bash])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Databases]: Advanced], [#strong[Keywords]: PostgreSQL, Amazon Redshift, Snowflake, MongoDB, Apache Cassandra])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Streaming & Messaging]: Intermediate], [#strong[Keywords]: Apache Kafka, Spark Structured Streaming, RabbitMQ, Avro, Schema Registry])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Analytics & BI]: Intermediate], [#strong[Keywords]: Tableau, Power BI, Looker, dbt, Data Quality])
]

= Awards
#resume-pad[
#resume-subheading[Data Engineering Excellence Award][][Aurora Data Labs][Mar 2023]
Recognized for leading the migration of legacy ETL workflows to a cloud\-native lakehouse, reducing batch processing time by 40%\.

#resume-subheading[Outstanding Graduate Capstone][][Seattle Polytechnic Institute][Jun 2017]
Awarded for a capstone project on real\-time streaming pipelines for urban mobility data\.
]

= Certificates
#resume-pad[
#resume-subheading[Google Cloud Professional Data Engineer][#link("https://cloud.google.com/certification/data-engineer")[https\:\/\/cloud\.google\.com\/certification\/data\-engineer]][Google Cloud][Apr 2022]

#resume-subheading[AWS Certified Data Analytics \- Specialty][#link("https://aws.amazon.com/certification/certified-data-analytics-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-data\-analytics\-specialty\/]][Amazon Web Services][Nov 2021]

#resume-subheading[Databricks Certified Data Engineer Professional][#link("https://www.databricks.com/learn/certification/data-engineer-professional")[https\:\/\/www\.databricks\.com\/learn\/certification\/data\-engineer\-professional]][Databricks][Mar 2023]
]

= Publications
#resume-pad[
#resume-subheading[Scalable Real\-Time Ingestion Pipelines for Retail Analytics][#link("https://www.ijdea.org/articles/scalable-real-time-ingestion-pipelines")[https\:\/\/www\.ijdea\.org\/articles\/scalable\-real\-time\-ingestion\-pipelines]][International Journal of Data Engineering and Analytics][Oct 2020]
- Presents a reference architecture for low\-latency ingestion using Kafka and Spark Structured Streaming
- Discusses schema evolution, exactly\-once semantics, and operational monitoring
- Includes benchmarks from a production retail deployment
]

= Projects
#resume-pad[
#resume-subheading[OpenLineage Data Quality Toolkit][#link("https://github.com/priyaraman/openlineage-dq")[https\:\/\/github\.com\/priyaraman\/openlineage\-dq]][An open\-source toolkit for automated data lineage and quality checks across cloud data warehouses\.][Jan 2023–Present]
- Built a Python library that integrates with Airflow and dbt to capture lineage metadata
- Added configurable data quality rules for freshness, volume, and schema drift
- Used by multiple internal teams to reduce incident detection time
#strong[Keywords]: Data Quality, Data Lineage, Python, Airflow

#resume-subheading[Retail Sales Lakehouse][#link("https://github.com/priyaraman/retail-lakehouse")[https\:\/\/github\.com\/priyaraman\/retail\-lakehouse]][A reference lakehouse implementation for retail sales analytics using Delta Lake and Spark\.][May 2022–Sep 2022]
- Designed bronze, silver, and gold layers for ingestion, cleansing, and business aggregates
- Implemented incremental processing and partition pruning for large fact tables
- Published dashboards in Power BI for sales and inventory KPIs
#strong[Keywords]: Delta Lake, Spark, Lakehouse, Analytics
]

= Interests
#resume-pad[
#strong[Open Source]: Apache Airflow, dbt, Data Engineering

#strong[Outdoor Activities]: Hiking, Cycling, Photography

#strong[Music]: Jazz, Guitar
]

= Volunteer
#resume-pad[
#resume-subheading[Volunteer Data Engineer][#link("https://www.civicdataalliance.org")[https\:\/\/www\.civicdataalliance\.org]][Civic Data Alliance][Jan 2022–Present]
- Maintain data pipelines for a public transit open\-data portal
- Collaborate with analysts to publish monthly ridership and accessibility datasets
- Mentor volunteers on SQL, Python, and data modeling best practices
]