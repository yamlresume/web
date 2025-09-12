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
