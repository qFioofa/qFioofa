#let accent = rgb("#3d7a5c")
#let ink = rgb("#222222")
#let soft = rgb("#666666")
#let hairline = rgb("#d9d9d9")

#let mono(body, ..args) = text(font: "JetBrainsMono NF", ..args, body)

#set page(margin: (x: 1.6cm, y: 1.1cm))
#set text(font: "Noto Sans", size: 9.3pt, lang: "ru", fill: ink)
#set par(justify: true, leading: 0.7em, spacing: 0.8em)

#show link: set text(fill: accent)
#show link: underline.with(stroke: 0.5pt + hairline, offset: 2pt)

#show heading.where(level: 1): it => {
  v(3pt)
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
  mono(glyph, fill: accent, size: 10pt), [*#title* — #body],
)

#let card(name, tagline, desc, ..links) = block(
  width: 100%,
  stroke: 0.6pt + hairline,
  radius: 5pt,
  inset: (x: 10pt, y: 6pt),
  above: 5pt,
  below: 5pt,
)[
  #mono(name, weight: "bold", size: 10pt)
  #text(fill: soft)[— #tagline]
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
      [Backend-разработчик #text(fill: accent)[(Python)]],
      size: 11pt,
    )
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      ico("\u{f0e0}")[voskoboinikdmitri\@yandex.ru],
      ico("\u{f095}")[+7 (915)
        945-15-30],

      ico("\u{f2c6}")[\@Fioofa],
      ico("\u{f09b}")[#link(
        "https://github.com/qFioofa",
      )[github.com/qFioofa]],

      ico("\u{f041}")[Нижний Новгород],
    )
  ],
  photo,
)
#v(2pt)
#line(length: 100%, stroke: 1pt + accent)

= Опыт работы

#let project(name, tagline, team, stack, desc, ..links) = card(
  name,
  tagline,
  [
    #text(fill: soft, size: 8.5pt)[Команда: #team]\
    #text(size: 8.5pt)[#text(weight: "bold")[Стек:] #stack]\
    #v(2pt)
    #desc
  ],
  ..links,
)

#project(
  "Advance Shop",
  [e-commerce backend (FastAPI)],
  [индивидуальная разработка: проектирование, backend, БД, деплой],
  [Python, FastAPI, SQLAlchemy, Alembic, PostgreSQL, Docker, Nginx, OpenAPI],
  [Серверная часть интернет-магазина бытовой техники: асинхронное REST API
    с продуманной обработкой ошибок; разделил чтение и запись, чтобы сервис
    стабильно работал при росте нагрузки.],
  link("https://github.com/qFioofa/advance-shop-backend.springboot")[GitHub],
)

#project(
  "Tuning Model TG Bot",
  [Telegram-бот с ИИ-моделями],
  [индивидуальная разработка: backend, ML-интеграция, деплой],
  [Python, python-telegram-bot, asyncio, Docker, docker-compose],
  [Показ функционала натренированных моделей через Telegram-бота: выбор
    уровня модели и профиля, генерация текста; спроектировал AI Router —
    маршрутизацию запросов к моделям; развернул бота: t.me/ConflictGeneratorbot.],
  link("https://github.com/qFioofa/TuningModelTGBotShowcase")[GitHub],
)

#project(
  "Payment & Subscription Registry",
  [учёт подписок и платежей],
  [индивидуальная разработка: backend, БД, тесты],
  [Python, FastAPI, PostgreSQL, транзакции, pytest],
  [Сервис учёта подписок и регулярных платежей на Python: корректный расчёт
    дат списаний (конец месяца, високосный год), бизнес-логика отделена от
    технической части, покрыт автотестами.],
  link("https://github.com/qFioofa/payment-subscription.springboot")[GitHub],
)

= Навыки

#let cloud(names) = block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  stroke: 0.6pt + hairline,
  radius: 4pt,
)[
  #names.map(n => box(
    fill: accent.lighten(80%),
    stroke: 0.5pt + accent.lighten(62%),
    inset: (x: 6pt, y: 2.5pt),
    radius: 4pt,
    outset: (y: 1.5pt),
    mono(n, size: 8.5pt, fill: accent),
  )).join(h(4pt))
]
#cloud((
  "Python",
  "ООП",
  "SQL",
  "PostgreSQL",
  "REST API",
  "FastAPI",
  "SQLAlchemy",
  "Alembic (миграции)",
  "Pydantic",
  "asyncio",
  "python-telegram-bot",
  "Unit-тесты (pytest)",
  "Docker",
  "Docker Compose",
  "Linux",
  "Git",
  "CI/CD",
  "Nginx",
  "JavaScript",
  "TCP/IP",
  "Bash",
  "ИИ / LLM",
))

= Образование

- #ico("\u{f19d}")[*НИУ ВШЭ* — Бизнес-информатика (2023 — 2027)]
- #ico("\u{f0c0}")[*Школа 21 (Сбер)* (2026 — наст. время) — бесплатная
    школа программирования по модели «равный — равному»: проекты по разным
    направлениям; soft-скилы: самообучение, разбор чужого кода, работа
    в команде]

= О себе

#point(
  "\u{f040}",
  [Код-ревьюер на отборочных интенсивах Школы 21],
  [проверял решения более 15 участников, давал развивающую обратную связь],
)
#point(
  "\u{f086}",
  [Веду студенческий клуб переговоров],
  [на протяжении 1 года: ведение деловых коммуникаций и решение конфликтов
    с 10 людьми на занятиях],
)
#point(
  "\u{f091}",
  [Организатор студенческих мероприятий],
  [составление сценария и координация команды: топ-2 по масштабу
    мероприятие в вузе — более 100 участников],
)
#point(
  "\u{f0c0}",
  [Роль в команде: backend-разработчик],
  [GitFlow, спринты по Agile, совместный code review; отвечаю за серверную
    часть и согласование API-контрактов с коллегами],
)