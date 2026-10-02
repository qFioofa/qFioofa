#let accent = rgb("#3d7a5c")
#let ink = rgb("#222222")
#let soft = rgb("#666666")
#let hairline = rgb("#d9d9d9")

#let mono(body, ..args) = text(font: "JetBrainsMono NF", ..args, body)

#set page(margin: (x: 1.6cm, y: 1.0cm))
#set text(font: "Noto Sans", size: 9pt, lang: "ru", fill: ink)
#set par(justify: true, leading: 0.6em, spacing: 0.6em)

#show link: set text(fill: accent)
#show link: underline.with(stroke: 0.5pt + hairline, offset: 2pt)

#show heading.where(level: 1): it => {
  v(2pt)
  grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    align: horizon,
    mono(
      upper(it.body),
      size: 10pt,
      weight: "bold",
      fill: accent,
      tracking: 1.5pt,
    ),
    line(length: 100%, stroke: 0.5pt + hairline),
  )
  v(3pt)
}

#set list(
  marker: text(fill: accent, weight: "bold")[–],
  indent: 2pt,
  body-indent: 6pt,
)

#let ico(glyph, body) = box[
  #mono(glyph, fill: accent, size: 9pt) #h(3pt) #body
]

#let point(glyph, title, body) = grid(
  columns: (14pt, 1fr),
  column-gutter: 6pt,
  align: (center + top, left),
  mono(glyph, fill: accent, size: 10pt), [*#title* - #body],
)

#let card(name, tagline, desc, ..links) = block(
  width: 100%,
  stroke: 0.6pt + hairline,
  radius: 5pt,
  inset: (x: 10pt, y: 5pt),
  above: 2.5pt,
  below: 2.5pt,
)[
  #mono(name, weight: "bold", size: 10pt)
  #text(fill: soft)[- #tagline]
  #h(1fr)
  #links.pos().join(text(fill: hairline)[ | ])
  #v(1pt)
  #text(size: 9pt)[#desc]
]

#let photo = box(
  width: 54pt,
  height: 90pt,
  radius: 8pt,
  clip: true,
  stroke: 0.6pt + hairline,
)[#image("../img/self-s21.png", width: 100%, height: 100%, fit: "cover")]

#grid(
  columns: (1fr, auto),
  column-gutter: 16pt,
  align: (left + top, right + top),
  [
    #text(size: 22pt, weight: "bold")[Дмитрий Воскобойник]
    #v(-4pt)
    #mono(
      [Бизнес-аналитик #text(fill: accent)[]],
      size: 11pt,
    )
    #v(6pt)
    #block[
      #set par(justify: false, spacing: 3pt, leading: 0.65em)
      #ico("\u{f0e0}")[voskoboinikdmitri\@yandex.ru] #h(9pt)
      #ico("\u{f095}")[+7 (915) 945-15-30] #h(9pt)
      #ico("\u{f2c6}")[\@Fioofa] #h(9pt)
      #ico("\u{f09b}")[#link(
        "https://github.com/qFioofa",
      )[github.com/qFioofa]] #h(9pt)
      #ico("\u{f041}")[Нижний Новгород]
    ]
  ],
  photo,
)
#v(2pt)
#line(length: 100%, stroke: 1pt + accent)

= Опыт и проекты

#let project(name, tagline, team, stack, desc, label: [Стек:], ..links) = card(
  name,
  tagline,
  [
    #text(fill: soft, size: 8.5pt)[Команда: #team]\
    #text(size: 8.5pt)[#text(weight: "bold")[#label ]#stack]\
    #v(2pt)
    #desc
  ],
  ..links,
)

#project(
  "Кейс-чемпионат по Process Mining",
  [анализ лога процесса оформления ОСАГО],
  [сентябрь 2025, роль: аналитик в команде из 4 человек],
  [Process Mining, анализ лога событий, метрики зацикленности и длительности, гипотезы, оценка эффекта],
  [Разобрал лог урегулирования ОСАГО-претензий: посчитал зацикленность
    (14 470 повторов «Урегулирования претензии», 8 170 — «Проверки документов»)
    и отклонения длительности операций. Сформулировал 4 гипотезы: причины →
    требования к решению → измеримый эффект (−75,4% / −90% / −66,7% затрат,
    −60–80% времени утверждения претензий).],
  label: [Задачи:],
)

#project(
  "Платформа курсов по переговорам",
  [сервис для проведения курсов по переговорам],
  [роль: бизнес-аналитик],
  [сбор требований, создание User Stories, вывод в тестирование],
  [Опираясь на опыт ведения клуба, описал процесс проведения курса и собрал
    требования к платформе; разложил их на User Stories со сценариями
    использования и вывел продукт в закрытое тестирование.],
  label: [Задачи:],
)

#project(
  "Клуб переговоров",
  [фасилитация: запросы участников → регламенты],
  [ведущий, 10 участников, 1 год],
  [интервью, User Research, Miro, обратная связь],
  [Выявлял запросы участников и переводил их в регламенты; разрешал
    конфликты в группе.],
  label: [Навыки:],
)

= Навыки

#let cloud(names) = block(
  width: 100%,
  inset: (x: 8pt, y: 5pt),
  stroke: 0.6pt + hairline,
  radius: 4pt,
)[
  #(
    names
      .map(n => box(
        fill: accent.lighten(80%),
        stroke: 0.5pt + accent.lighten(62%),
        inset: (x: 6pt, y: 2.5pt),
        radius: 4pt,
        outset: (y: 1.5pt),
        mono(n, size: 8.5pt, fill: accent),
      ))
      .join(h(4pt))
  )
]
#cloud((
  "Process Mining",
  "BPMN 2.0",
  "Use Case",
  "User Stories",
  "Интервью",
  "Техзадание",
  "UML / PlantUML",
  "OpenAPI / Swagger",
  "Exel",
  "REST API",
  "Postman",
  "SQL",
  "PostgreSQL",
  "Jira",
  "Miro",
  "Figma",
  "Agile / Scrum",
  "Git",
))

= Образование

- #ico("\u{f19d}")[*НИУ ВШЭ* - Бизнес-информатика (2023 - 2027)]
- #ico("\u{f0c0}")[*Школа 21 (Сбер)* (2026 - наст. время) - школа цифровых
    технологий, обучение peer-to-peer]

= О себе

#point(
  "\u{f040}",
  [Код-ревьюер на отборочных интенсивах Школы 21],
  [проверял решения 15+ участников, давал обратную связь],
)
#point(
  "\u{f086}",
  [Веду студенческий клуб переговоров],
  [1 год, 10 участников: запросы → правила, деловые коммуникации],
)
#point(
  "\u{f091}",
  [Организатор студенческих мероприятий],
  [сценарий и координация команды: топ-2 мероприятие в вузе, 100+ участников],
)
