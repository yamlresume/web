import type { Language } from './config'

interface HomeGalleryMessages {
  title: string
  description: string
  browseAll: string
  previewAlt: string
}

const homeGalleryMessages: Record<Language, HomeGalleryMessages> = {
  en: {
    title: 'Resume examples built with YAMLResume',
    description:
      'Explore professional resumes across roles, languages, templates, and output formats.',
    browseAll: 'Explore all resumes',
    previewAlt: '{title} resume preview',
  },
  es: {
    title: 'Ejemplos de currículum creados con YAMLResume',
    description:
      'Explora currículums profesionales para distintos puestos, idiomas, plantillas y formatos.',
    browseAll: 'Explorar todos los currículums',
    previewAlt: 'Vista previa del currículum {title}',
  },
  fr: {
    title: 'Exemples de CV créés avec YAMLResume',
    description:
      'Découvrez des CV professionnels pour différents postes, langues, modèles et formats.',
    browseAll: 'Explorer tous les CV',
    previewAlt: 'Aperçu du CV {title}',
  },
  pt: {
    title: 'Exemplos de currículos criados com YAMLResume',
    description:
      'Explore currículos profissionais para diferentes cargos, idiomas, modelos e formatos.',
    browseAll: 'Explorar todos os currículos',
    previewAlt: 'Pré-visualização do currículo {title}',
  },
  ja: {
    title: 'YAMLResume で作成した履歴書の例',
    description:
      '職種、言語、テンプレート、出力形式ごとにプロフェッショナルな履歴書を探せます。',
    browseAll: 'すべての履歴書を見る',
    previewAlt: '{title}の履歴書プレビュー',
  },
  'zh-cn': {
    title: '使用 YAMLResume 创建的简历示例',
    description: '探索不同职位、语言、模板和输出格式的专业简历。',
    browseAll: '浏览所有简历',
    previewAlt: '{title}简历预览',
  },
  'zh-tw': {
    title: '使用 YAMLResume 建立的履歷範例',
    description: '探索不同職位、語言、範本和輸出格式的專業履歷。',
    browseAll: '瀏覽所有履歷',
    previewAlt: '{title}履歷預覽',
  },
  id: {
    title: 'Contoh resume yang dibuat dengan YAMLResume',
    description:
      'Jelajahi resume profesional untuk berbagai posisi, bahasa, templat, dan format keluaran.',
    browseAll: 'Jelajahi semua resume',
    previewAlt: 'Pratinjau resume {title}',
  },
}

export function getHomeGalleryMessages(
  language: Language
): HomeGalleryMessages {
  return homeGalleryMessages[language] ?? homeGalleryMessages.en
}
