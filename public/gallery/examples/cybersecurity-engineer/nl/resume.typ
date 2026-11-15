#set document(
  title: "Sanne van Dijk - Senior beveiligingsingenieur met focus op zero trust en incidentrespons",
  author: "Sanne van Dijk",
  keywords: "Beveiligingsarchitectuur, Dreigingsdetectie, Cloudbeveiliging, Compliance en Risicobeheer, Incidentrespons",
  description: "Résumé of Sanne van Dijk",
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
#text(size: 2.488em, weight: "bold")[#smallcaps[Sanne van Dijk]] #v(-0.2em)

#text(size: 1.44em)[Senior beveiligingsingenieur met focus op zero trust en incidentrespons]

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M160.2 25C152.3 6.1 131.7-3.9 112.1 1.4l-5.5 1.5c-64.6 17.6-119.8 80.2-103.7 156.4 37.1 175 174.8 312.7 349.8 349.8 76.3 16.2 138.8-39.1 156.4-103.7l1.5-5.5c5.4-19.7-4.7-40.3-23.5-48.1l-97.3-40.5c-16.5-6.9-35.6-2.1-47 11.8l-38.6 47.2C233.9 335.4 177.3 277 144.8 205.3L189 169.3c13.9-11.3 18.6-30.4 11.8-47L160.2 25z\"/></svg>"), format: "svg", height: 0.9em))~#link("tel:+31 6 184 27 395")[\+31 6 184 27 395] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M61.4 64C27.5 64 0 91.5 0 125.4 0 126.3 0 127.1 .1 128L0 128 0 384c0 35.3 28.7 64 64 64l384 0c35.3 0 64-28.7 64-64l0-256-.1 0c0-.9 .1-1.7 .1-2.6 0-33.9-27.5-61.4-61.4-61.4L61.4 64zM464 192.3L464 384c0 8.8-7.2 16-16 16L64 400c-8.8 0-16-7.2-16-16l0-191.7 154.8 117.4c31.4 23.9 74.9 23.9 106.4 0L464 192.3zM48 125.4C48 118 54 112 61.4 112l389.2 0c7.4 0 13.4 6 13.4 13.4 0 4.2-2 8.2-5.3 10.7L280.2 271.5c-14.3 10.8-34.1 10.8-48.4 0L53.3 136.1c-3.3-2.5-5.3-6.5-5.3-10.7z\"/></svg>"), format: "svg", height: 0.9em))~#link("mailto:sanne.vandijk@vandijk-security.nl")[sanne\.vandijk\@vandijk\-security\.nl] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M351.9 280l-190.9 0c2.9 64.5 17.2 123.9 37.5 167.4 11.4 24.5 23.7 41.8 35.1 52.4 11.2 10.5 18.9 12.2 22.9 12.2s11.7-1.7 22.9-12.2c11.4-10.6 23.7-28 35.1-52.4 20.3-43.5 34.6-102.9 37.5-167.4zM160.9 232l190.9 0C349 167.5 334.7 108.1 314.4 64.6 303 40.2 290.7 22.8 279.3 12.2 268.1 1.7 260.4 0 256.4 0s-11.7 1.7-22.9 12.2c-11.4 10.6-23.7 28-35.1 52.4-20.3 43.5-34.6 102.9-37.5 167.4zm-48 0C116.4 146.4 138.5 66.9 170.8 14.7 78.7 47.3 10.9 131.2 1.5 232l111.4 0zM1.5 280c9.4 100.8 77.2 184.7 169.3 217.3-32.3-52.2-54.4-131.7-57.9-217.3L1.5 280zm398.4 0c-3.5 85.6-25.6 165.1-57.9 217.3 92.1-32.7 159.9-116.5 169.3-217.3l-111.4 0zm111.4-48C501.9 131.2 434.1 47.3 342 14.7 374.3 66.9 396.4 146.4 399.9 232l111.4 0z\"/></svg>"), format: "svg", height: 0.9em))~#link("https://www.vandijk-security.nl")[https\:\/\/www\.vandijk\-security\.nl]

Maliebaan 45, Utrecht, Utrecht, Nederland, 3581 CD

