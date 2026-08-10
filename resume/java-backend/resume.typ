#let accent = rgb("#e8641c")
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

#let card(name, tagline, desc, icons: none, ..links) = block(
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
  #if icons != none {
    box(baseline: 30%, image("../img/" + icons, height: 12pt))
    if links.pos().len() > 0 { h(6pt) }
  }
  #links.pos().join(text(fill: hairline)[ | ])
  #v(1pt)
  #text(size: 9pt)[#desc]
]

#let photo = box(
  width: 76pt,
  height: 76pt,
  radius: 8pt,
  clip: true,
  stroke: 0.6pt + hairline,
)[#image("../img/self.jpeg", width: 100%, height: 100%, fit: "cover")]

#grid(
  columns: (1fr, auto),
  column-gutter: 16pt,
  align: (left + top, right + top),
  [
    #text(size: 22pt, weight: "bold")[Дмитрий Воскобойник]
    #v(-4pt)
    #mono(
      [Backend-разработчик #text(fill: accent)[(Java)]],
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

      ico("\u{f041}")[Москва],
    )
  ],
  photo,
)
#v(2pt)
#line(length: 100%, stroke: 1pt + accent)

= О себе

#point(
  "\u{f0e7}",
  [Backend-разработка],
  [Java, Spring Boot, REST API: проектирую и разрабатываю серверную часть
    приложений — от базы данных до развёртывания сервиса],
)
#point(
  "\u{f121}",
  [Надёжность и данные],
  [PostgreSQL: транзакции, индексы, оптимизация запросов; продуманная
    обработка ошибок],
)
#point(
  "\u{f086}",
  [Клуб переговоров],
  [организатор и ведущий: занятия для 10 участников, разбор теории и
    практические упражнения; развил навык решения конфликтов и ведения
    переговоров],
)
#point(
  "\u{f0c0}",
  [Командная работа],
  [GitFlow, спринты по Agile, совместный code review],
)
#point(
  "\u{f121}",
  [ИИ / LLM],
  [использую AI-ассистентов в разработке (генерация и ревью кода, тесты,
    документация); настраиваю и дообучаю языковые модели],
)
#point(
  "\u{f03e}",
  [Документация],
  [визуальные диаграммы архитектуры и API на PlantUML],
)

= Опыт работы

#let project(name, tagline, team, stack, desc, icons: none, ..links) = card(
  name,
  tagline,
  [
    #text(fill: soft, size: 8.5pt)[Команда: #team]\
    #text(fill: soft, size: 8.5pt)[Стек: #stack]\
    #v(2pt)
    #desc
  ],
  icons: icons,
  ..links,
)

#project(
  "Advance Shop",
  [e-commerce backend (Spring Boot)],
  [индивидуальная разработка: проектирование, backend, БД, деплой],
  [Java, Spring Boot, Spring Data JPA, PostgreSQL, Flyway, Docker, Nginx, OpenAPI],
  [Серверная часть интернет-магазина бытовой техники: REST API с продуманной
    обработкой ошибок; разделил чтение и запись (1 write + 2 read), чтобы
    сервис стабильно работал при росте нагрузки.],
  icons: "stack-advance.svg",
  link("https://github.com/qFioofa/advance-shop-backend.springboot")[GitHub],
)

#project(
  "Tic-Tac-Toe",
  [full-stack веб-приложение],
  [индивидуальная разработка: backend, фронтенд, БД],
  [Java, Spring Boot, Spring Data JDBC, JWT, PostgreSQL, JavaScript],
  [Веб-игра «крестики-нолики»: stateless JWT-авторизация (access + refresh),
    лобби, лидерборд и ИИ-противник (minimax); защита от конкурентных ходов
    через optimistic locking.],
  icons: "stack-rogue.svg",
  link("https://github.com/qFioofa/tic-tac-toe-backend.springboot")[GitHub],
)

