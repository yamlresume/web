// Import useParams only for client components

const translations = {
  en: {
    navbar: {
      documentation: 'Documentation',
      blog: 'Blog',
      chat: 'Chat',
      discussions: 'Discussions',
      developer: 'Developer',
      search: 'Search',
      Playground: 'Playground',
    },
    hero: {
      tagline: 'Brought to you with ❤️ by <ppresume>PPResume</ppresume>',
      title: 'Resumes as Code in YAML',
      description:
        'YAMLResume allows people to create and version control resumes using YAML and generate pixel perfect PDFs with professional layout and typesetting in a breeze.',
      quickStart: 'Quick Start',
      checkGithub: 'Check Github',
      Playground: 'Playground',
    },
    quickStart: {
      title: 'Quick Start in One Second',
    },
    features: {
      sectionTitle: 'Powerful, Professional & Perfect',
      plainText: {
        title: 'Plain Text in YAML',
        description:
          'Maintain your resume as code in YAML—clean, readable, and perfectly suited for version control.',
      },
      richText: {
        title: 'Rich Text Formatting',
        description:
          'Use Markdown-style rich text in your summaries to make your key points pop with clarity.',
      },
      flexibleSection: {
        title: 'Infinite Flexibility',
        description:
          'Structure your resume exactly how you want with modular sections designed for maximum impact.',
      },
      latexTypesetting: {
        title: 'Pro-Grade Typesetting',
        description:
          'Powered by LaTeX for pixel-perfect typography, consistent spacing, and a professional aesthetic.',
      },
      customizable: {
        title: 'Deep Customization',
        description:
          'Total control over margins, fonts, and sizes to craft a look that is uniquely yours.',
      },
      multilingual: {
        title: 'Go Global',
        description:
          'Built-in support for multiple languages, making international applications effortless.',
      },
      cli: {
        title: 'Developer CLI',
        description:
          'A powerful command-line interface to automate your resume workflow and integration.',
      },
      privacy: {
        title: 'Privacy First',
        description:
          'Process everything locally. Your personal data stays on your machine, always.',
      },
      themes: {
        title: 'Universal Themes',
        description:
          'One source file, endless possibilities with professional themes for PDF, HTML, and more.',
      },
      schema: {
        title: 'Schema Intelligence',
        description:
          'Get instant feedback and prevent errors with built-in schema validation as you type.',
      },
      outputs: {
        title: 'Multi-Output Support',
        description:
          'Generate your resume in multiple professional formats including PDF, responsive HTML, and clean Markdown.',
      },
      templates: {
        title: 'Professional Templates',
        description:
          'Choose from a variety of battle-tested LaTeX templates designed for clarity and professional impact.',
      },
    },
    testimonials: {
      sectionTitle: 'What People Say',
    },
    stats: {
      sectionTitle: 'Trusted by Developers',
    },
    comparison: {
      sectionTitle: 'Crafted for Perfection',
    },
    onboarding: {
      sectionTitle: 'Get Started in Seconds',
      recommended: 'Recommended',
      npx: {
        title: 'NPX (Recommended)',
        description: 'Create a new project instantly with zero global installs',
      },
      npm: {
        title: 'NPM Global',
        description: 'Install as a global CLI tool for system-wide access',
      },
      brew: {
        title: 'Homebrew',
        description: 'Install on macOS using the Homebrew package manager',
      },
      docker: {
        title: 'Docker',
        description: 'Run in an isolated container without local dependencies',
      },
      json2yamlresume: {
        title: 'json2yamlresume',
        description: 'Convert JSON Resume to YAMLResume format seamlessly',
      },
    },
    faq: {
      title: 'Frequently Asked Questions',
      questions: {
        whatIs: {
          question: 'What is YAMLResume?',
          answer1:
            'YAMLResume is a tool that allows you to manage your resume as code using YAML. It provides a structured way to define your work experience, skills, education, and other resume sections in a simple & version-controllable plain text document. YAMLResume then converts this YAML data into beautifully typeset PDF documents which is ready for job and scholarship applications.',
          answer2:
            'YAMLResume started out as the core typesetting engine for PPResume, a LaTeX based, pixel perfect resume builder. After careful consideration, we decided to open source it so that people can always have the right to say no to vendor lock-in.',
        },
        whyYaml: {
          question: 'Why YAML over JSON?',
          answer:
            "In a nutshell, YAML was chosen because it's more human-readable and human-writable than JSON. Despite its cleaner, less verbose and more flexible syntax, YAML also supports comments, allowing you to annotate your resume with notes that won't appear in the final output. YAML's hierarchical structure naturally maps to the sections and subsections, making it perfect for structured data like resumes.",
        },
        howGeneratePdf: {
          question: 'How does YAMLResume generate PDFs?',
          answer:
            "YAMLResume is actually a DSL for writing resumes, so under the hood it is a compiler for resumes. It transforms the YAML data into PDFs in a multi-step process. First, it parses the YAML file and validates its structure against a schema. Then, it processes the data with a codegen process that generates LaTeX code. Finally, this LaTeX code is compiled into a professional-quality PDF using a LaTeX engine. This approach ensures pixel-perfect typography and layout that's consistent across all devices and platforms.",
        },
        whyLatex: {
          question: 'Why use LaTeX?',
          answer:
            "LaTeX is the gold standard for professional document typesetting, especially in academic and technical fields. It provides superior typography with proper kerning, ligatures, and hyphenation that's difficult to achieve with HTML/CSS or word processors. LaTeX excels at consistent spacing, precise positioning and flexible layout. By using LaTeX as the underlying typesetting engine, YAMLResume ensures that your resume has a polished, professional look that stands out to recruiters and hiring managers.",
        },
      },
    },
    buyMeACoffee: {
      title: 'Like this project?',
      description:
        'YAMLResume is a passion project, built to provide free, private, and powerful resume tooling for everyone. If you find it useful, consider supporting its development. Every coffee helps!',
      button: 'Buy Me a Coffee',
    },
    blog: {
      title: 'YAMLResume Blog',
    },
    footer: {
      copyright: '© 2023–Present, ',
    },
  },
  es: {
    navbar: {
      documentation: 'Documentación',
      blog: 'Blog',
      chat: 'Chat',
      discussions: 'Discusiones',
      developer: 'Desarrollador',
      search: 'Buscar',
      Playground: 'Playground',
    },
    hero: {
      tagline: 'Traído con ❤️ por <ppresume>PPResume</ppresume>',
      title: 'Currículums como Código en YAML',
      description:
        'YAMLResume permite a las personas crear y versionar currículums usando YAML y generar PDFs perfectos a nivel de píxel con diseño y tipografía profesional en un instante.',
      quickStart: 'Inicio Rápido',
      checkGithub: 'Ver Github',
      Playground: 'Playground',
    },
    quickStart: {
      title: 'Inicio Rápido en Un Segundo',
    },
    features: {
      sectionTitle: 'Potente, Profesional y Perfecto',
      plainText: {
        title: 'Texto Plano en YAML',
        description:
          'Mantenga su currículum como código en YAML: limpio, legible y perfectamente adaptado para el control de versiones.',
      },
      richText: {
        title: 'Formato de Texto Enriquecido',
        description:
          'Utilice texto enriquecido estilo Markdown en sus resúmenes para que sus puntos clave resalten con claridad.',
      },
      flexibleSection: {
        title: 'Flexibilidad Infinita',
        description:
          'Estructure su currículum exactamente como desee con secciones modulares diseñadas para el máximo impacto.',
      },
      latexTypesetting: {
        title: 'Composición de Nivel Profesional',
        description:
          'Impulsado por LaTeX para una tipografía perfecta a nivel de píxel, espaciado constante y una estética profesional.',
      },
      customizable: {
        title: 'Personalización Profunda',
        description:
          'Control total sobre márgenes, fuentes y tamaños para crear un estilo que sea exclusivamente suyo.',
      },
      multilingual: {
        title: 'Alcance Global',
        description:
          'Soporte integrado para múltiples idiomas, facilitando las solicitudes internacionales.',
      },
      cli: {
        title: 'CLI para Desarrolladores',
        description:
          'Una potente interfaz de línea de comandos para automatizar el flujo de trabajo e integración de su currículum.',
      },
      privacy: {
        title: 'Privacidad Ante Todo',
        description:
          'Procese todo localmente. Sus datos personales permanecen en su máquina, siempre.',
      },
      themes: {
        title: 'Temas Universales',
        description:
          'Un archivo fuente, infinitas posibilidades con temas profesionales para PDF, HTML y más.',
      },
      schema: {
        title: 'Inteligencia de Esquema',
        description:
          'Obtenga comentarios instantáneos y evite errores con la validación de esquema integrada mientras escribe.',
      },
      outputs: {
        title: 'Soporte Multi-Formato',
        description:
          'Genere su currículum en múltiples formatos profesionales, incluyendo PDF, HTML receptivo y Markdown limpio.',
      },
      templates: {
        title: 'Plantillas Profesionales',
        description:
          'Elija entre una variedad de plantillas LaTeX probadas en combate, diseñadas para la claridad y el impacto profesional.',
      },
    },
    testimonials: {
      sectionTitle: 'Lo Que Dice La Gente',
    },
    stats: {
      sectionTitle: 'Confiado por Desarrolladores',
    },
    comparison: {
      sectionTitle: 'Elaborado para la Perfección',
      conventional: 'RxResume',
      yamlresume: 'YAMLResume',
    },
    onboarding: {
      sectionTitle: 'Comienza en Segundos',
      recommended: 'Recomendado',
      npx: {
        title: 'NPX (Recomendado)',
        description:
          'Crea un nuevo proyecto al instante sin instalaciones globales',
      },
      npm: {
        title: 'NPM Global',
        description:
          'Instala como herramienta CLI global para acceso en todo el sistema',
      },
      brew: {
        title: 'Homebrew',
        description: 'Instala en macOS usando el gestor de paquetes Homebrew',
      },
      docker: {
        title: 'Docker',
        description:
          'Ejecuta en un contenedor aislado sin dependencias locales',
      },
      json2yamlresume: {
        title: 'json2yamlresume',
        description: 'Convierte JSON Resume a formato YAMLResume sin problemas',
      },
    },
    faq: {
      title: 'Preguntas Frecuentes',
      questions: {
        whatIs: {
          question: '¿Qué es YAMLResume?',
          answer1:
            'YAMLResume es una herramienta que te permite gestionar tu currículum como código usando YAML. Proporciona una forma estructurada de definir tu experiencia laboral, habilidades, educación y otras secciones del currículum en un documento de texto plano simple y controlable por versiones. YAMLResume luego convierte estos datos YAML en documentos PDF bellamente compuestos que están listos para solicitudes de trabajo y becas.',
          answer2:
            'YAMLResume comenzó como el motor de composición central de PPResume, un generador de currículums perfecto a nivel de píxel basado en LaTeX. Después de una cuidadosa consideración, decidimos hacerlo de código abierto para que las personas siempre tengan el derecho de decir no al bloqueo de proveedores.',
        },
        whyYaml: {
          question: '¿Por qué YAML sobre JSON?',
          answer:
            'En pocas palabras, YAML fue elegido porque es más legible y escribible para humanos que JSON. A pesar de su sintaxis más limpia, menos verbosa y más flexible, YAML también admite comentarios, lo que te permite anotar tu currículum con notas que no aparecerán en la salida final. La estructura jerárquica de YAML se mapea naturalmente a las secciones y subsecciones, haciéndolo perfecto para datos estructurados como currículums.',
        },
        howGeneratePdf: {
          question: '¿Cómo genera YAMLResume los PDFs?',
          answer:
            'YAMLResume es en realidad un DSL para escribir currículums, por lo que internamente es un compilador para currículums. Transforma los datos YAML en PDFs en un proceso de varios pasos. Primero, analiza el archivo YAML y valida su estructura contra un esquema. Luego, procesa los datos con un proceso de generación de código que genera código LaTeX. Finalmente, este código LaTeX se compila en un PDF de calidad profesional usando un motor LaTeX. Este enfoque asegura una tipografía y diseño perfectos a nivel de píxel que son consistentes en todos los dispositivos y plataformas.',
        },
        whyLatex: {
          question: '¿Por qué usar LaTeX?',
          answer:
            'LaTeX es el estándar de oro para la composición de documentos profesionales, especialmente en campos académicos y técnicos. Proporciona tipografía superior con kerning, ligaduras e hiphenación adecuados que son difíciles de lograr con HTML/CSS o procesadores de texto. LaTeX sobresale en espaciado consistente, posicionamiento preciso y diseño flexible. Al usar LaTeX como motor de composición subyacente, YAMLResume asegura que tu currículum tenga una apariencia pulida y profesional que se destaque ante reclutadores y gerentes de contratación.',
        },
      },
    },
    buyMeACoffee: {
      title: '¿Te gusta este proyecto?',
      description:
        'YAMLResume es un proyecto de pasión, creado para ofrecer herramientas de currículum gratuitas, privadas y potentes para todos. Si te resulta útil, considera apoyar su desarrollo. ¡Cada café ayuda!',
      button: 'Cómprame un café',
    },
    blog: {
      title: 'Blog de YAMLResume',
    },
    footer: {
      copyright: '© 2023–Presente, ',
    },
  },
  fr: {
    navbar: {
      documentation: 'Documentation',
      blog: 'Blog',
      chat: 'Chat',
      discussions: 'Discussions',
      developer: 'Développeur',
      search: 'Rechercher',
      Playground: 'Playground',
    },
    hero: {
      tagline: 'Créé avec ❤️ par <ppresume>PPResume</ppresume>',
      title: 'CV en Code YAML',
      description:
        "YAMLResume permet aux gens de créer et de versionner leurs CV en utilisant YAML et de générer des PDF parfaits au pixel près avec une mise en page et une typographie professionnelles en un clin d'œil.",
      quickStart: 'Démarrage Rapide',
      checkGithub: 'Voir Github',
      Playground: 'Playground',
    },
    quickStart: {
      title: 'Démarrage Rapide en Une Seconde',
    },
    features: {
      sectionTitle: 'Puissant, Professionnel et Parfait',
      plainText: {
        title: 'Texte Brut en YAML',
        description:
          'Gérez votre CV comme du code en YAML — propre, lisible et parfaitement adapté au contrôle de version.',
      },
      richText: {
        title: 'Formatage de Texte Enrichi',
        description:
          'Utilisez du texte enrichi de style Markdown dans vos résumés pour faire ressortir vos points clés avec clarté.',
      },
      flexibleSection: {
        title: 'Flexibilité Infinie',
        description:
          'Structurez votre CV exactement comme vous le souhaitez avec des sections modulaires conçues pour un impact maximal.',
      },
      latexTypesetting: {
        title: 'Composition de Qualité Professionnelle',
        description:
          'Propulsé par LaTeX pour une typographie parfaite au pixel près, un espacement constant et une esthétique professionnelle.',
      },
      customizable: {
        title: 'Personnalisation Poussée',
        description:
          'Contrôle total sur les marges, les polices et les tailles pour créer un look qui vous est propre.',
      },
      multilingual: {
        title: "Visez l'International",
        description:
          'Prise en charge intégrée de plusieurs langues, facilitant les candidatures internationales.',
      },
      cli: {
        title: 'CLI pour Développeurs',
        description:
          "Une interface de ligne de commande puissante pour automatiser le flux de travail et l'intégration de votre CV.",
      },
      privacy: {
        title: "La Privacité d'Abord",
        description:
          'Tout est traité localement. Vos données personnelles restent sur votre machine, toujours.',
      },
      themes: {
        title: 'Thèmes Universels',
        description:
          'Un seul fichier source, des possibilités infinies avec des thèmes professionnels pour PDF, HTML et plus.',
      },
      schema: {
        title: 'Intelligence de Schéma',
        description:
          'Obtenez un retour instantané et évitez les erreurs grâce à la validation de schéma intégrée pendant que vous écrivez.',
      },
      outputs: {
        title: 'Support Multi-Format',
        description:
          'Générez votre CV dans plusieurs formats professionnels, y compris PDF, HTML réactif et Markdown propre.',
      },
      templates: {
        title: 'Modèles Professionnels',
        description:
          'Choisissez parmi une variété de modèles LaTeX éprouvés, conçus pour la clarté et un impact professionnel.',
      },
    },
    testimonials: {
      sectionTitle: 'Ce Que Disent Les Gens',
    },
    stats: {
      sectionTitle: 'Approuvé par les Développeurs',
    },
    comparison: {
      sectionTitle: 'Conçu pour la Perfection',
      conventional: 'RxResume',
      yamlresume: 'YAMLResume',
    },
    onboarding: {
      sectionTitle: 'Démarrez en Quelques Secondes',
      recommended: 'Recommandé',
      npx: {
        title: 'NPX (Recommandé)',
        description:
          'Créez un nouveau projet instantanément sans installations globales',
      },
      npm: {
        title: 'NPM Global',
        description: 'Installez comme outil CLI global pour un accès système',
      },
      brew: {
        title: 'Homebrew',
        description:
          'Installez sur macOS avec le gestionnaire de paquets Homebrew',
      },
      docker: {
        title: 'Docker',
        description:
          'Exécutez dans un conteneur isolé sans dépendances locales',
      },
      json2yamlresume: {
        title: 'json2yamlresume',
        description: 'Convertissez JSON Resume en YAMLResume sans effort',
      },
    },
    faq: {
      title: 'Questions Fréquemment Posées',
      questions: {
        whatIs: {
          question: "Qu'est-ce que YAMLResume ?",
          answer1:
            "YAMLResume est un outil qui vous permet de gérer votre CV comme du code en utilisant YAML. Il fournit une façon structurée de définir votre expérience professionnelle, vos compétences, votre éducation et d'autres sections de CV dans un document de texte brut simple et contrôlable par version. YAMLResume convertit ensuite ces données YAML en documents PDF magnifiquement composés qui sont prêts pour les candidatures d'emploi et de bourses.",
          answer2:
            "YAMLResume a commencé comme le moteur de composition central pour PPResume, un constructeur de CV parfait au pixel près basé sur LaTeX. Après mûre réflexion, nous avons décidé de l'open source afin que les gens puissent toujours avoir le droit de dire non au verrouillage fournisseur.",
        },
        whyYaml: {
          question: 'Pourquoi YAML plutôt que JSON ?',
          answer:
            "En bref, YAML a été choisi parce qu'il est plus lisible et rédigeable par l'homme que JSON. Malgré sa syntaxe plus propre, moins verbeuse et plus flexible, YAML prend également en charge les commentaires, vous permettant d'annoter votre CV avec des notes qui n'apparaîtront pas dans la sortie finale. La structure hiérarchique de YAML correspond naturellement aux sections et sous-sections, ce qui le rend parfait pour les données structurées comme les CV.",
        },
        howGeneratePdf: {
          question: 'Comment YAMLResume génère-t-il des PDF ?',
          answer:
            "YAMLResume est en fait un DSL pour écrire des CV, donc sous le capot, c'est un compilateur pour les CV. Il transforme les données YAML en PDF dans un processus en plusieurs étapes. D'abord, il analyse le fichier YAML et valide sa structure contre un schéma. Ensuite, il traite les données avec un processus de génération de code qui génère du code LaTeX. Enfin, ce code LaTeX est compilé en un PDF de qualité professionnelle en utilisant un moteur LaTeX. Cette approche garantit une typographie et une mise en page parfaites au pixel près qui sont cohérentes sur tous les appareils et plateformes.",
        },
        whyLatex: {
          question: 'Pourquoi utiliser LaTeX ?',
          answer:
            "LaTeX est l'étalon-or pour la composition de documents professionnels, en particulier dans les domaines académiques et techniques. Il fournit une typographie supérieure avec un crénage, des ligatures et une césure appropriés qui sont difficiles à réaliser avec HTML/CSS ou des traitements de texte. LaTeX excelle dans l'espacement cohérent, le positionnement précis et la mise en page flexible. En utilisant LaTeX comme moteur de composition sous-jacent, YAMLResume garantit que votre CV a un aspect poli et professionnel qui se démarque auprès des recruteurs et des responsables de l'embauche.",
        },
      },
    },
    buyMeACoffee: {
      title: 'Vous aimez ce projet ?',
      description:
        'YAMLResume est un projet de passion, conçu pour offrir à tous des outils de CV gratuits, privés et puissants. Si vous le trouvez utile, pensez à soutenir son développement. Chaque café compte !',
      button: 'M’offrir un café',
    },
    blog: {
      title: 'Blog YAMLResume',
    },
    footer: {
      copyright: '© 2023–Présent, ',
    },
  },
  'zh-cn': {
    navbar: {
      documentation: '文档',
      blog: '博客',
      chat: '聊天',
      discussions: '讨论',
      developer: '开发者',
      search: '搜索',
      Playground: '演练场',
    },
    hero: {
      tagline: '由 <ppresume>PPResume</ppresume> 精心制作 ❤',
      title: 'YAML 代码简历',
      description:
        'YAMLResume 让人们能够使用 YAML 创建和版本控制简历，并轻松生成具有专业布局和排版的像素级完美 PDF。',
      quickStart: '快速开始',
      checkGithub: '查看 Github',
      Playground: '演练场',
    },
    quickStart: {
      title: '一秒钟快速开始',
    },
    features: {
      sectionTitle: '强大、专业、完美',
      plainText: {
        title: 'YAML 纯文本',
        description:
          '像写代码一样用 YAML 管理简历——简洁、易读且完美适配版本控制。',
      },
      richText: {
        title: '富文本格式化',
        description: '在摘要中使用类 Markdown 的富文本，让核心优势清晰呈现。',
      },
      flexibleSection: {
        title: '无限灵活结构',
        description: '自由组合模块化章节，以前所未有的灵活性打造个性化简历。',
      },
      latexTypesetting: {
        title: '专业级排版引擎',
        description: '基于 LaTeX 实现像素级完美的排版与间距，尽显专业水准。',
      },
      customizable: {
        title: '深度个性定制',
        description: '完全掌握边距、字体与字号，打造独一无二的视觉呈现。',
      },
      multilingual: {
        title: '全球化多语言',
        description: '内置多语言支持，让国际化职位申请变得游刃有余。',
      },
      cli: {
        title: '开发者 CLI 工具',
        description: '强大的命令行工具，轻松实现简历工作流的自动化与集成。',
      },
      privacy: {
        title: '隐私第一原则',
        description: '所有处理均在本地完成。您的个人数据永远留在您的机器上。',
      },
      themes: {
        title: '通用主题矩阵',
        description: '一份源码，无限可能：支持 PDF、HTML 等多种专业主题导出。',
      },
      schema: {
        title: '智能 Schema 校验',
        description: '实时智能校验，在编写过程中即刻发现并纠正格式错误。',
      },
      outputs: {
        title: '多格式导出支持',
        description:
          '支持导出为多种专业格式，包括 PDF、响应式 HTML 以及简洁的 Markdown。',
      },
      templates: {
        title: '专业简历模板',
        description:
          '提供多款久经考验的 LaTeX 模板，兼顾信息呈现的清晰度与专业视觉效果。',
      },
    },
    testimonials: {
      sectionTitle: '用户评价',
    },
    stats: {
      sectionTitle: '开发者信赖',
    },
    comparison: {
      sectionTitle: '精雕细琢，力求完美',
      conventional: 'RxResume',
      yamlresume: 'YAMLResume',
    },
    onboarding: {
      sectionTitle: '几秒钟即可开始',
      recommended: '推荐',
      npx: {
        title: 'NPX（推荐）',
        description: '无需全局安装即可立即创建新项目',
      },
      npm: {
        title: 'NPM 全局安装',
        description: '作为全局 CLI 工具安装以便系统范围访问',
      },
      brew: {
        title: 'Homebrew',
        description: '在 macOS 上使用 Homebrew 包管理器安装',
      },
      docker: {
        title: 'Docker',
        description: '在隔离容器中运行，无需本地依赖',
      },
      json2yamlresume: {
        title: 'json2yamlresume',
        description: '无缝将 JSON Resume 转换为 YAMLResume 格式',
      },
    },
    faq: {
      title: '常见问题',
      questions: {
        whatIs: {
          question: '什么是 YAMLResume？',
          answer1:
            'YAMLResume 是一个允许您使用 YAML 将简历作为代码管理的工具。它提供了一种结构化的方式来定义您的工作经验、技能、教育和其他简历章节，采用简单且可版本控制的纯文本文档。YAMLResume 然后将这些 YAML 数据转换为排版精美的 PDF 文档，可用于求职和奖学金申请。',
          answer2:
            'YAMLResume 最初是 PPResume 的核心排版引擎，PPResume 是一个基于 LaTeX 的像素级完美简历构建器。经过仔细考虑，我们决定开源它，让人们始终有权对供应商锁定说不。',
        },
        whyYaml: {
          question: '为什么选择 YAML 而不是 JSON？',
          answer:
            '简而言之，选择 YAML 是因为它比 JSON 更具人类可读性和可写性。尽管语法更简洁、更少冗余且更灵活，YAML 还支持注释，允许您在简历中添加注释，这些注释不会出现在最终输出中。YAML 的层次结构自然映射到章节和子章节，使其非常适合像简历这样的结构化数据。',
        },
        howGeneratePdf: {
          question: 'YAMLResume 如何生成 PDF？',
          answer:
            'YAMLResume 实际上是用于编写简历的 DSL，因此在底层它是简历的编译器。它通过多步骤过程将 YAML 数据转换为 PDF。首先，它解析 YAML 文件并根据模式验证其结构。然后，它通过生成 LaTeX 代码的代码生成过程处理数据。最后，使用 LaTeX 引擎将此 LaTeX 代码编译为专业质量的 PDF。这种方法确保了在所有设备和平台上一致的像素级完美的排版和布局。',
        },
        whyLatex: {
          question: '为什么使用 LaTeX？',
          answer:
            'LaTeX 是专业文档排版的黄金标准，特别是在学术和技术领域。它提供卓越的排版，具有适当的字距调整、连字和断字功能，这些在 HTML/CSS 或文字处理器中很难实现。LaTeX 在一致的间距、精确定位和灵活布局方面表现出色。通过使用 LaTeX 作为底层排版引擎，YAMLResume 确保您的简历具有精致、专业的外观，在招聘人员和招聘经理中脱颖而出。',
        },
      },
    },
    buyMeACoffee: {
      title: '喜欢这个项目吗？',
      description:
        'YAMLResume 是一个热爱驱动的项目，致力于为所有人提供免费、私密且强大的简历工具。如果你觉得有用，欢迎支持它的持续开发。每一杯咖啡都很有帮助！',
      button: '请我喝杯咖啡',
    },
    blog: {
      title: 'YAMLResume 博客',
    },
    footer: {
      copyright: '© 2023 至今，',
    },
  },
  'zh-tw': {
    navbar: {
      documentation: '文檔',
      blog: '部落格',
      chat: '聊天',
      discussions: '討論',
      developer: '開發者',
      search: '搜尋',
      Playground: '演練場',
    },
    hero: {
      tagline: '由 <ppresume>PPResume</ppresume> 精心製作 ❤',
      title: 'YAML 程式碼履歷',
      description:
        'YAMLResume 讓人們能夠使用 YAML 建立和版本控制履歷，並輕鬆產生具有專業版面配置和排版的像素級完美 PDF。',
      quickStart: '快速開始',
      checkGithub: '查看 Github',
      Playground: '演練場',
    },
    quickStart: {
      title: '一秒鐘快速開始',
    },
    features: {
      sectionTitle: '強大、專業、完美',
      plainText: {
        title: 'YAML 純文字',
        description:
          '像寫程式一樣用 YAML 管理履歷——簡潔、易讀且完美適配版本控制。',
      },
      richText: {
        title: '富文字格式化',
        description: '在摘要中使用類 Markdown 的富文字，讓核心優勢清晰呈現。',
      },
      flexibleSection: {
        title: '無限靈活結構',
        description: '自由組合模組化章節，以前所未有的靈活性打造個性化履歷。',
      },
      latexTypesetting: {
        title: '專業級排版引擎',
        description: '基於 LaTeX 實現像素級完美的排版與間距，盡顯專業水準。',
      },
      customizable: {
        title: '深度個性定制',
        description: '完全掌握邊距、字體與字型大小，打造獨一無二的視覺呈現。',
      },
      multilingual: {
        title: '全球化多語言',
        description: '內建多語言支援，讓國際化職位申請變得遊刃有餘。',
      },
      cli: {
        title: '開發者 CLI 工具',
        description: '強大的命令列工具，輕鬆實現履歷工作流的自動化與整合。',
      },
      privacy: {
        title: '隱私第一原則',
        description: '所有處理均在本地完成。您的個人數據永遠留在您的機器上。',
      },
      themes: {
        title: '通用主題矩陣',
        description: '一份源碼，無限可能：支持 PDF、HTML 等多種專業主題匯出。',
      },
      schema: {
        title: '智慧 Schema 校驗',
        description: '即時智慧校驗，在編寫過程中即刻發現並糾正格式錯誤。',
      },
      outputs: {
        title: '多格式匯出支援',
        description:
          '支援匯出為多種專業格式，包括 PDF、響應式 HTML 以及簡潔的 Markdown。',
      },
      templates: {
        title: '專業履歷模板',
        description:
          '提供多款久經考驗的 LaTeX 模板，兼顧資訊呈現的清晰度與專業視覺效果。',
      },
    },
    testimonials: {
      sectionTitle: '用戶評價',
    },
    stats: {
      sectionTitle: '開發者信賴',
    },
    comparison: {
      sectionTitle: '精雕細琢，力求完美',
      conventional: 'RxResume',
      yamlresume: 'YAMLResume',
    },
    onboarding: {
      sectionTitle: '幾秒鐘即可開始',
      recommended: '推薦',
      npx: {
        title: 'NPX（推薦）',
        description: '無需全域安裝即可立即建立新專案',
      },
      npm: {
        title: 'NPM 全域安裝',
        description: '作為全域 CLI 工具安裝以便系統範圍存取',
      },
      brew: {
        title: 'Homebrew',
        description: '在 macOS 上使用 Homebrew 套件管理器安裝',
      },
      docker: {
        title: 'Docker',
        description: '在隔離容器中執行，無需本地依賴',
      },
      json2yamlresume: {
        title: 'json2yamlresume',
        description: '無縫將 JSON Resume 轉換為 YAMLResume 格式',
      },
    },
    faq: {
      title: '常見問題',
      questions: {
        whatIs: {
          question: '什麼是 YAMLResume？',
          answer1:
            'YAMLResume 是一個允許您使用 YAML 將履歷作為程式碼管理的工具。它提供了一種結構化的方式來定義您的工作經驗、技能、教育和其他履歷章節，採用簡單且可版本控制的純文字文件。YAMLResume 然後將這些 YAML 資料轉換為排版精美的 PDF 文件，可用於求職和獎學金申請。',
          answer2:
            'YAMLResume 最初是 PPResume 的核心排版引擎，PPResume 是一個基於 LaTeX 的像素級完美履歷建立器。經過仔細考慮，我們決定開源它，讓人們始終有權對廠商鎖定說不。',
        },
        whyYaml: {
          question: '為什麼選擇 YAML 而不是 JSON？',
          answer:
            '簡而言之，選擇 YAML 是因為它比 JSON 更具人類可讀性和可寫性。儘管語法更簡潔、更少冗餘且更靈活，YAML 還支援註解，允許您在履歷中新增註解，這些註解不會出現在最終輸出中。YAML 的層次結構自然對應到章節和子章節，使其非常適合像履歷這樣的結構化資料。',
        },
        howGeneratePdf: {
          question: 'YAMLResume 如何產生 PDF？',
          answer:
            'YAMLResume 實際上是用於編寫履歷的 DSL，因此在底層它是履歷的編譯器。它透過多步驟過程將 YAML 資料轉換為 PDF。首先，它解析 YAML 檔案並根據架構驗證其結構。然後，它透過產生 LaTeX 程式碼的程式碼產生過程處理資料。最後，使用 LaTeX 引擎將此 LaTeX 程式碼編譯為專業品質的 PDF。這種方法確保了在所有裝置和平台上一致的像素級完美的排版和版面配置。',
        },
        whyLatex: {
          question: '為什麼使用 LaTeX？',
          answer:
            'LaTeX 是專業文件排版的黃金標準，特別是在學術和技術領域。它提供卓越的排版，具有適當的字距調整、連字和斷字功能，這些在 HTML/CSS 或文字處理器中很難實現。LaTeX 在一致的間距、精確定位和靈活版面配置方面表現出色。透過使用 LaTeX 作為底層排版引擎，YAMLResume 確保您的履歷具有精緻、專業的外觀，在招募人員和招聘經理中脫穎而出。',
        },
      },
    },
    buyMeACoffee: {
      title: '喜歡這個專案嗎？',
      description:
        'YAMLResume 是一個熱情驅動的專案，致力於為所有人提供免費、私密且強大的履歷工具。如果你覺得有幫助，歡迎支持它的持續開發。每一杯咖啡都很重要！',
      button: '請我喝杯咖啡',
    },
    blog: {
      title: 'YAMLResume 部落格',
    },
    footer: {
      copyright: '© 2023 至今，',
    },
  },
  ja: {
    navbar: {
      documentation: 'ドキュメント',
      blog: 'ブログ',
      chat: 'チャット',
      discussions: 'ディスカッション',
      developer: '開発者',
      search: '検索',
      Playground: 'プレイグラウンド',
    },
    hero: {
      tagline: '<ppresume>PPResume</ppresume>が❤️でお届け',
      title: 'YAMLでコード化された履歴書',
      description:
        'YAMLResumeは、YAMLを使用して履歴書を作成・バージョン管理し、プロフェッショナルなレイアウトとタイポグラフィでピクセルパーフェクトなPDFを簡単に生成できます。',
      quickStart: 'クイックスタート',
      checkGithub: 'GitHubを確認',
      Playground: 'プレイグラウンド',
    },
    quickStart: {
      title: '1秒でクイックスタート',
    },
    features: {
      sectionTitle: 'パワフル、プロフェッショナル、パーフェクト',
      plainText: {
        title: 'YAMLプレーンテキスト',
        description:
          '履歴書をYAMLでコードとして管理。クリーンで読みやすく、バージョン管理に最適です。',
      },
      richText: {
        title: 'リッチテキスト対応',
        description:
          '要約部分でMarkdown形式のリッチテキストを使用し、強みを効果的にアピール。',
      },
      flexibleSection: {
        title: '無限の柔軟性',
        description:
          'モジュール化されたセクションを自由に組み合わせ、独自の構造を構築できます。',
      },
      latexTypesetting: {
        title: 'プロ仕様の組版エンジン',
        description:
          'LaTeXによるピクセルパーフェクトなタイポグラフィと間距で、圧倒的な品質を実現。',
      },
      customizable: {
        title: '高度なカスタマイズ',
        description:
          '余白、フォント、サイズを自在に調整し、自分だけのデザインを追求。',
      },
      multilingual: {
        title: '多言語グローバル対応',
        description: '標準で多言語に対応。海外への応募もスムーズに行えます。',
      },
      cli: {
        title: '開発者向けCLI',
        description:
          '強力なコマンドラインツールにより、作成ワークフローを自動化・統合。',
      },
      privacy: {
        title: 'プライバシー第一',
        description:
          'すべての処理はローカルで完結。あなたのデータは常に手元に保たれます。',
      },
      themes: {
        title: 'ユニバーサルテーマ',
        description:
          '1つのソースからPDFやHTMLなど、多彩なプロフェッショナルテーマを出力可能。',
      },
      schema: {
        title: 'スキーマインテリジェンス',
        description:
          'リアルタイムのバリデーションにより、記述エラーを即座に発見・修正。',
      },
      outputs: {
        title: 'マルチフォーマット対応',
        description:
          'PDF、レスポンシブHTML、クリーンなMarkdownなど、複数のプロフェッショナルな形式で履歴書を出力可能。',
      },
      templates: {
        title: 'プロフェッショナル・テンプレート',
        description:
          '情報の明快さとプロフェッショナルな印象を両立した、実績のある多彩なLaTeXテンプレートから選択可能。',
      },
    },
    testimonials: {
      sectionTitle: '利用者の声',
    },
    stats: {
      sectionTitle: '開発者に信頼されています',
    },
    comparison: {
      sectionTitle: '完璧を追求した作り',
      conventional: 'RxResume',
      yamlresume: 'YAMLResume',
    },
    onboarding: {
      sectionTitle: '数秒で始める',
      recommended: '推奨',
      npx: {
        title: 'NPX（推奨）',
        description: 'グローバルインストール不要で即座に新規プロジェクトを作成',
      },
      npm: {
        title: 'NPM グローバル',
        description:
          'システム全体でアクセス可能なグローバルCLIツールとしてインストール',
      },
      brew: {
        title: 'Homebrew',
        description:
          'macOSでHomebrewパッケージマネージャーを使用してインストール',
      },
      docker: {
        title: 'Docker',
        description: 'ローカル依存関係なしで隔離されたコンテナで実行',
      },
      json2yamlresume: {
        title: 'json2yamlresume',
        description: 'JSON ResumeをYAMLResume形式にシームレスに変換',
      },
    },
    faq: {
      title: 'よくある質問',
      questions: {
        whatIs: {
          question: 'YAMLResumeとは何ですか？',
          answer1:
            'YAMLResumeは、YAMLを使用して履歴書をコードとして管理できるツールです。仕事の経験、スキル、教育、その他の履歴書セクションを、シンプルでバージョン管理可能なプレーンテキスト文書で構造化された方法で定義できます。YAMLResumeは、このYAMLデータを美しくタイプセットされたPDF文書に変換し、求職や奨学金申請に使用できます。',
          answer2:
            'YAMLResumeは、LaTeXベースのピクセルパーフェクトな履歴書ビルダーであるPPResumeのコアタイプセッティングエンジンとして始まりました。慎重な検討の結果、人々が常にベンダーロックインにノーと言う権利を持てるように、オープンソース化することを決定しました。',
        },
        whyYaml: {
          question: 'なぜJSONではなくYAMLを選ぶのですか？',
          answer:
            '要するに、YAMLはJSONよりも人間が読みやすく書きやすいからです。よりクリーンで冗長性が少なく、より柔軟な構文に加えて、YAMLはコメントもサポートしており、最終出力に表示されないメモで履歴書に注釈を付けることができます。YAMLの階層構造は、セクションとサブセクションに自然にマッピングされ、履歴書のような構造化データに最適です。',
        },
        howGeneratePdf: {
          question: 'YAMLResumeはどのようにPDFを生成しますか？',
          answer:
            'YAMLResumeは実際には履歴書を書くためのDSLであり、内部では履歴書のコンパイラです。YAMLデータをPDFに変換するのは多段階のプロセスです。まず、YAMLファイルを解析し、スキーマに対して構造を検証します。次に、LaTeXコードを生成するコード生成プロセスでデータを処理します。最後に、LaTeXエンジンを使用してこのLaTeXコードをプロフェッショナル品質のPDFにコンパイルします。このアプローチにより、すべてのデバイスとプラットフォームで一貫したピクセルパーフェクトなタイポグラフィとレイアウトが保証されます。',
        },
        whyLatex: {
          question: 'なぜLaTeXを使用するのですか？',
          answer:
            'LaTeXは、特に学術・技術分野でプロフェッショナルな文書タイプセッティングのゴールドスタンダードです。優れたタイプセッティング、適切なカーニング、リガチャ、ハイフネーションを提供し、HTML/CSSやワードプロセッサでは実現困難です。LaTeXは一貫したスペーシング、精密な配置、柔軟なレイアウトで優れています。YAMLResumeはLaTeXを基盤タイプセッティングエンジンとして使用することで、採用担当者や人事マネージャーの目に留まる洗練されたプロフェッショナルな外観の履歴書を保証します。',
        },
      },
    },
    buyMeACoffee: {
      title: 'このプロジェクトが気に入りましたか？',
      description:
        'YAMLResumeは、誰でも無料かつプライベートに使える強力な履歴書ツールを提供するためのパッションプロジェクトです。役に立ったら開発支援をご検討ください。コーヒー一杯が力になります！',
      button: 'コーヒーをおごる',
    },
    blog: {
      title: 'YAMLResume ブログ',
    },

    footer: {
      copyright: '© 2023年〜現在、',
    },
  },
}

// Server-side translation helper
export function getTranslations(locale: string, namespace: string) {
  const t = (key: string) => {
    const keys = key.split('.')
    let value: unknown = translations[locale as keyof typeof translations]

    // Start with the namespace
    value = (value as Record<string, unknown>)?.[namespace]

    for (const k of keys) {
      value = (value as Record<string, unknown>)?.[k]
    }

    return (value as string) || key
  }

  t.rich = (
    key: string,
    tags: Record<string, (chunks: React.ReactNode) => React.ReactNode>
  ) => {
    const text = t(key)
    if (typeof text !== 'string') return text

    // Simple rich text parser for tags like <ppresume>content</ppresume>
    const parts = text.split(/(<[^>]+>.*?<\/[^>]+>)/g)

    return parts.map((part) => {
      const tagMatch = part.match(/<([^>]+)>(.*?)<\/[^>]+>/)

      if (tagMatch) {
        const [, tagName, content] = tagMatch
        const tagFn = tags[tagName]
        return tagFn ? tagFn(content) : part
      }

      return part
    })
  }

  return t
}
