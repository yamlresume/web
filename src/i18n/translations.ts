// Import useParams only for client components

const translations = {
  en: {
    navbar: {
      documentation: 'Documentation',
      blog: 'Blog',
      chat: 'Chat',
      discussions: 'Discussions',
      search: 'Search',
    },
    hero: {
      tagline: 'Brought to you with ❤️ by <ppresume>PPResume</ppresume>',
      title: 'Resumes as Code in YAML',
      description:
        'YAMLResume allows people to create and version control resumes using YAML and generate pixel perfect PDFs with professional layout and typesetting in a breeze.',
      quickStart: 'Quick Start',
      checkGithub: 'Check Github',
    },
    quickStart: {
      title: 'Quick Start in One Second',
    },
    features: {
      plainText: {
        title: 'Plain Text in YAML',
        description:
          'Create resumes in YAML, which is more human readable and writable than JSON, enabling version control and eliminating vendor lock-in.',
      },
      richText: {
        title: 'Rich Text in Summaries',
        description:
          'Express yourself freely with rich text formatting in summaries fields for all sections, allowing for more detailed and compelling personal statements.',
      },
      flexibleSection: {
        title: 'Flexible Section Structure',
        description:
          'Draft and polish your resume with various section types to highlight your unique skills, experiences, and achievements in the most effective way.',
      },
      latexTypesetting: {
        title: 'LaTeX Typesetting Engine',
        description:
          'Leverage the power of LaTeX for professional-grade typesetting quality that ensures your resume stands out with perfect spacing and typography.',
      },
      customizable: {
        title: 'Customizable Layout Options',
        description:
          'Fine-tune your resume with customizable page margins, font selections, and sizing options to create the perfect visual presentation.',
      },
      multilingual: {
        title: 'Multilingual Support',
        description:
          'Create and translate your resume into multiple languages with built-in internationalization and localization capabilities.',
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
    blog: {
      title: 'YAMLResume Blog',
    },
    footer: {
      copyright: '© 2023–Present, ',
    },
  },
  fr: {
    navbar: {
      documentation: 'Documentation',
      blog: 'Blog',
      chat: 'Chat',
      discussions: 'Discussions',
      search: 'Rechercher',
    },
    hero: {
      tagline: 'Créé avec ❤️ par <ppresume>PPResume</ppresume>',
      title: 'CV en Code YAML',
      description:
        "YAMLResume permet aux gens de créer et de versionner leurs CV en utilisant YAML et de générer des PDF parfaits au pixel près avec une mise en page et une typographie professionnelles en un clin d'œil.",
      quickStart: 'Démarrage Rapide',
      checkGithub: 'Voir Github',
    },
    quickStart: {
      title: 'Démarrage Rapide en Une Seconde',
    },
    features: {
      plainText: {
        title: 'Texte Brut en YAML',
        description:
          "Créez des CV en YAML, qui est plus lisible et rédigeable par l'homme que JSON, permettant le contrôle de version et éliminant le verrouillage fournisseur.",
      },
      richText: {
        title: 'Texte Enrichi dans les Résumés',
        description:
          'Exprimez-vous librement avec le formatage de texte enrichi dans les champs de résumé de toutes les sections, permettant des déclarations personnelles plus détaillées et convaincantes.',
      },
      flexibleSection: {
        title: 'Structure de Section Flexible',
        description:
          'Rédigez et peaufinez votre CV avec divers types de sections pour mettre en valeur vos compétences, expériences et réalisations uniques de la manière la plus efficace.',
      },
      latexTypesetting: {
        title: 'Moteur de Composition LaTeX',
        description:
          'Tirez parti de la puissance de LaTeX pour une qualité de composition de niveau professionnel qui garantit que votre CV se démarque avec un espacement et une typographie parfaits.',
      },
      customizable: {
        title: 'Options de Mise en Page Personnalisables',
        description:
          'Affinez votre CV avec des marges de page personnalisables, des sélections de polices et des options de taille pour créer la présentation visuelle parfaite.',
      },
      multilingual: {
        title: 'Support Multilingue',
        description:
          "Créez et traduisez votre CV en plusieurs langues avec des capacités d'internationalisation et de localisation intégrées.",
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
      search: '搜索',
    },
    hero: {
      tagline: '由 <ppresume>PPResume</ppresume> 精心制作 ❤',
      title: 'YAML 代码简历',
      description:
        'YAMLResume 让人们能够使用 YAML 创建和版本控制简历，并轻松生成具有专业布局和排版的像素级完美 PDF。',
      quickStart: '快速开始',
      checkGithub: '查看 Github',
    },
    quickStart: {
      title: '一秒钟快速开始',
    },
    features: {
      plainText: {
        title: 'YAML 纯文本',
        description:
          '使用 YAML 创建简历，比 JSON 更人性化可读和可写，支持版本控制并消除供应商锁定。',
      },
      richText: {
        title: '摘要中的富文本',
        description:
          '在所有章节的摘要字段中自由表达富文本格式，让个人陈述更详细和引人注目。',
      },
      flexibleSection: {
        title: '灵活的章节结构',
        description:
          '使用各种类型的章节来起草和完善您的简历，以最有效的方式突出您独特的技能、经验和成就。',
      },
      latexTypesetting: {
        title: 'LaTeX 排版引擎',
        description:
          '利用 LaTeX 的专业级排版质量，确保您的简历以完美的间距和排版脱颖而出。',
      },
      customizable: {
        title: '可定制的布局选项',
        description:
          '通过可定制的页面边距、字体选择和大小选项来微调您的简历，创造完美的视觉呈现。',
      },
      multilingual: {
        title: '多语言支持',
        description: '使用内置的国际化和本地化功能创建和翻译多种语言的简历。',
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
      search: '搜尋',
    },
    hero: {
      tagline: '由 <ppresume>PPResume</ppresume> 精心製作 ❤',
      title: 'YAML 程式碼履歷',
      description:
        'YAMLResume 讓人們能夠使用 YAML 建立和版本控制履歷，並輕鬆產生具有專業版面配置和排版的像素級完美 PDF。',
      quickStart: '快速開始',
      checkGithub: '查看 Github',
    },
    quickStart: {
      title: '一秒鐘快速開始',
    },
    features: {
      plainText: {
        title: 'YAML 純文字',
        description:
          '使用 YAML 建立履歷，比 JSON 更人性化可讀和可寫，支援版本控制並消除廠商鎖定。',
      },
      richText: {
        title: '摘要中的富文字',
        description:
          '在所有章節的摘要欄位中自由表達富文字格式，讓個人陳述更詳細和引人注目。',
      },
      flexibleSection: {
        title: '靈活的章節結構',
        description:
          '使用各種類型的章節來起草和完善您的履歷，以最有效的方式突出您獨特的技能、經驗和成就。',
      },
      latexTypesetting: {
        title: 'LaTeX 排版引擎',
        description:
          '利用 LaTeX 的專業級排版品質，確保您的履歷以完美的間距和排版脫穎而出。',
      },
      customizable: {
        title: '可自訂的版面配置選項',
        description:
          '透過可自訂的頁面邊距、字型選擇和大小選項來微調您的履歷，創造完美的視覺呈現。',
      },
      multilingual: {
        title: '多語言支援',
        description: '使用內建的國際化和本地化功能建立和翻譯多種語言的履歷。',
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
      search: '検索',
    },
    hero: {
      tagline: '<ppresume>PPResume</ppresume>が❤️でお届け',
      title: 'YAMLでコード化された履歴書',
      description:
        'YAMLResumeは、YAMLを使用して履歴書を作成・バージョン管理し、プロフェッショナルなレイアウトとタイポグラフィでピクセルパーフェクトなPDFを簡単に生成できます。',
      quickStart: 'クイックスタート',
      checkGithub: 'GitHubを確認',
    },
    quickStart: {
      title: '1秒でクイックスタート',
    },
    features: {
      plainText: {
        title: 'YAMLのプレーンテキスト',
        description:
          'JSONよりも人間が読みやすく書きやすいYAMLで履歴書を作成し、バージョン管理を可能にし、ベンダーロックインを排除します。',
      },
      richText: {
        title: '要約のリッチテキスト',
        description:
          'すべてのセクションの要約フィールドでリッチテキストフォーマットを自由に使用し、より詳細で説得力のある個人ステートメントを作成できます。',
      },
      flexibleSection: {
        title: '柔軟なセクション構造',
        description:
          '様々なセクションタイプで履歴書を下書き・磨き上げ、あなたのユニークなスキル、経験、成果を最も効果的な方法で強調できます。',
      },
      latexTypesetting: {
        title: 'LaTeXタイプセッティングエンジン',
        description:
          'LaTeXの力を活用してプロフェッショナルグレードのタイプセッティング品質を実現し、完璧なスペーシングとタイポグラフィで履歴書を際立たせます。',
      },
      customizable: {
        title: 'カスタマイズ可能なレイアウトオプション',
        description:
          'カスタマイズ可能なページマージン、フォント選択、サイズオプションで履歴書を微調整し、完璧な視覚的プレゼンテーションを作成できます。',
      },
      multilingual: {
        title: '多言語サポート',
        description:
          '複数の言語で履歴書を作成し、グローバルな機会に備えて多様な言語で自分のスキルを表現できます。',
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
    blog: {
      title: 'YAMLResumeブログ',
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