#project(
  "Weather Collection",
  [сбор данных о погоде],
  [индивидуальная разработка: ETL, БД, аналитика],
  [Python, PostgreSQL, TimescaleDB, индексы и партиции, Bash],
  [Автоматический сбор и анализ погоды по городам России: данные обновляются
    по расписанию, устаревшие записи архивируются сами, отчёты строятся без
    ручных действий.],
  icons: "stack-weather.svg",
  link("https://github.com/qFioofa/weather-collection.postgress")[GitHub],
)

#project(
  "Payment & Subscription Registry",
  [учёт подписок и платежей],
  [индивидуальная разработка: backend, БД, тесты],
  [Java, Spring Boot, PostgreSQL, транзакции, SSE, JUnit 5, Mockito],
  [Сервис учёта подписок и регулярных платежей: корректный расчёт дат
    списаний (конец месяца, високосный год), бизнес-логика отделена от
    технической части, покрыт автотестами.],
  icons: "stack-payment.svg",
  link("https://github.com/qFioofa/payment-subscription.springboot")[GitHub],
)

= Навыки

#let cluster(names) = stack(
  spacing: 2.5pt,
  ..names
    .chunks(4)
    .map(row => stack(
      dir: ltr,
      spacing: 2.5pt,
      ..row.map(n => image("../img/i-" + n + ".svg", height: 13pt)),
    )),
)
#let skill(label, body, icons: none) = (
  mono(label, size: 8.5pt, weight: "bold", fill: accent),
  ..if icons != none {
    (body, cluster(icons))
  } else {
    (table.cell(colspan: 2, body),)
  },
)
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
#table(
  columns: (88pt, 1fr, auto),
  align: (left + horizon, left + horizon, right + horizon),
  inset: (x: 8pt, y: 5pt),
  stroke: (x, y) => (
    top: if y > 0 { 0.5pt + hairline } else { 0pt },
    left: if x > 0 { 0.5pt + hairline } else { 0pt },
  ),
  ..skill("BACKEND", icons: ("spring", "java"))[
    Spring Boot, Spring Data JPA, Hibernate, REST API, валидация DTO,
    unit-тесты
  ],
  ..skill(
    "ЯЗЫКИ",
    icons: ("java", "js", "python", "bash"),
  )[
    Java, JavaScript, SQL, Python, Bash
  ],
  ..skill("БАЗЫ ДАННЫХ", icons: ("postgresql",))[
    PostgreSQL: проектирование схем, миграции (Flyway), индексы,
    транзакции (ACID), оптимизация запросов
  ],
  ..skill("DEVOPS", icons: ("docker", "git", "ci"))[
    Docker (Compose), CI/CD, Git, Gradle/Maven, Linux, Nginx, TCP/IP
  ],
  ..skill("КОНЦЕПЦИИ", icons: ("java",))[
    Java Core (JVM, JMM), ООП, клиент-сервер, конкурентность,
    микросервисы
  ],
  ..skill("API", icons: ("java",))[
    OpenAPI, JSON, JWT-авторизация (безопасность API), SSE (асинхронное
    взаимодействие)
  ],
  ..skill("ДОКУМЕНТАЦИЯ", icons: ("plantuml",))[
    визуальные диаграммы архитектуры и API
  ],
  ..skill("ЯЗЫКИ (ЕСТ.)")[
    русский — родной; английский — B2 (разговорный)
  ],
)
#v(5pt)
#cloud((
  "Java",
  "Java Core (JVM, JMM)",
  "ООП",
  "SQL",
  "PostgreSQL",
  "индексы",
  "транзакции (ACID)",
  "REST API",
  "JSON",
  "OpenAPI",
  "валидация",
  "микросервисы",
  "JWT (безопасность API)",
  "SSE",
  "Spring Boot",
  "Spring Data JPA",
  "Hibernate",
  "Unit-тесты (JUnit 5, Mockito)",
  "Gradle",
  "Maven",
  "Flyway",
  "Docker",
  "Docker Compose",
  "Linux",
  "Git",
  "CI/CD",
  "Nginx",
  "Python",
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
