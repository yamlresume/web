#set document(
  title: "Sanne van den Berg - Senior UX-designer met focus op toegankelijk en inclusief ontwerp",
  author: "Sanne van den Berg",
  keywords: "User Research, Prototyping, Interaction Design, Visual Design, Front-end Basics",
  description: "Résumé of Sanne van den Berg",
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 1.5cm, right: 1.5cm),
  // page numbers are hidden by default
)

#set text(
  font: ("Libertinus Serif", "Linux Libertine"),
  size: 10pt,
  lang: "nl", number-type: "old-style",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Sanne van den Berg]] #v(-0.2em)

#text(size: 1.44em)[Senior UX\-designer met focus op toegankelijk en inclusief ontwerp]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+31 6 12345678")[\+31 6 12345678] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:sanne@vandenberg.design")[sanne\@vandenberg\.design] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://sannevandenberg.design")[https\:\/\/sannevandenberg\.design]

Keizersgracht 123, Amsterdam, Noord\-Holland, Nederland, 1015 CJ

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/sannevandenberg")[sannevandenberg] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"#000000\" d=\"M232 237.2c31.8-15.2 48.4-38.2 48.4-74 0-70.6-52.6-87.8-113.3-87.8l-167.1 0 0 354.4 171.8 0c64.4 0 124.9-30.9 124.9-102.9 0-44.5-21.1-77.4-64.7-89.7zM77.9 135.9l73.1 0c28.1 0 53.4 7.9 53.4 40.5 0 30.1-19.7 42.2-47.5 42.2l-79 0 0-82.7zm83.3 233.7l-83.3 0 0-97.6 84.9 0c34.3 0 56 14.3 56 50.6 0 35.8-25.9 47-57.6 47zM519.7 128.9l-143.7 0 0-34.9 143.7 0 0 34.9zM576 305.2c0-75.9-44.4-139.2-124.9-139.2-78.2 0-131.3 58.8-131.3 135.8 0 79.9 50.3 134.7 131.3 134.7 61.3 0 101-27.6 120.1-86.3l-62.2 0c-6.7 21.9-34.3 33.5-55.7 33.5-41.3 0-63-24.2-63-65.3l185.1 0c.3-4.2 .6-8.7 .6-13.2zM390.4 274c2.3-33.7 24.7-54.8 58.5-54.8 35.4 0 53.2 20.8 56.2 54.8l-114.7 0z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.behance.net/sannevandenberg")[sannevandenberg] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M256 8a248 248 0 1 0 0 496 248 248 0 1 0 0-496zM420 122.4c29.5 36 47.4 82 47.8 132-7-1.5-77-15.7-147.5-6.8-5.8-14-11.2-26.4-18.6-41.6 78.3-32 113.8-77.5 118.3-83.5zM396.4 97.9c-3.8 5.4-35.7 48.3-111 76.5-34.7-63.8-73.2-116.2-79-124 67.2-16.2 138 1.3 190.1 47.5zM165.9 64.6c5.6 7.7 43.4 60.1 78.5 122.5-99.1 26.3-186.4 25.9-195.8 25.8 13.7-65.7 58-120.4 117.3-148.3zM44.2 256.3c0-2.2 0-4.3 .1-6.5 9.3 .2 111.9 1.5 217.7-30.1 6.1 11.9 11.9 23.9 17.2 35.9-76.6 21.6-146.2 83.5-180.5 142.3-33.8-37.6-54.5-87.2-54.5-141.6zM126 423.4c22.1-45.2 82.2-103.6 167.6-132.8 29.7 77.3 42 142.1 45.2 160.6-68.1 29-150 21.1-212.8-27.9zm248.4 8.5c-2.2-12.9-13.4-74.9-41.2-151 66.4-10.6 124.7 6.8 131.9 9.1-9.4 58.9-43.3 109.8-90.8 142z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://dribbble.com/sannevandenberg")[sannevandenberg]
]