#box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"#000000\" d=\"M416 32L31.9 32C14.3 32 0 46.5 0 64.3L0 447.7C0 465.5 14.3 480 31.9 480L416 480c17.6 0 32-14.5 32-32.3l0-383.4C448 46.5 433.6 32 416 32zM135.4 416l-66.4 0 0-213.8 66.5 0 0 213.8-.1 0zM102.2 96a38.5 38.5 0 1 1 0 77 38.5 38.5 0 1 1 0-77zM384.3 416l-66.4 0 0-104c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9l0 105.8-66.4 0 0-213.8 63.7 0 0 29.2 .9 0c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9l0 117.2z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://www.linkedin.com/in/sannevandijk-cyber")[sannevandijk\-cyber] | #box(baseline: 0.2em, image(bytes("<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"#000000\" d=\"M216.5 362.5c-66-8-112.5-55.5-112.5-117 0-25 9-52 24-70-6.5-16.5-5.5-51.5 2-66 20-2.5 47 8 63 22.5 19-6 39-9 63.5-9s44.5 3 62.5 8.5c15.5-14 43-24.5 63-22 7 13.5 8 48.5 1.5 65.5 16 19 24.5 44.5 24.5 70.5 0 61.5-46.5 108-113.5 116.5 17 11 28.5 35 28.5 62.5l0 52C323 491.5 335.5 500 350.5 494 441 459.5 512 369 512 257 512 115.5 397 0 255.5 0S0 115.5 0 257c0 111 70.5 203 165.5 237.5 13.5 5 26.5-4 26.5-17.5l0-40c-7 3-16 5-24 5-33 0-52.5-18-66.5-51.5-5.5-13.5-11.5-21.5-23-23-6-.5-8-3-8-6 0-6 10-10.5 20-10.5 14.5 0 27 9 40 27.5 10 14.5 20.5 21 33 21s20.5-4.5 32-16c8.5-8.5 15-16 21-21z\"/></svg>"), format: "svg", height: 0.9em)) #link("https://github.com/sannevandijk")[sannevandijk]
]

= Basis Informatie

#resume-pad[
- Ervaren beveiligingsingenieur met meer dan 8 jaar ervaring in het ontwerpen, implementeren en beheren van weerbare IT\-omgevingen\.
- Gespecialiseerd in zero\-trustarchitectuur, dreigingsdetectie, cloudbeveiliging en incidentrespons voor financiële en zorgorganisaties\.
- Combineert technische diepgang met heldere communicatie richting CISO, auditors en niet\-technische stakeholders\.
- Aantoonbaar resultaatgericht in het verlagen van cyberrisico\'s en het verhogen van de volwassenheid van securityprocessen\.
]

= Opleidingen
#resume-pad[
#resume-subheading[Technische Universiteit Delft][#link("https://www.tudelft.nl")[https\:\/\/www\.tudelft\.nl]][Master, Cybersecurity, Score: 8\.1][2014\-09\-01–2017\-07\-01]
- Afstudeeronderzoek naar detectie van supply\-chainaanvallen in CI\/CD\-pipelines\.
- Organiseerde Capture the Flag\-evenementen en begeleidde eerstejaars bij securityvakken\.
- Ontwikkelde een prototype voor geautomatiseerde kwetsbaarheidsanalyse in containeromgevingen\.
#strong[Cursussen]: Cryptografie, Netwerkbeveiliging, Beveiligingsgovernance, Penetratietesten, Forensische Analyse, Privacy en Gegevensbescherming, Cloudbeveiliging, Risicomanagement

#resume-subheading[Hogeschool Utrecht][#link("https://www.hu.nl")[https\:\/\/www\.hu\.nl]][Bachelor, ICT & Security, Score: 8\.4][2010\-09\-01–2014\-07\-01]
- Minor gevolgd in digitale forensica en incidentonderzoek\.
- Stage gelopen bij een regionale zorginstelling en daar een basis\-SOC ingericht\.
#strong[Cursussen]: Netwerkarchitectuur, Besturingssystemen, Ethisch Hacken, Digitale Forensica, Informatiebeveiliging, Programmeerprincipes
]

