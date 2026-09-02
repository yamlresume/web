import type { Language } from './config'

export interface GalleryDetailMessages {
  breadcrumb: {
    label: string
    gallery: string
    templates: string
    languages: string
    examples: string
  }
  regionLabel: string
  previewTab: string
  sourceTab: string
  previewAlt: string
  templateInfo: string
  downloadAs: string
  fields: {
    engine: string
    template: string
    style: string
    language: string
    position: string
  }
  formats: {
    pdf: string
    tex: string
    docx: string
    html: string
    markdown: string
    webp: string
  }
  actions: {
    openInPlayground: string
    downloadYaml: string
    copy: string
    copied: string
    openInNewTab: string
    fullscreen: string
    exitFullscreen: string
  }
  renderedFor: string
  initializeExample: {
    title: string
    description: string
    installationLink: string
  }
  otherLanguages: {
    title: string
    description: string
  }
}

const galleryDetailMessages: Record<Language, GalleryDetailMessages> = {
  en: {
    breadcrumb: {
      label: 'Breadcrumb',
      gallery: 'Gallery',
      templates: 'Templates',
      languages: 'Languages',
      examples: 'Examples',
    },
    regionLabel: 'Resume preview and downloads',
    previewTab: 'Preview',
    sourceTab: 'Source',
    previewAlt: '{title} resume preview',
    templateInfo: 'Details',
    downloadAs: 'Download',
    fields: {
      engine: 'Engine',
      template: 'Template',
      style: 'Style',
      language: 'Language',
      position: 'Position',
    },
    formats: {
      pdf: 'PDF',
      tex: 'TeX',
      docx: 'DOCX',
      html: 'HTML',
      markdown: 'Markdown',
      webp: 'WebP',
    },
    actions: {
      openInPlayground: 'Open in Playground',
      downloadYaml: 'Download YAML',
      copy: 'Copy',
      copied: 'Copied',
      openInNewTab: 'Open preview in new tab',
      fullscreen: 'View fullscreen',
      exitFullscreen: 'Exit fullscreen',
    },
    renderedFor: 'Rendered for {position} in {language}.',
    initializeExample: {
      title: 'Use this example',
      description:
        'Create a local editable resume from this example with the YAMLResume CLI.',
      installationLink: 'Need the CLI? Installation guide →',
    },
    otherLanguages: {
      title: 'Available in other languages',
      description: 'View this resume example localized for other markets.',
    },
  },
  es: {
    breadcrumb: {
      label: 'Ruta de navegación',
      gallery: 'Galería',
      templates: 'Plantillas',
      languages: 'Idiomas',
      examples: 'Ejemplos',
    },
    regionLabel: 'Vista previa y descargas del currículum',
    previewTab: 'Vista previa',
    sourceTab: 'Código fuente',
    previewAlt: 'Vista previa del currículum {title}',
    templateInfo: 'Detalles',
    downloadAs: 'Descargar',
    fields: {
      engine: 'Motor',
      template: 'Plantilla',
      style: 'Estilo',
      language: 'Idioma',
      position: 'Puesto',
    },
    formats: {
      pdf: 'PDF',
      tex: 'TeX',
      docx: 'DOCX',
      html: 'HTML',
      markdown: 'Markdown',
      webp: 'WebP',
    },
    actions: {
      openInPlayground: 'Abrir en Playground',
      downloadYaml: 'Descargar YAML',
      copy: 'Copiar',
      copied: 'Copiado',
      openInNewTab: 'Abrir vista previa en otra pestaña',
      fullscreen: 'Ver a pantalla completa',
      exitFullscreen: 'Salir de pantalla completa',
    },
    renderedFor: 'Generado para {position} en {language}.',
    initializeExample: {
      title: 'Usar este ejemplo',
      description:
        'Crea un currículum local y editable desde este ejemplo con la CLI de YAMLResume.',
      installationLink: '¿Necesitas la CLI? Guía de instalación →',
    },
    otherLanguages: {
      title: 'Disponible en otros idiomas',
      description: 'Consulta este currículum adaptado a otros mercados.',
    },
  },
  fr: {
    breadcrumb: {
      label: 'Fil d’Ariane',
      gallery: 'Galerie',
      templates: 'Modèles',
      languages: 'Langues',
      examples: 'Exemples',
    },
    regionLabel: 'Aperçu et téléchargements du CV',
    previewTab: 'Aperçu',
    sourceTab: 'Code source',
    previewAlt: 'Aperçu du CV {title}',
    templateInfo: 'Détails',
    downloadAs: 'Télécharger',
    fields: {
      engine: 'Moteur',
      template: 'Modèle',
      style: 'Style',
      language: 'Langue',
      position: 'Poste',
    },
    formats: {
      pdf: 'PDF',
      tex: 'TeX',
      docx: 'DOCX',
      html: 'HTML',
      markdown: 'Markdown',
      webp: 'WebP',
    },
    actions: {
      openInPlayground: 'Ouvrir dans Playground',
      downloadYaml: 'Télécharger le YAML',
      copy: 'Copier',
      copied: 'Copié',
      openInNewTab: 'Ouvrir l’aperçu dans un nouvel onglet',
      fullscreen: 'Afficher en plein écran',
      exitFullscreen: 'Quitter le plein écran',
    },
    renderedFor: 'Généré pour {position} en {language}.',
    initializeExample: {
      title: 'Utiliser cet exemple',
      description:
        'Créez un CV local et modifiable depuis cet exemple avec la CLI YAMLResume.',
      installationLink: 'Besoin de la CLI ? Guide d’installation →',
    },
    otherLanguages: {
      title: 'Disponible dans d’autres langues',
      description: 'Consultez ce CV adapté à d’autres marchés.',
    },
  },
  pt: {
    breadcrumb: {
      label: 'Navegação estrutural',
      gallery: 'Galeria',
      templates: 'Modelos',
      languages: 'Idiomas',
      examples: 'Exemplos',
    },
    regionLabel: 'Pré-visualização e downloads do currículo',
    previewTab: 'Pré-visualização',
    sourceTab: 'Código-fonte',
    previewAlt: 'Pré-visualização do currículo {title}',
    templateInfo: 'Detalhes',
    downloadAs: 'Transferir',
    fields: {
      engine: 'Motor',
      template: 'Modelo',
      style: 'Estilo',
      language: 'Idioma',
      position: 'Cargo',
    },
    formats: {
      pdf: 'PDF',
      tex: 'TeX',
      docx: 'DOCX',
      html: 'HTML',
      markdown: 'Markdown',
      webp: 'WebP',
    },
    actions: {
      openInPlayground: 'Abrir no Playground',
      downloadYaml: 'Transferir YAML',
      copy: 'Copiar',
      copied: 'Copiado',
      openInNewTab: 'Abrir pré-visualização num novo separador',
      fullscreen: 'Ver em ecrã inteiro',
      exitFullscreen: 'Sair do ecrã inteiro',
    },
    renderedFor: 'Gerado para {position} em {language}.',
    initializeExample: {
      title: 'Usar este exemplo',
      description:
        'Crie um currículo local e editável a partir deste exemplo com a CLI do YAMLResume.',
      installationLink: 'Precisa da CLI? Guia de instalação →',
    },
    otherLanguages: {
      title: 'Disponível noutros idiomas',
      description: 'Veja este currículo adaptado a outros mercados.',
    },
  },
  ja: {
    breadcrumb: {
      label: 'パンくずリスト',
      gallery: 'ギャラリー',
      templates: 'テンプレート',
      languages: '言語',
      examples: '例',
    },
    regionLabel: '履歴書のプレビューとダウンロード',
    previewTab: 'プレビュー',
    sourceTab: 'ソース',
    previewAlt: '{title} 履歴書のプレビュー',
    templateInfo: '詳細',
    downloadAs: 'ダウンロード',
    fields: {
      engine: 'エンジン',
      template: 'テンプレート',
      style: 'スタイル',
      language: '言語',
      position: '職種',
    },
    formats: {
      pdf: 'PDF',
      tex: 'TeX',
      docx: 'DOCX',
      html: 'HTML',
      markdown: 'Markdown',
      webp: 'WebP',
    },
    actions: {
      openInPlayground: 'Playground で開く',
      downloadYaml: 'YAML をダウンロード',
      copy: 'コピー',
      copied: 'コピーしました',
      openInNewTab: 'プレビューを新しいタブで開く',
      fullscreen: '全画面で表示',
      exitFullscreen: '全画面表示を終了',
    },
    renderedFor: '{position}（{language}）向けに生成。',
    initializeExample: {
      title: 'この例を使う',
      description:
        'YAMLResume CLIで、この例からローカルで編集可能な履歴書を作成します。',
      installationLink: 'CLIが必要ですか？ インストールガイド →',
    },
    otherLanguages: {
      title: '他の言語でも利用できます',
      description: '他の市場向けにローカライズされた履歴書を表示します。',
    },
  },
  'zh-cn': {
    breadcrumb: {
      label: '面包屑导航',
      gallery: '作品集',
      templates: '模板',
      languages: '语言',
      examples: '示例',
    },
    regionLabel: '简历预览与下载',
    previewTab: '预览',
    sourceTab: '源代码',
    previewAlt: '{title} 简历预览',
    templateInfo: '详情',
    downloadAs: '下载',
    fields: {
      engine: '引擎',
      template: '模板',
      style: '风格',
      language: '语言',
      position: '职位',
    },
    formats: {
      pdf: 'PDF',
      tex: 'TeX',
      docx: 'DOCX',
      html: 'HTML',
      markdown: 'Markdown',
      webp: 'WebP',
    },
    actions: {
      openInPlayground: '在演练场中打开',
      downloadYaml: '下载 YAML',
      copy: '复制',
      copied: '已复制',
      openInNewTab: '在新标签页中打开预览',
      fullscreen: '全屏查看',
      exitFullscreen: '退出全屏',
    },
    renderedFor: '为 {language} 的 {position} 生成。',
    initializeExample: {
      title: '使用此示例',
      description: '使用 YAMLResume CLI 从此示例创建可在本地编辑的简历。',
      installationLink: '需要 CLI？查看安装指南 →',
    },
    otherLanguages: {
      title: '其他语言版本',
      description: '查看针对其他市场本地化的职位简历。',
    },
  },
  'zh-tw': {
    breadcrumb: {
      label: '麵包屑導覽',
      gallery: '作品集',
      templates: '範本',
      languages: '語言',
      examples: '範例',
    },
    regionLabel: '履歷預覽與下載',
    previewTab: '預覽',
    sourceTab: '原始碼',
    previewAlt: '{title} 履歷預覽',
    templateInfo: '詳細資料',
    downloadAs: '下載',
    fields: {
      engine: '引擎',
      template: '範本',
      style: '風格',
      language: '語言',
      position: '職位',
    },
    formats: {
      pdf: 'PDF',
      tex: 'TeX',
      docx: 'DOCX',
      html: 'HTML',
      markdown: 'Markdown',
      webp: 'WebP',
    },
    actions: {
      openInPlayground: '在演練場中開啟',
      downloadYaml: '下載 YAML',
      copy: '複製',
      copied: '已複製',
      openInNewTab: '在新分頁中開啟預覽',
      fullscreen: '全螢幕檢視',
      exitFullscreen: '離開全螢幕',
    },
    renderedFor: '為 {language} 的 {position} 產生。',
    initializeExample: {
      title: '使用此範例',
      description: '使用 YAMLResume CLI 從此範例建立可在本機編輯的履歷。',
      installationLink: '需要 CLI？查看安裝指南 →',
    },
    otherLanguages: {
      title: '其他語言版本',
      description: '查看針對其他市場在地化的職位履歷。',
    },
  },
  id: {
    breadcrumb: {
      label: 'Navigasi breadcrumb',
      gallery: 'Galeri',
      templates: 'Templat',
      languages: 'Bahasa',
      examples: 'Contoh',
    },
    regionLabel: 'Pratinjau dan unduhan resume',
    previewTab: 'Pratinjau',
    sourceTab: 'Kode sumber',
    previewAlt: 'Pratinjau resume {title}',
    templateInfo: 'Detail',
    downloadAs: 'Unduh',
    fields: {
      engine: 'Mesin',
      template: 'Templat',
      style: 'Gaya',
      language: 'Bahasa',
      position: 'Posisi',
    },
    formats: {
      pdf: 'PDF',
      tex: 'TeX',
      docx: 'DOCX',
      html: 'HTML',
      markdown: 'Markdown',
      webp: 'WebP',
    },
    actions: {
      openInPlayground: 'Buka di Playground',
      downloadYaml: 'Unduh YAML',
      copy: 'Salin',
      copied: 'Tersalin',
      openInNewTab: 'Buka pratinjau di tab baru',
      fullscreen: 'Lihat layar penuh',
      exitFullscreen: 'Keluar dari layar penuh',
    },
    renderedFor: 'Dibuat untuk {position} dalam {language}.',
    initializeExample: {
      title: 'Gunakan contoh ini',
      description:
        'Buat resume lokal yang dapat diedit dari contoh ini dengan CLI YAMLResume.',
      installationLink: 'Perlu CLI? Panduan instalasi →',
    },
    otherLanguages: {
      title: 'Tersedia dalam bahasa lain',
      description: 'Lihat resume posisi ini yang dilokalkan untuk pasar lain.',
    },
  },
}

export function getGalleryDetailMessages(
  language: Language
): GalleryDetailMessages {
  return galleryDetailMessages[language] ?? galleryDetailMessages.en
}
