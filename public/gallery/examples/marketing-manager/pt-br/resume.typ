#set document(
  title: "Mariana Alves de Souza - Gerente de Marketing Digital e Estratégia de Marca",
  author: "Mariana Alves de Souza",
  keywords: "Estratégia de Marketing, Marketing Digital, Análise de Dados, Liderança",
  description: "Résumé of Mariana Alves de Souza",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "pt", region: "br", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Mariana Alves de Souza]] #v(-0.2em)

#text(size: 1.44em)[Gerente de Marketing Digital e Estratégia de Marca]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+55 11 98765-4321")[\+55 11 98765\-4321] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:mariana.souza@marketing.com.br")[mariana\.souza\@marketing\.com\.br] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.marianasouza.com.br")[https\:\/\/www\.marianasouza\.com\.br]

Av\. Paulista, 1000 \- Bela Vista, São Paulo, SP, Brasil, 01310\-100

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/marianasouza")[marianasouza] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M369.4 32c43.4 0 78.6 35.2 78.6 78.6l0 83.8c-1.9-.1-3.8-.2-5.7-.2l-.4 0c-10 0-22.3 2.4-31.1 6.8-10 4.6-18.7 11.5-26 20.6-11.8 14.6-18.9 34.3-20.6 56.4-.1 .7-.1 1.3-.2 2s-.1 1.2-.1 1.9c-.1 1.2-.1 2.4-.1 3.6 0 1.9-.1 3.8 0 5.8 1.2 50.1 28.2 90.2 76.3 90.2 2.7 0 5.3-.1 7.9-.4l0 20.4c0 43.4-35.2 78.6-78.6 78.6L78.6 480C35.2 480 0 444.8 0 401.4L0 110.6C0 67.2 35.2 32 78.6 32l290.8 0zM82.3 138.9l.3 .1c13.2 3 19.8 7.4 19.8 23.4l0 187.2c0 16-6.7 20.4-19.9 23.4l-.3 .1 0 2.8 52.8 0 0-2.8-.3-.1c-13.2-3-19.9-7.4-19.9-23.4l0-176.3 86.1 202.5 4.9 0 88.6-208.2 0 186.6c-1.1 12.6-7.8 16.5-19.7 19.2l-.3 .1 0 2.7 91.9 0 0-2.7-.3-.1c-11.9-2.7-18.7-6.6-19.9-19.2l-.1-191.8 .1 0c0-16 6.7-20.4 19.9-23.4l.3-.1 0-2.7-72.2 0-67 157.4-67-157.4-77.8 0 0 2.7zM448 340.3c-25.1-7.4-43-35.1-41.2-67.8l0 0 41.1 0 0 67.8zm-6.4-135.6c2.3 0 4.4 .3 6.4 .9l0 57.4-40.2 0c1.5-33.6 13.6-57.9 33.8-58.3z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://medium.com/@marianasouza")[marianasouza]
]

= Informações Básicas

#resume-pad[
Gerente de marketing com mais de 8 anos de experiência em estratégias digitais, branding e growth para empresas de tecnologia e varejo\. Especialista em planejamento de campanhas multicanal, análise de dados e liderança de equipes de alta performance\.

- Aumento de 45% no ROI de campanhas pagas em 12 meses\.
- Gestão de orçamentos anuais superiores a R\$ 5 milhões\.
- Implementação de cultura data\-driven com CRM e automação de marketing\.
- Liderança de equipes multidisciplinares de até 12 pessoas\.
Busco novos desafios para conectar marcas a públicos estratégicos e gerar crescimento sustentável\.
]