= Basis Informatie

#resume-pad[
Ontwerper met ruim 8 jaar ervaring in het creëren van gebruiksvriendelijke
digitale producten voor webshops, SaaS\-toepassingen en publieke diensten\.
Ik vertaal gebruikersbehoeften naar heldere interacties en inclusieve
ontwerpen, met oog voor zowel businessdoelen als menselijke waarden\.

- Methodisch en onderzoekend\: van contextanalyse tot usabilitytest
- Ervaren met design systems, rapid prototyping en service design
- Gedreven om digitale toegankelijkheid (WCAG 2\.2) standaard te maken
]

= Opleidingen
#resume-pad[
#resume-subheading[Hogeschool van Amsterdam][#link("https://www.hva.nl")[https\:\/\/www\.hva\.nl]][Bachelor, Communicatie en Multimedia Design, Score: 8\.2][sep 2010–jul 2014]
- Afstudeerrichting Interaction Design, afgestudeerd met een 8,2
- Afstudeerproject\: toegankelijke tabletapp voor senioren
- Minor\: Design for Social Change
#strong[Cursussen]: Onderzoeksmethoden voor Design, Interactieontwerp, Visual Interface Design, Mens\-computerinteractie, Digitale Productie, Concepting en Creativiteit, Bedrijfskunde voor Creatieve Industrie, Afstudeerproject Apps voor Ouderen
]

= Werkervaring
#resume-pad[
#resume-subheading[Senior UX Designer][#link("https://www.bluebird-digital.nl")[https\:\/\/www\.bluebird\-digital\.nl]][Bluebird Digital][mrt 2021–Heden]
- Verantwoordelijk voor de UX\-strategie van een B2B SaaS\-platform met ruim 40\.000 gebruikers\.
- Opgezet en doorontwikkeld design system met toegankelijke, herbruikbare componenten in Figma\.
- Begeleidde junior designers en gaf UX\-workshops aan developers en productmanagers\.
#strong[Trefwoorden]: Design system, SaaS, WCAG 2\.2, Agile\/Scrum, Mentorschap

#resume-subheading[Product Designer][#link("https://www.startupstudio.amsterdam")[https\:\/\/www\.startupstudio\.amsterdam]][Startup Studio Amsterdam][mei 2017–feb 2021]
- Ontwikkelde UX\-ontwerpen voor 12 startups in fintech, health en mobility\.
- Leidde wekelijks usabilitytesten en vertaalde inzichten naar prototypes\.
- Creëerde customer journeys en service blueprints voor complexe processen\.
#strong[Trefwoorden]: Fintech, Mobility, Usabilitytesten, Customer journey, Prototyping

#resume-subheading[Junior UX Designer][#link("https://www.glowonline.nl")[https\:\/\/www\.glowonline\.nl]][Glow Online][aug 2014–apr 2017]
- Ontwierp wireframes en interactieve prototypes voor e\-commerce websites\.
- Voerde A\/B\-tests uit om conversie en gebruiksvriendelijkheid te verbeteren\.
- Werkte nauw samen met developers bij de implementatie van responsive designs\.
#strong[Trefwoorden]: E\-commerce, Wireframes, A\/B\-testen, Responsive design, Conversie
]

= Talen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Nederlands]: Moedertaal of tweetalige vaardigheid], [#strong[Trefwoorden]: Moedertaal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engels]: Volledige professionele vaardigheid], [#strong[Trefwoorden]: Professioneel C1])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Duits]: Beperkte werkvaardigheid], [#strong[Trefwoorden]: Basisvaardigheden])
]