= Werkervaring
#resume-pad[
#resume-subheading[Senior beveiligingsingenieur][#link("https://www.veiligedomeinen.nl")[https\:\/\/www\.veiligedomeinen\.nl]][Veiligedomeinen B\.V\.][2023\-04\-01–Heden]
- Leidt het zero\-trustprogramma voor twaalf bedrijfsonderdelen en adviseert de CISO over risicogebaseerde prioritering\.
- Ontwerpt en implementeert SIEM\-detectieregels, SOAR\-playbooks en EDR\-beleid voor een 24\/7 SOC\.
- Voert dreigingsmodellering volgens STRIDE en MITRE ATT&CK uit voor cloudmigraties naar Azure\.
- Coördineert incidentrespons bij ernstige incidenten, inclusief forensisch onderzoek, crisiscommunicatie en herstelvalidatie\.
- Beheert ISO 27001\- en NIS2\-compliance en begeleidt interne en externe audits\.
#strong[Trefwoorden]: Zero Trust, SIEM, SOAR, Azure\-beveiliging, ISO 27001, NIS2, Dreigingsmodellering

#resume-subheading[Beveiligingsanalist][#link("https://www.noordzeefintech.nl")[https\:\/\/www\.noordzeefintech\.nl]][Noordzee Fintech][2019\-06\-01–2023\-03\-31]
- Bouwde en beheerde detectiecontent in Splunk en Microsoft Sentinel voor betalings\- en klantprocessen\.
- Leidde phishing\-, malware\- en fraudeonderzoeken en vertaalde bevindingen naar concrete maatregelen\.
- Automatiseerde vulnerability management en verkortte de gemiddelde hersteltijd van kritieke kwetsbaarheden met 38%\.
- Droeg bij aan GDPR\- en PSD2\-audits en het opstellen van securityrapportages voor het bestuur\.
#strong[Trefwoorden]: SOC, Splunk, Microsoft Sentinel, Phishing, Malwareanalyse, GDPR

#resume-subheading[IT\-beveiligingsspecialist][#link("https://www.utrechtzorgsystemen.nl")[https\:\/\/www\.utrechtzorgsystemen\.nl]][Utrecht Zorgsystemen][2017\-09\-01–2019\-05\-31]
- Beveiligde zorgapplicaties en medische netwerken volgens NEN 7510 en interne beveiligingsrichtlijnen\.
- Implementeerde meerfactorauthenticatie, patchmanagement en netwerksegmentatie voor 3\.500 werkplekken\.
- Voerde risicoanalyses uit en ondersteunde teams bij het herstellen van geconstateerde kwetsbaarheden\.
#strong[Trefwoorden]: MFA, Patchmanagement, Risicoanalyse, NEN 7510, Firewalls
]

= Talen
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Nederlands]: Moedertaal of tweetalige vaardigheid], [#strong[Trefwoorden]: Moedertaal])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Engels]: Volledige professionele vaardigheid], [#strong[Trefwoorden]: TOEFL iBT 112, C1])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Duits]: Beperkte werkvaardigheid], [#strong[Trefwoorden]: Goethe B1])
]

= Vaardigheden
#resume-pad[
#grid(columns: (1fr, auto), align: (left, right), [#strong[Beveiligingsarchitectuur]: Expert], [#strong[Trefwoorden]: Zero Trust, Netwerksegmentatie, Firewalls, VPN, IDS\/IPS])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Dreigingsdetectie]: Geavanceerd], [#strong[Trefwoorden]: SIEM, Splunk, Microsoft Sentinel, EDR, Dreigingsjacht])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Cloudbeveiliging]: Geavanceerd], [#strong[Trefwoorden]: Azure, AWS, IAM, Kubernetes, Terraform])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Compliance en Risicobeheer]: Geavanceerd], [#strong[Trefwoorden]: ISO 27001, NIST CSF, GDPR, Risicobeoordeling, Audits])

#grid(columns: (1fr, auto), align: (left, right), [#strong[Incidentrespons]: Expert], [#strong[Trefwoorden]: Incidentrespons, Digitale Forensica, Malwareanalyse, SOAR, Crisisbeheersing])
]

