import type { StaticImageData } from 'next/image'
import deepanshkhurana from './avatars/deepanshkhurana.png'
import diqitalb from './avatars/diqitalb.webp'
import dthelcydragon from './avatars/dthelcydragon.webp'
import firozkhxn_ from './avatars/firozkhxn_.jpg'
import jjoojjoojj from './avatars/jjoojjoojj.webp'
import kostiantyn from './avatars/kostiantyn.jpg'
import monoteapot from './avatars/monoteapot.jpeg'
import mozumasu from './avatars/mozumasu.jpg'
import mrhaxx1 from './avatars/mrhaxx1.webp'
import realpmNet from './avatars/realpm_net.webp'
import researchtldr from './avatars/researchtldr.webp'
import stephenLiberty from './avatars/stephen-liberty.jpg'
import thekoolzo555 from './avatars/thekoolzo555.webp'
import yug1224 from './avatars/yug1224.jpg'

export interface Testimonial {
  content: string
  author: string
  url: string
  avatar: StaticImageData
}

export const TESTIMONIALS: Testimonial[] = [
  {
    content:
      "I landed a great job offer from a resume built with this. I highly recommend it. It's worth the effort to build your resume with this.",
    author: 'u/TheKoolzo555',
    url: 'https://www.reddit.com/r/selfhosted/comments/1pts4rd/comment/nvkpmx6/',
    avatar: thekoolzo555,
  },
  {
    content:
      "One of those projects that I know I will use soon and use intermittently for a long time. Well done! Also, I have an idea for my portfolio website and this gets me halfway there without doing most of the work. I'll add credits to you, of course, whenever I get to finishing it.",
    author: 'u/DeepanshKhurana',
    url: 'https://www.reddit.com/r/selfhosted/comments/1pts4rd/comment/nvo8ig8/',
    avatar: deepanshkhurana,
  },
  {
    content:
      "Hopefully it'll be a long while before I need this, but saving it for when the time comes. Looks great! ",
    author: 'u/MrHaxx1',
    url: 'https://www.reddit.com/r/selfhosted/comments/1pts4rd/comment/nvjh3st/',
    avatar: mrhaxx1,
  },
  {
    content:
      "I really like this project, I'll look into it when I'm back at my PC at home",
    author: 'u/DThelcyDragon',
    url: 'https://www.reddit.com/r/selfhosted/comments/1pts4rd/comment/nvj5r13/',
    avatar: dthelcydragon,
  },
  {
    content:
      'Like this! I was using something that generates straight to pdf from json via a lot of pythoning and stuff. I will try this out.',
    author: 'u/realpm_net',
    url: 'https://www.reddit.com/r/selfhosted/comments/1pct9dm/comment/ns0gxzv/',
    avatar: realpmNet,
  },
  {
    content:
      'After handcrafting mine over the years, this would have been great.',
    author: 'u/jjoojjoojj',
    url: 'https://www.reddit.com/r/LaTeX/comments/1mab9os/comment/n5eaqru/',
    avatar: jjoojjoojj,
  },
  {
    content:
      "I've been using LaTeX for my resume for years, but honestly never took the time to really learn it properly. Love this idea, I'll give it a try!",
    author: 'u/monoteapot',
    url: 'https://www.reddit.com/r/CLI/comments/1lmjvpp/comment/n27lo1i/',
    avatar: monoteapot,
  },
  {
    content:
      "Thanks for sharing this! I don't need a resume right now, but I feel like this would be a whole lot better than fighting with Word again to get the formatting right when I do need another resume.",
    author: 'u/ResearchTLDR',
    url: 'https://www.reddit.com/r/selfhosted/comments/1llloet/comment/n00ppzf/',
    avatar: researchtldr,
  },
  {
    content:
      "Looks great! I've learned about this just in time! I'll test it out when I get some free time.",
    author: 'u/DiqitalB',
    url: 'https://www.reddit.com/r/selfhosted/comments/1llloet/comment/n07o3ss/',
    avatar: diqitalb,
  },
  {
    content:
      "This is one of those things that I wish was a shared standard - not necessarily the pretty resume portion, which *is* cool - but almost an openapi-type-spec for what a resume is. Let's face it, everyone is parsing these things now via AI and such. Wouldn't it be nice to just upload a yaml file and know that your resume's format or readability wasn't going to be a factor in your application? I can't even count how many times Workday's systems have utterly butchered its auto parse of my resume. It wouldn't take too much - couple big players to agree to use it and everyone else would fall in line. <sigh>",
    author: 'Stephen Liberty',
    url: 'https://www.linkedin.com/feed/update/urn:li:activity:7336615448051970048?commentUrn=urn%3Ali%3Acomment%3A%28activity%3A7336615448051970048%2C7337236714035232769%29&dashCommentUrn=urn%3Ali%3Afsd_comment%3A%287337236714035232769%2Curn%3Ali%3Aactivity%3A7336615448051970048%29',
    avatar: stephenLiberty,
  },
  {
    content: '職務経歴書をいいかげん更新しないとな~ これ気になる',
    author: 'もずます@Software Design6月号をよろしく!',
    url: 'https://x.com/mozumasu/status/1974989817374183577',
    avatar: mozumasu,
  },
  {
    content:
      'YAMLResumeはYAMLで履歴書の内容を記述しLaTeXで美しくPDF生成するツール群らしい。コードとしての履歴書管理やバージョン管理に役立ちそう。',
    author: 'ぷーじ',
    url: 'https://x.com/yug1224/status/1979574629699112998',
    avatar: yug1224,
  },
  {
    content:
      'Tired of wrestling with Word for every résumé tweak? Store your résumé as YAML, version it with Git, render to LaTeX/PDF via yamlresume. Fast, repeatable, beautiful.',
    author: '𝖋𝖎𝖗𝖔𝖝',
    url: 'https://x.com/firozkhxn_/status/2008553065071210893',
    avatar: firozkhxn_,
  },
  {
    content:
      "Your Resume in YAML = LLM Superpowers<br /><br />I switched to keeping my resume in YAML format using YAMLResume, and it's been a game-changer to have a fast feedback loop between my resume and AI agents.<br /><br />Pros:<br /> - Analyze your resume into Claude code/Codex and get instant feedback<br /> - Ask to tailor it for a specific job description<br /> - Version control with git - track every change<br /> - Generate professional LaTeX PDFs<br />Cons:<br /> - Latex setup can be complicated - but Claude Code will save you :)<br /><br />The workflow: edit YAML → LLM review → refine → build PDF.<br /><br />No more wrestling with Word formatting or manually comparing versions. Just clean, structured data that LLMs can actually understand and help improve.<br /><br />P.S. I wonder are there a resume skill for Claude Code?",
    author: 'Kostiantyn Lysenko',
    url: 'https://www.linkedin.com/feed/update/urn:li:activity:7423219135549091840/',
    avatar: kostiantyn,
  },
]