= Formação
#resume-pad[
#resume-subheading[Universidade de São Paulo][#link("https://www5.usp.br/")[https\:\/\/www5\.usp\.br\/]][Mestrado, Marketing, Nota: 9\.1][mar. de 2016–dez. de 2017]
- Dissertação sobre personalização de campanhas digitais em e\-commerce\.
- Publicação de artigo em congresso nacional de marketing\.
- Média geral 9\.1, com destaque em projetos aplicados\.
#strong[Cursos]: Comportamento do Consumidor, Pesquisa de Mercado, Marketing Digital, Branding e Gestão de Marca, Análise Estatística para Marketing, Estratégia de Preços, Comunicação Integrada

#resume-subheading[Fundação Getulio Vargas][#link("https://fgv.br/")[https\:\/\/fgv\.br\/]][Bacharelado, Administração de Empresas, Nota: 8\.7][fev. de 2010–dez. de 2014]
- Formação sólida em administração com foco em marketing\.
- Participação em empresa júnior na área de consultoria de marketing\.
#strong[Cursos]: Teoria Geral da Administração, Marketing, Finanças Corporativas, Estatística, Gestão de Pessoas
]

= Experiência Profissional
#resume-pad[
#resume-subheading[Gerente de Marketing][#link("https://www.technova.com.br")[https\:\/\/www\.technova\.com\.br]][TechNova Brasil][jan. de 2020–Atual]
- Lidero equipe de 12 profissionais de marketing, design e conteúdo\.
- Responsável por estratégia de marca, campanhas digitais e geração de demanda\.
- Implementei modelo de atribuição multicanal que aumentou em 45% a eficiência do investimento\.
- Geri orçamento anual de R\$ 5,2 milhões com ROI médio de 3,8x\.
- Desenvolvi parcerias com influenciadores e mídia para expansão de mercado\.
#strong[Palavras-chave]: Branding, Growth, Liderança, Data\-driven, Performance

#resume-subheading[Analista de Marketing Sênior][#link("https://www.varejomais.com.br")[https\:\/\/www\.varejomais\.com\.br]][VarejoMais][jun. de 2017–dez. de 2019]
- Planejei e executei campanhas de mídia paga em Google Ads, Meta Ads e LinkedIn Ads\.
- Reduzi o custo por aquisição em 30% em 8 meses\.
- Criei estratégias de CRM e automação que elevaram a retenção em 22%\.
- Analisei métricas e apresentei relatórios executivos mensais\.
#strong[Palavras-chave]: Mídia Paga, CRM, SEO, Analytics, E\-commerce

#resume-subheading[Analista de Marketing][#link("https://www.criativaz.com.br")[https\:\/\/www\.criativaz\.com\.br]][Agência CriativaZ][ago. de 2015–mai. de 2017]
- Atendi contas de varejo e tecnologia, desenvolvendo planos de comunicação\.
- Gerenciei redes sociais e produzi conteúdo para blogs e newsletters\.
- Auxiliei no planejamento de eventos e lançamentos de produtos\.
#strong[Palavras-chave]: Social Media, Conteúdo, Eventos, Planejamento
]

= Idiomas
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Português]: Nativo ou Bilíngue], [#strong[Palavras-chave]: Nativo])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Inglês]: Proficiência Profissional Fluente], [#strong[Palavras-chave]: TOEIC 950, Reuniões internacionais])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Espanhol]: Proficiência Profissional Limitada], [#strong[Palavras-chave]: Conversação básica])
]

= Competências
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Estratégia de Marketing]: Especialista], [#strong[Palavras-chave]: Planejamento, Branding, Posicionamento, Go\-to\-market])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Marketing Digital]: Avançado], [#strong[Palavras-chave]: Google Ads, Meta Ads, LinkedIn Ads, SEO, SEM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Análise de Dados]: Avançado], [#strong[Palavras-chave]: Google Analytics 4, Power BI, SQL, Testes A\/B, CRM])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Liderança]: Avançado], [#strong[Palavras-chave]: Gestão de Equipes, Mentoria, Agile Marketing, Comunicação])
]