= Onderscheidingen
#resume-pad[
#resume-subheading[Prijs voor Cybersecurity\-Excellentie][][Nederlandse Vereniging voor Cybersecurity][2023\-10\-12]
Uitgereikt voor het succesvol opzetten van een organisatiebreed zero\-trustprogramma en het meetbaar verlagen van het aantal kritieke security\-incidenten\.
]

= Certificaten
#resume-pad[
#resume-subheading[Certified Information Systems Security Professional (CISSP)][#link("https://www.isc2.org/certifications/cissp")[https\:\/\/www\.isc2\.org\/certifications\/cissp]][(ISC)²][2022\-05\-15]

#resume-subheading[Azure Security Engineer Associate (AZ\-500)][#link("https://learn.microsoft.com/en-us/certifications/azure-security-engineer/")[https\:\/\/learn\.microsoft\.com\/en\-us\/certifications\/azure\-security\-engineer\/]][Microsoft][2021\-11\-20]

#resume-subheading[Certified Ethical Hacker (CEH)][#link("https://www.eccouncil.org/programs/certified-ethical-hacker-ceh/")[https\:\/\/www\.eccouncil\.org\/programs\/certified\-ethical\-hacker\-ceh\/]][EC\-Council][2020\-03\-10]
]

= Publicaties
#resume-pad[
#resume-subheading[Zero Trust in de Praktijk\: een blauwdruk voor middelgrote organisaties][#link("https://www.cybersecuritymagazine.nl/zero-trust-praktijk")[https\:\/\/www\.cybersecuritymagazine\.nl\/zero\-trust\-praktijk]][Cybersecurity Magazine NL][2024\-04\-15]
- Beschrijft een gefaseerde aanpak voor zero\-trustarchitectuur binnen middelgrote organisaties\.
- Gaat in op identiteitsbeheer, netwerksegmentatie, detectie en het meten van securityvolwassenheid\.
]

= Projecten
#resume-pad[
#resume-subheading[Zero Trust Referentiearchitectuur][#link("https://github.com/sannevandijk/zero-trust-blueprint")[https\:\/\/github\.com\/sannevandijk\/zero\-trust\-blueprint]][Openbare referentiearchitectuur met beleidsregels, dreigingsmodellen en implementatiechecklisten voor zero trust\.][2023\-06\-01–2024\-02\-28]
- Ontwikkelde een herbruikbare blauwdruk met identity\-first principes, microsegmentatie en continue verificatie\.
- Valideerde de architectuur in een Azure\-testomgeving met automatische compliancecontroles\.
#strong[Trefwoorden]: Zero Trust, Azure, Microsegmentatie, Compliance

#resume-subheading[Phishingdetectieplatform][#link("https://github.com/sannevandijk/phishing-detection-platform")[https\:\/\/github\.com\/sannevandijk\/phishing\-detection\-platform]][Platform dat e\-mailheaders, URL\-reputatie en gebruikersmeldingen combineert om phishing sneller te detecteren\.][2021\-02\-01–2021\-12\-31]
- Verwerkte dagelijks meer dan 50\.000 e\-mails en reduceerde valse positieven met 27%\.
- Integreerde automatische verrijking met dreigingsinformatie en SOAR\-playbooks\.
#strong[Trefwoorden]: Phishing, Dreigingsinformatie, SOAR, Python
]

= Interesses
#resume-pad[
#strong[Duursport]: Hardlopen, Wielrennen, Wandelen

#strong[Muziek]: Gitaar, Piano

#strong[Kennis delen]: Meetups, Mentoring, Capture the Flag
]

= Vrijwilligerswerk
#resume-pad[
#resume-subheading[Vrijwilliger Digitale Weerbaarheid][#link("https://www.veiligonlineutrecht.nl")[https\:\/\/www\.veiligonlineutrecht\.nl]][Veilig Online Utrecht][2021\-09\-01–2024\-12\-31]
- Gaf voorlichting aan ouderen en kleine ondernemers over phishing, wachtwoordbeheer en online veiligheid\.
- Organiseerde kwartaalworkshops en stelde laagdrempelig voorlichtingsmateriaal op\.
]