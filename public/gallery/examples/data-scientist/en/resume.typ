#set document(
  title: "Adrian Cole - Data Scientist Specializing in Machine Learning and Predictive Analytics",
  author: "Adrian Cole",
  keywords: "Machine Learning, Statistical Modeling, Data Engineering, Natural Language Processing, Data Visualization",
  description: "Résumé of Adrian Cole",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Adrian Cole]] #v(-0.2em)

#text(size: 1.44em)[Data Scientist Specializing in Machine Learning and Predictive Analytics]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0142")[(415) 555\-0142] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:adrian.cole@example.com")[adrian\.cole\@example\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://adriancole.dev")[https\:\/\/adriancole\.dev]

456 Mission Street, San Francisco, California, United States, 94110

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/adriancole")[adriancole] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/adriancole-data")[adriancole\-data]
]

= Basics

#resume-pad[
Data scientist with 6\+ years of experience building machine learning systems that turn messy data into measurable business impact\. Strong background in statistics, causal inference, and natural language processing, with deep expertise across the full model lifecycle—from problem framing and data pipelines to deployment and monitoring\. Passionate about creating interpretable, reliable models and translating data insights into clear recommendations for product and leadership teams\.
]

= Education
#resume-pad[
#resume-subheading[University of California, Berkeley][#link("https://www.ischool.berkeley.edu/")[https\:\/\/www\.ischool\.berkeley\.edu\/]][Master, Information and Data Science, Score: 3\.9][Aug 2016–May 2018]
- Concentrated on machine learning, causal inference, and large\-scale data systems
- Capstone project\: built a real\-time churn prediction pipeline for a telecommunications partner
- Graduate research assistant supporting a study on algorithmic fairness in lending decisions
#strong[Courses]: Applied Machine Learning, Statistics for Data Science, Natural Language Processing, Big Data Systems, Experimentation and Causal Inference, Data Visualization

#resume-subheading[University of Washington][#link("https://www.stat.washington.edu/")[https\:\/\/www\.stat\.washington\.edu\/]][Bachelor, Statistics, Score: 3\.8][Sep 2012–Jun 2016]
- Built strong foundations in statistical theory and computational methods
- Undergraduate research assistant in the Statistical Learning Lab
#strong[Courses]: Statistical Inference, Regression Models, Probability Theory, Computational Statistics, Data Mining
]

= Work
#resume-pad[
#resume-subheading[Senior Data Scientist][#link("https://www.lumina-analytics.com/")[https\:\/\/www\.lumina\-analytics\.com\/]][Lumina Analytics][Mar 2021–Present]
- Lead development of predictive models for customer lifetime value across a portfolio of SaaS clients, improving average revenue forecast accuracy by 18%
- Architect feature store and model monitoring pipelines using Python and MLflow, reducing model retraining time from days to hours
- Partner with product and engineering teams to design A\/B tests and causal inference studies for new feature adoption initiatives
- Mentor a team of four data scientists and establish best practices for code review, reproducibility, and documentation
#strong[Keywords]: Python, MLflow, Feature Store, Causal Inference, Mentorship

#resume-subheading[Data Scientist][#link("https://www.healthinsight.com/")[https\:\/\/www\.healthinsight\.com\/]][HealthInsight][Jul 2018–Feb 2021]
- Built risk stratification models using electronic health records and claims data, enabling early intervention for high\-risk patients
- Designed and implemented an NLP pipeline to extract clinical concepts from unstructured notes, achieving 87% F1 score
- Created interactive Tableau dashboards used by clinical leadership to track quality metrics and reduce hospital readmission rates by 12%
#strong[Keywords]: Healthcare, NLP, Tableau, Electronic Health Records
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: IELTS 8\.5])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: DELE C1])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Machine Learning]: Expert], [#strong[Keywords]: Python, scikit\-learn, XGBoost, TensorFlow, PyTorch])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Statistical Modeling]: Advanced], [#strong[Keywords]: R, Bayesian Methods, Time Series, Survival Analysis, Experiment Design])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Engineering]: Advanced], [#strong[Keywords]: SQL, Spark, dbt, Airflow, AWS, Snowflake])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Natural Language Processing]: Advanced], [#strong[Keywords]: Hugging Face, spaCy, Transformers, NER, Topic Modeling])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Visualization]: Intermediate], [#strong[Keywords]: Tableau, matplotlib, Plotly, ggplot2])
]

= Awards
#resume-pad[
#resume-subheading[Outstanding Contribution in Data Science][][Lumina Analytics][Dec 2023]
Recognized for leading the development of a company\-wide model monitoring platform that reduced unplanned model retraining incidents by 40%\.
]

= Certificates
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/certification/certified-machine-learning-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-machine\-learning\-specialty\/]][Amazon Web Services][Nov 2021]

#resume-subheading[TensorFlow Developer Certificate][#link("https://www.tensorflow.org/certificate")[https\:\/\/www\.tensorflow\.org\/certificate]][Google][Apr 2020]
]

= Publications
#resume-pad[
#resume-subheading[A Scalable Framework for Real\-Time Customer Churn Prediction][#link("https://doi.org/10.1145/3523227.3547400")[https\:\/\/doi\.org\/10\.1145\/3523227\.3547400]][Proceedings of the ACM SIGKDD Conference on Knowledge Discovery and Data Mining][Aug 2022]
- Presented a production\-ready churn prediction framework combining gradient\-boosted trees with online feature stores
- Demonstrated a 23% relative improvement in AUC versus batch baselines across three industrial datasets
]

= Projects
#resume-pad[
#resume-subheading[DocQuery][#link("https://github.com/adriancole/docquery")[https\:\/\/github\.com\/adriancole\/docquery]][An NLP\-powered search and question\-answering tool for unstructured clinical documents\.][Jan 2023–Jun 2023]
- Developed a retrieval\-augmented system using sentence embeddings and a fine\-tuned transformer model to answer clinician questions from EHR notes
- Deployed as a REST API with Docker, reducing average answer lookup time from 20 minutes to under 5 seconds
#strong[Keywords]: NLP, Transformers, Q&A, Docker, FastAPI

#resume-subheading[AdScore][#link("https://github.com/adriancole/adscore")[https\:\/\/github\.com\/adriancole\/adscore]][Click\-through rate prediction model for online advertising campaigns\.][Aug 2020–Dec 2020]
- Engineered features from impression logs and built a distributed training pipeline in PySpark
- Achieved a 15% lift in offline AUC and enabled real\-time bidding through model export to ONNX
#strong[Keywords]: CTR, PySpark, Feature Engineering, ONNX
]

= Interests
#resume-pad[
#strong[Open Source]: Contributing to scikit\-learn, Jupyter, Streamlit

#strong[Hiking]: Yosemite, Pacific Crest Trail

#strong[Chess]: Tournament Play, Puzzle Solving
]

= Volunteer
#resume-pad[
#resume-subheading[Data Science Volunteer][#link("https://www.bayareadatacorps.org/")[https\:\/\/www\.bayareadatacorps\.org\/]][Bay Area Data Corps][Mar 2022–Dec 2023]
- Partnered with local nonprofits to analyze service utilization data and guide resource allocation decisions
- Built reusable notebook templates to standardize weekly reporting and make findings accessible to nontechnical staff
]