= Vaardigheden
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[User Research]: Expert], [#strong[Trefwoorden]: Diepte\-interviews, Usabilitytesten, A\/B\-testen, Contextanalyse, Persona\'s])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Prototyping]: Expert], [#strong[Trefwoorden]: Figma, Interactieve prototypes, Wireframes, Design tokens, Clickdummy\'s])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Interaction Design]: Geavanceerd], [#strong[Trefwoorden]: Customer journeys, Service blueprints, Micro\-interacties, Toegankelijk ontwerp])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Visual Design]: Geavanceerd], [#strong[Trefwoorden]: Design systems, Typografie, Kleurtoegankelijkheid, WCAG 2\.2])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Front\-end Basics]: Intermediair], [#strong[Trefwoorden]: HTML, CSS, JavaScript, Storybook])
]

= Onderscheidingen
#resume-pad[
#resume-subheading[Publieksprijs Nederlandse UX Awards][][Dutch UX Association][nov 2022]
Bekroond voor het toegankelijk herontwerpen van een overheidsportaal voor
mensen met een visuele beperking\.
]

= Certificaten
#resume-pad[
#resume-subheading[Certified Professional in Accessibility Core Competencies (CPACC)][#link("https://www.accessibilityassociation.org/")[https\:\/\/www\.accessibilityassociation\.org\/]][IAAP][jun 2023]

#resume-subheading[Google UX Design Professional Certificate][#link("https://www.coursera.org/professional-certificates/google-ux-design")[https\:\/\/www\.coursera\.org\/professional\-certificates\/google\-ux\-design]][Coursera][apr 2021]
]

= Publicaties
#resume-pad[
#resume-subheading[Inclusief ontwerpen is geen trend, het is een vak][#link("https://www.uxmagazine.nl/artikel/inclusief-ontwerpen")[https\:\/\/www\.uxmagazine\.nl\/artikel\/inclusief\-ontwerpen]][UX Magazine Nederland][mei 2023]
Praktijkartikel over hoe je toegankelijkheid vanaf de start van het
ontwerpproces meeneemt, met concrete voorbeelden uit de financiële sector\.
]

= Referenties
#resume-pad[
#resume-subheading[Dr\. Liesbeth Jansen][Design lead bij Bluebird Digital][liesbeth\.jansen\@bluebird\-digital\.nl][\+31 20 555 0199]
Sanne is een van de meest zorgvuldige en empathische designers met wie ik
heb gewerkt\. Haar aanpak combineert onderzoek, creativiteit en oog voor
detail met een sterke drive om digitale producten voor iedereen bruikbaar te maken\.
]

= Projecten
#resume-pad[
#resume-subheading[OmniBank App Herontwerp][#link("https://sannevandenberg.design/projecten/omnibank")[https\:\/\/sannevandenberg\.design\/projecten\/omnibank]][Volledig herontwerp van de mobiele bankapp voor een grote Nederlandse
bank, gericht op begrijpelijke taal, donkere modus en volledige
ondersteuning van schermlezers\.
][jan 2023–jun 2023]
- Uitgebreid gebruikersonderzoek met 18 deelnemers, inclusief mensen met een visuele beperking\.
- Iteratieve prototypes getest in vijf rondes op toegankelijkheid\.
- Opgeleverd design package met componenten, tokens en richtlijnen voor developers\.
#strong[Trefwoorden]: Fintech, Toegankelijkheid, Figma, Co\-creatie, Design system
]

= Interesses
#resume-pad[
#strong[Duurzaamheid]: Circulair design, Tweedehands meubels, Stadsmoestuin

#strong[Fotografie]: Straatfotografie, Analoog, Zwart\-wit

#strong[Muziek]: Gitaar, Indie, Vinyl
]

= Vrijwilligerswerk
#resume-pad[
#resume-subheading[Vrijwillig UX\-adviseur][#link("https://www.inclusiefdesigncollectief.nl")[https\:\/\/www\.inclusiefdesigncollectief\.nl]][Inclusive Design Collectief][jan 2019–Heden]
- Help non\-profitorganisaties met het toegankelijk maken van hun digitale kanalen\.
- Organiseer jaarlijkse toegankelijkheidssessies tijdens de Dutch Design Week\.
]