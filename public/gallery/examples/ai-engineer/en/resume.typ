#set document(
  title: "Elena Marquez - Senior AI Engineer | LLM Systems & Machine Learning",
  author: "Elena Marquez",
  keywords: "Machine Learning, LLM & Generative AI, Data Engineering, Cloud & MLOps, Software Engineering",
  description: "Résumé of Elena Marquez",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Elena Marquez]] #v(-0.2em)

#text(size: 1.44em)[Senior AI Engineer | LLM Systems & Machine Learning]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:(415) 555-0148")[(415) 555\-0148] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:elena.marquez.ai@gmail.com")[elena\.marquez\.ai\@gmail\.com] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://elenamarquez.dev")[https\:\/\/elenamarquez\.dev]

500 Terry A Francois Blvd, San Francisco, California, United States, 94158

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/elena-marquez")[elena\-marquez] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/elena-marquez-ai")[elena\-marquez\-ai] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@elena-marquez-ai")[elena\-marquez\-ai]
]

= Basics

#resume-pad[
AI Engineer with 6\+ years of experience designing, evaluating, and deploying production machine learning and large language model systems\. I turn ambiguous product goals into measurable models, reliable inference services, and evaluation frameworks that teams can trust\.

- Built retrieval\-augmented generation and agentic workflows for healthcare and enterprise search, improving answer quality while reducing latency and cost\.
- Led model evaluation, prompt optimization, and guardrail design across multiple product teams, with a focus on safety, observability, and reproducibility\.
- Partnered with product, data, and platform engineers to ship ML features from prototype to production with clear ownership and monitoring\.
]

= Education
#resume-pad[
#resume-subheading[University of Washington][#link("https://www.washington.edu/")[https\:\/\/www\.washington\.edu\/]][Master, Computer Science and Artificial Intelligence, Score: 3\.9][Sep 2017–Jun 2019]
- Completed graduate coursework and research at the intersection of machine learning, NLP, and human\-centered AI\.
- Built reproducible experiments for text classification and retrieval, including error analysis and ablation studies\.
- Presented research findings to academic and industry audiences and collaborated across disciplines\.
#strong[Courses]: Machine Learning, Deep Learning, Natural Language Processing, Probabilistic Graphical Models, Distributed Systems, Statistical Inference, Human\-Computer Interaction
]

= Work
#resume-pad[
#resume-subheading[Senior AI Engineer][#link("https://www.aetherlabs.ai")[https\:\/\/www\.aetherlabs\.ai]][Aether Labs][Mar 2023–Present]
- Lead the design and deployment of LLM\-powered search and assistant features used by enterprise customers\.
- Built a retrieval\-augmented generation pipeline with hybrid search, reranking, and citation\-aware responses, reducing unsupported claims by 38%\.
- Created an offline and online evaluation stack covering relevance, groundedness, latency, and cost, enabling weekly model and prompt releases\.
- Partnered with platform engineers to productionize inference services with batching, caching, and observability on Kubernetes\.
- Mentored two AI engineers and established review practices for prompt changes, data contracts, and model risk assessments\.
#strong[Keywords]: LLM Systems, RAG, Evaluation, Inference, Mentorship

#resume-subheading[Machine Learning Engineer][#link("https://www.brightpulsehealth.com")[https\:\/\/www\.brightpulsehealth\.com]][BrightPulse Health][Jul 2019–Feb 2023]
- Developed clinical risk and triage models using structured EHR data, improving recall for high\-risk patients by 17% in prospective validation\.
- Built NLP pipelines to extract signals from unstructured notes, with de\-identification, labeling, and active learning workflows\.
- Deployed batch and real\-time inference services on AWS, with data quality checks, model monitoring, and rollback procedures\.
- Worked with clinicians and compliance teams to document model limitations, intended use, and bias mitigation steps\.
- Automated feature pipelines in Airflow and Spark, cutting weekly model refresh time from two days to four hours\.
#strong[Keywords]: Healthcare, NLP, Risk Models, AWS, Monitoring

#resume-subheading[AI Research Intern][#link("https://www.vectorforge.ai")[https\:\/\/www\.vectorforge\.ai]][VectorForge AI][Jun 2018–Sep 2018]
- Prototyped sentence embeddings and retrieval baselines for semantic search over technical documentation\.
- Ran ablation studies on negative sampling and reranking, documenting findings in an internal research report\.
- Contributed reusable evaluation scripts and data preparation notebooks to the research team\.
#strong[Keywords]: Embeddings, Semantic Search, Research
]

= Languages
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[English]: Native or Bilingual Proficiency], [#strong[Keywords]: Technical writing, Conference talks])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Spanish]: Full Professional Proficiency], [#strong[Keywords]: Bilingual collaboration])

#grid(columns: (1fr, auto), align: (left, right), [#strong[French]: Elementary Proficiency], [#strong[Keywords]: DELF A2])
]

