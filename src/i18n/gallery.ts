import type { Language } from './config'

export type GalleryCategory = 'gallery' | 'templates' | 'languages' | 'examples'

interface GalleryCategoryCopy {
  title: string
  description: string
}

export interface GalleryMessages {
  hero: {
    title: string
    description: string
    templates: string
    languages: string
    examples: string
  }
  categories: Record<Exclude<GalleryCategory, 'gallery'>, GalleryCategoryCopy>
  metadata: Record<GalleryCategory, GalleryCategoryCopy>
  browseAll: string
}

const messages: Record<Language, GalleryMessages> = {
  en: {
    hero: {
      title: 'Pick a template. Choose a language. Land the role.',
      description:
        'Explore resume templates for any position, rendered in 12 languages and 4 output engines—all from a single YAML source.',
      templates: 'Professional templates across LaTeX, HTML, DOCX & Markdown',
      languages: 'Languages with full locale, typesetting & idiom support',
      examples: 'Realistic resume examples with ready-to-use content',
    },
    categories: {
      templates: {
        title: 'Templates',
        description: 'Battle-tested templates for every output engine.',
      },
      languages: {
        title: 'Languages',
        description: 'Resume examples localized for 12+ locales.',
      },
      examples: {
        title: 'Examples',
        description: 'Realistic resume examples for roles and career goals.',
      },
    },
    metadata: {
      gallery: {
        title: 'Resume Gallery',
        description:
          'Browse realistic resume examples, professional templates, and localized resumes generated with YAMLResume.',
      },
      templates: {
        title: 'Professional Resume Templates',
        description:
          'Browse professional resume templates for LaTeX, HTML, DOCX, and Markdown.',
      },
      languages: {
        title: 'Resume Examples by Language',
        description:
          'Browse localized resume examples with language-aware typography and content.',
      },
      examples: {
        title: 'Examples',
        description:
          'Browse realistic resume examples by category, skill, and language.',
      },
    },
    browseAll: 'Browse all',
  },
  es: {
    hero: {
      title: 'Elige una plantilla, un idioma y consigue el puesto.',
      description:
        'Explora currículums para cualquier puesto en 12 idiomas y 4 formatos, todos desde un único archivo YAML.',
      templates: 'Plantillas profesionales en LaTeX, HTML, DOCX y Markdown',
      languages: 'Idiomas con tipografía, expresiones y formatos locales',
      examples: 'Ejemplos de currículum realistas y listos para usar',
    },
    categories: {
      templates: {
        title: 'Plantillas',
        description: 'Plantillas probadas para cada formato.',
      },
      languages: {
        title: 'Idiomas',
        description: 'Currículums adaptados a más de 12 regiones.',
      },
      examples: {
        title: 'Ejemplos',
        description: 'Ejemplos realistas para distintos puestos y objetivos.',
      },
    },
    metadata: {
      gallery: {
        title: 'Galería de currículums',
        description:
          'Explora ejemplos, plantillas profesionales y currículums localizados creados con YAMLResume.',
      },
      templates: {
        title: 'Plantillas de currículum profesionales',
        description:
          'Explora plantillas profesionales para LaTeX, HTML, DOCX y Markdown.',
      },
      languages: {
        title: 'Currículums por idioma',
        description:
          'Explora currículums localizados con tipografía y contenido adaptados.',
      },
      examples: {
        title: 'Ejemplos',
        description: 'Explora ejemplos por categoría, habilidad e idioma.',
      },
    },
    browseAll: 'Ver todos',
  },
  fr: {
    hero: {
      title: 'Choisissez un modèle, une langue et décrochez le poste.',
      description:
        'Explorez des CV pour chaque poste, disponibles en 12 langues et 4 formats à partir d’une seule source YAML.',
      templates: 'Modèles professionnels en LaTeX, HTML, DOCX et Markdown',
      languages: 'Langues avec typographie et expressions adaptées',
      examples: 'Exemples de CV réalistes et prêts à l’emploi',
    },
    categories: {
      templates: {
        title: 'Modèles',
        description: 'Des modèles éprouvés pour chaque format.',
      },
      languages: {
        title: 'Langues',
        description: 'Des CV adaptés à plus de 12 régions.',
      },
      examples: {
        title: 'Exemples',
        description:
          'Des exemples réalistes pour différents postes et objectifs.',
      },
    },
    metadata: {
      gallery: {
        title: 'Galerie de CV',
        description:
          'Explorez des exemples, des modèles professionnels et des CV localisés créés avec YAMLResume.',
      },
      templates: {
        title: 'Modèles de CV professionnels',
        description:
          'Explorez des modèles professionnels pour LaTeX, HTML, DOCX et Markdown.',
      },
      languages: {
        title: 'Exemples de CV par langue',
        description:
          'Explorez des CV localisés avec une typographie et un contenu adaptés.',
      },
      examples: {
        title: 'Exemples',
        description:
          'Explorez des exemples par catégorie, compétence et langue.',
      },
    },
    browseAll: 'Tout afficher',
  },
  pt: {
    hero: {
      title: 'Escolha um modelo, um idioma e conquiste a vaga.',
      description:
        'Explore currículos para qualquer cargo em 12 idiomas e 4 formatos, todos a partir de uma única fonte YAML.',
      templates: 'Modelos profissionais em LaTeX, HTML, DOCX e Markdown',
      languages: 'Idiomas com tipografia, expressões e formatos locais',
      examples: 'Exemplos de currículo realistas e prontos para usar',
    },
    categories: {
      templates: {
        title: 'Modelos',
        description: 'Modelos testados para cada formato.',
      },
      languages: {
        title: 'Idiomas',
        description: 'Currículos adaptados para mais de 12 regiões.',
      },
      examples: {
        title: 'Exemplos',
        description: 'Exemplos realistas para diferentes cargos e objetivos.',
      },
    },
    metadata: {
      gallery: {
        title: 'Galeria de currículos',
        description:
          'Explore exemplos, modelos profissionais e currículos localizados criados com YAMLResume.',
      },
      templates: {
        title: 'Modelos de currículo profissionais',
        description:
          'Explore modelos profissionais para LaTeX, HTML, DOCX e Markdown.',
      },
      languages: {
        title: 'Currículos por idioma',
        description:
          'Explore currículos localizados com tipografia e conteúdo adaptados.',
      },
      examples: {
        title: 'Exemplos',
        description: 'Explore exemplos por categoria, competência e idioma.',
      },
    },
    browseAll: 'Ver todos',
  },
  ja: {
    hero: {
      title: 'テンプレートと言語を選び、理想の仕事へ。',
      description:
        '1つのYAMLソースから、12言語・4形式で生成された職種別の履歴書を探せます。',
      templates: 'LaTeX、HTML、DOCX、Markdown対応のテンプレート',
      languages: '地域ごとの組版と表現に対応した言語',
      examples: 'すぐに使える実践的な履歴書例',
    },
    categories: {
      templates: {
        title: 'テンプレート',
        description: '各出力形式で実績のあるテンプレート。',
      },
      languages: {
        title: '言語',
        description: '12以上の地域向けに最適化された履歴書。',
      },
      examples: {
        title: '例',
        description: '職種や目的に合わせた実践的な履歴書例。',
      },
    },
    metadata: {
      gallery: {
        title: '履歴書ギャラリー',
        description:
          'YAMLResumeで作成した履歴書例、プロ向けテンプレート、多言語版を探せます。',
      },
      templates: {
        title: 'プロ向け履歴書テンプレート',
        description:
          'LaTeX、HTML、DOCX、Markdown対応の履歴書テンプレートを探せます。',
      },
      languages: {
        title: '言語別の履歴書例',
        description: '言語ごとの組版と内容に最適化された履歴書例を探せます。',
      },
      examples: {
        title: '例',
        description: 'カテゴリー、スキル、言語から履歴書例を探せます。',
      },
    },
    browseAll: 'すべて見る',
  },
  'zh-cn': {
    hero: {
      title: '选择模板和语言，拿下心仪职位。',
      description:
        '探索适用于不同职位的简历：一个 YAML 源文件即可生成 12 种语言和 4 种格式。',
      templates: '覆盖 LaTeX、HTML、DOCX 和 Markdown 的专业模板',
      languages: '完整支持本地排版与表达习惯的语言',
      examples: '真实实用、开箱即用的简历示例',
    },
    categories: {
      templates: {
        title: '模板',
        description: '适用于各种输出格式的成熟模板。',
      },
      languages: {
        title: '语言',
        description: '针对 12 种以上地区语言本地化的简历。',
      },
      examples: {
        title: '示例',
        description: '适用于不同职位和职业目标的真实简历示例。',
      },
    },
    metadata: {
      gallery: {
        title: '简历作品集',
        description:
          '浏览由 YAMLResume 生成的真实简历示例、专业模板和本地化简历。',
      },
      templates: {
        title: '专业简历模板',
        description:
          '浏览适用于 LaTeX、HTML、DOCX 和 Markdown 的专业简历模板。',
      },
      languages: {
        title: '多语言简历示例',
        description: '浏览在排版和内容上经过本地化的多语言简历示例。',
      },
      examples: {
        title: '示例',
        description: '按类别、技能和语言浏览简历示例。',
      },
    },
    browseAll: '查看全部',
  },
  'zh-tw': {
    hero: {
      title: '選擇範本和語言，拿下理想職位。',
      description:
        '探索適用於不同職位的履歷：一個 YAML 來源即可產生 12 種語言和 4 種格式。',
      templates: '涵蓋 LaTeX、HTML、DOCX 和 Markdown 的專業範本',
      languages: '完整支援在地排版與表達習慣的語言',
      examples: '真實實用、可直接使用的履歷範例',
    },
    categories: {
      templates: {
        title: '範本',
        description: '適用於各種輸出格式的成熟範本。',
      },
      languages: {
        title: '語言',
        description: '針對 12 種以上地區語言在地化的履歷。',
      },
      examples: {
        title: '範例',
        description: '適用於不同職位和職涯目標的真實履歷範例。',
      },
    },
    metadata: {
      gallery: {
        title: '履歷作品集',
        description:
          '瀏覽由 YAMLResume 產生的真實履歷範例、專業範本和在地化履歷。',
      },
      templates: {
        title: '專業履歷範本',
        description:
          '瀏覽適用於 LaTeX、HTML、DOCX 和 Markdown 的專業履歷範本。',
      },
      languages: {
        title: '多語言履歷範例',
        description: '瀏覽在排版和內容上經過在地化的多語言履歷範例。',
      },
      examples: {
        title: '範例',
        description: '依類別、技能和語言瀏覽履歷範例。',
      },
    },
    browseAll: '查看全部',
  },
  id: {
    hero: {
      title: 'Pilih templat dan bahasa, lalu raih pekerjaan impian.',
      description:
        'Jelajahi resume untuk berbagai posisi dalam 12 bahasa dan 4 format dari satu sumber YAML.',
      templates: 'Templat profesional untuk LaTeX, HTML, DOCX, dan Markdown',
      languages: 'Bahasa dengan tipografi dan ungkapan lokal',
      examples: 'Contoh resume realistis dengan konten siap pakai',
    },
    categories: {
      templates: {
        title: 'Templat',
        description: 'Templat teruji untuk setiap format keluaran.',
      },
      languages: {
        title: 'Bahasa',
        description: 'Resume yang dilokalkan untuk lebih dari 12 wilayah.',
      },
      examples: {
        title: 'Contoh',
        description:
          'Contoh realistis untuk berbagai posisi dan tujuan karier.',
      },
    },
    metadata: {
      gallery: {
        title: 'Galeri resume',
        description:
          'Jelajahi contoh resume, templat profesional, dan resume lokal dari YAMLResume.',
      },
      templates: {
        title: 'Templat resume profesional',
        description:
          'Jelajahi templat profesional untuk LaTeX, HTML, DOCX, dan Markdown.',
      },
      languages: {
        title: 'Contoh resume berdasarkan bahasa',
        description:
          'Jelajahi resume lokal dengan tipografi dan konten yang sesuai.',
      },
      examples: {
        title: 'Contoh',
        description:
          'Jelajahi contoh berdasarkan kategori, keahlian, dan bahasa.',
      },
    },
    browseAll: 'Lihat semua',
  },
}

export function getGalleryMessages(language: Language): GalleryMessages {
  return messages[language] ?? messages.en
}