= Prêmios
#resume-pad[
#resume-subheading[Profissional de Marketing do Ano][][Associação Brasileira de Marketing][nov. de 2023]
Reconhecimento pelo impacto estratégico em campanhas de growth e liderança de equipe de alta performance\.
]

= Certificados
#resume-pad[
#resume-subheading[Google Analytics 4 Certification][#link("https://skillshop.exceedlms.com/student/catalog")[https\:\/\/skillshop\.exceedlms\.com\/student\/catalog]][Google][mar. de 2023]

#resume-subheading[HubSpot Marketing Hub Certificate][#link("https://academy.hubspot.com/courses")[https\:\/\/academy\.hubspot\.com\/courses]][HubSpot Academy][jun. de 2022]

#resume-subheading[Meta Certified Digital Marketing Associate][#link("https://www.facebook.com/business/learn/certification")[https\:\/\/www\.facebook\.com\/business\/learn\/certification]][Meta][set. de 2021]
]

= Publicações
#resume-pad[
#resume-subheading[Personalização de Campanhas Digitais no E\-commerce Brasileiro][#link("https://www.revistabrasileirademarketing.com.br")[https\:\/\/www\.revistabrasileirademarketing\.com\.br]][Revista Brasileira de Marketing][out. de 2018]
- Estudo sobre o impacto da personalização em taxas de conversão\.
- Análise de dados de mais de 50 mil sessões em lojas virtuais\.
- Recomendações práticas para gestores de marketing\.
]

= Referências
#resume-pad[
#resume-subheading[Dr\. Ricardo Menezes][Professor Orientador de Mestrado][ricardo\.menezes\@usp\.br][\+55 11 91234\-5678]
Mariana demonstra excelência estratégica e capacidade de liderança\. Sua visão analítica e criatividade geram resultados consistentes\.

#resume-subheading[Camila Torres][Diretora de Vendas][camila\.torres\@technova\.com\.br][\+55 11 99876\-5432]
Trabalhei diretamente com Mariana por 4 anos\. É uma líder inspiradora, focada em dados e resultados\.
]

= Projetos
#resume-pad[
#resume-subheading[Campanha \"Viva Mais\"][#link("https://www.technova.com.br/vivamais")[https\:\/\/www\.technova\.com\.br\/vivamais]][Campanha integrada de branding e performance para lançamento de linha de produtos\.][mar. de 2023–jun. de 2023]
- Coordenei criação, mídia, influenciadores e assessoria de imprensa\.
- Resultado\: 120% da meta de leads em 3 meses\.
- Aumento de 35% no reconhecimento de marca na região Sudeste\.
#strong[Palavras-chave]: Lançamento, Branding, Leads

#resume-subheading[Programa de Fidelidade VarejoMais\+][#link("https://www.varejomais.com.br/fidelidade")[https\:\/\/www\.varejomais\.com\.br\/fidelidade]][Reestruturação do programa de fidelidade com foco em personalização\.][jan. de 2018–dez. de 2019]
- Implementei segmentação comportamental e automação de e\-mail marketing\.
- Aumento de 22% na retenção de clientes\.
- Crescimento de 18% no ticket médio dos participantes\.
#strong[Palavras-chave]: CRM, Fidelidade, Automação
]

= Interesses
#resume-pad[
#strong[Voluntariado]: Mentoria, Educação

#strong[Bem\-estar]: Corrida, Yoga, Meditação

#strong[Cultura]: Literatura, Cinema, Música
]

= Voluntariado
#resume-pad[
#resume-subheading[Mentora de Marketing][#link("https://www.mentesbrilhantes.org.br")[https\:\/\/www\.mentesbrilhantes\.org\.br]][Instituto Mentes Brilhantes][fev. de 2021–Atual]
- Oriento jovens empreendedores na criação de estratégias de marketing\.
- Conduzo workshops sobre redes sociais e posicionamento de marca\.
- Ajudo na captação de recursos e divulgação de projetos sociais\.
]