= Skills
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Machine Learning]: Expert], [#strong[Keywords]: PyTorch, TensorFlow, scikit\-learn, XGBoost, Statistical Modeling])

#grid(columns: (1fr, auto), align: (left, right), [#strong[LLM & Generative AI]: Advanced], [#strong[Keywords]: Transformers, LangChain, RAG, Prompt Engineering, Fine\-tuning, Agents])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Data Engineering]: Advanced], [#strong[Keywords]: Python, SQL, Apache Airflow, Apache Spark, dbt, Snowflake])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloud & MLOps]: Advanced], [#strong[Keywords]: AWS, GCP, Docker, Kubernetes, MLflow, Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Software Engineering]: Advanced], [#strong[Keywords]: FastAPI, TypeScript, REST APIs, CI\/CD, Testing, System Design])
]

= Awards
#resume-pad[
#resume-subheading[AI Platform Innovation Award][][BrightPulse Health][Nov 2022]
Recognized for leading the design of a clinical NLP platform that reduced manual chart review time by 30% while maintaining auditability and clinician trust\.

#resume-subheading[Graduate Research Excellence Award][][University of Washington][May 2019]
Awarded for research on retrieval and evaluation methods for domain\-specific language models, including a published workshop paper and reproducible benchmark\.
]

= Certificates
#resume-pad[
#resume-subheading[AWS Certified Machine Learning \- Specialty][#link("https://aws.amazon.com/certification/certified-machine-learning-specialty/")[https\:\/\/aws\.amazon\.com\/certification\/certified\-machine\-learning\-specialty\/]][Amazon Web Services][Aug 2022]

#resume-subheading[Google Cloud Professional Machine Learning Engineer][#link("https://cloud.google.com/certification/machine-learning-engineer")[https\:\/\/cloud\.google\.com\/certification\/machine\-learning\-engineer]][Google Cloud][Jan 2023]
]

= Publications
#resume-pad[
#resume-subheading[Evaluation\-Driven Development for Retrieval\-Augmented Generation][#link("https://dl.acm.org/doi/10.1145/3612345.3612399")[https\:\/\/dl\.acm\.org\/doi\/10\.1145\/3612345\.3612399]][Proceedings of the Conference on Applied Machine Learning][Oct 2023]
- Proposes a practical evaluation loop for RAG systems that combines retrieval diagnostics, groundedness checks, and human review\.
- Shares lessons from deploying the framework across customer support and healthcare search use cases\.

#resume-subheading[Calibrating Clinical Risk Models Under Distribution Shift][#link("https://doi.org/10.1016/j.jhai.2021.03.004")[https\:\/\/doi\.org\/10\.1016\/j\.jhai\.2021\.03\.004]][Journal of Healthcare AI][Mar 2021]
- Studies calibration drift in clinical risk prediction models when patient populations and care pathways change\.
- Introduces monitoring signals and retraining triggers that helped maintain model reliability in production\.
]

= Projects
#resume-pad[
#resume-subheading[RAG Evaluation Harness][#link("https://github.com/elena-marquez/rag-eval-harness")[https\:\/\/github\.com\/elena\-marquez\/rag\-eval\-harness]][Open\-source toolkit for reproducible evaluation of retrieval\-augmented generation pipelines][Jan 2024–Present]
- Provides pluggable retrievers, rerankers, and judges for measuring relevance, groundedness, and answer completeness\.
- Includes synthetic query generation, regression tests, and dashboards for comparing prompt and model changes\.
#strong[Keywords]: RAG, Evaluation, LLM

#resume-subheading[Clinical Note Summarizer][#link("https://github.com/elena-marquez/clinical-note-summarizer")[https\:\/\/github\.com\/elena\-marquez\/clinical\-note\-summarizer]][Privacy\-preserving summarization service for clinician\-authored notes][Feb 2022–Nov 2022]
- Built a de\-identification and summarization pipeline with human\-in\-the\-loop review and audit logging\.
- Evaluated summaries for factual consistency, coverage, and clinician acceptance before a limited pilot\.
#strong[Keywords]: Healthcare, NLP, Summarization
]

= Interests
#resume-pad[
#strong[Open\-Source AI]: Evaluation, Reproducibility, Agents

#strong[Outdoors]: Trail Running, Climbing, Cycling

#strong[Music]: Jazz Piano, Music Production
]

= Volunteer
#resume-pad[
#resume-subheading[Mentor][#link("https://wiml.org")[https\:\/\/wiml\.org]][Women in Machine Learning][Jan 2021–Present]
- Mentor early\-career engineers and researchers on ML project scoping, interview preparation, and career growth\.
- Review workshop submissions and support community events focused on inclusive AI research and practice\.
]