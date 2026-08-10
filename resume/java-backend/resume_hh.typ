#let ink = rgb("#1a1a1a")
#let meta = rgb("#8a8a8a")
#let hairline = rgb("#d0d0d0")

#set page(margin: (x: 1.5cm, y: 1.2cm))
#set text(font: "Noto Sans", size: 10pt, lang: "ru", fill: ink)
#set par(justify: false, leading: 0.58em, spacing: 0.6em)

#let section(title) = {
  v(4pt)
  text(fill: meta, size: 11pt)[#title]
  v(2pt)
  line(length: 100%, stroke: 0.6pt + hairline)
  v(3pt)
}

#let field(label, body) = grid(
  columns: (110pt, 1fr),
  column-gutter: 10pt,
  text(fill: meta)[#label], body,
)

#let entry(period, dur, org, sub, role, summary, duties, results) = {
  grid(
    columns: (120pt, 1fr),
    column-gutter: 14pt,
    align: (left + top, left + top),
    {
      text(fill: meta, size: 9pt)[#period]
      if dur != none {
        linebreak()
        text(fill: meta, size: 9pt)[#dur]
      }
    },
    {
      text(weight: "bold", size: 11pt)[#org]
      if sub != none {
        linebreak()
        text(fill: meta, size: 9.5pt)[#sub]
      }
      linebreak()
      text(size: 10.5pt)[#role]
      v(2pt)
      text[#summary]
      if duties != none {
        v(3pt)
        text(fill: meta)[Обязанности:]
        list(..duties)
      }
      if results != none {
        v(1pt)
        text(fill: meta)[Достижения:]
        list(..results)
      }
    },
  )
  v(4pt)
}

#grid(
  columns: (1fr, auto),
  column-gutter: 16pt,
  align: (left + top, right + top),
  [
    #text(size: 20pt, weight: "bold")[Воскобойник Дмитрий]
    #v(-3pt)
    #v(4pt)
    +7 (915) 945-15-30 \
    voskoboinikdmitri\@yandex.ru \
    telegram: \@Fioofa \
    Мой GitHub: #link("https://github.com/qFioofa")[github.com/qFioofa]
    #v(3pt)
    #text(fill: meta, size: 9.5pt)[
      Проживает: Нижний Новгород \
      Гражданство: Россия
    ]
  ],
  box(
    width: 80pt,
    height: 80pt,
    radius: 4pt,
    clip: true,
    stroke: 0.6pt + hairline,
  )[#image("../img/self.jpeg", width: 100%, height: 100%, fit: "cover")],
)

#section[Желаемая должность]
#text(weight: "bold", size: 13pt)[Backend-разработчик (Java)]
#v(2pt)
#text(fill: meta)[Специализации:] Программист, разработчик \
#text(fill: meta)[Тип занятости:] полная \
#text(fill: meta)[Формат работы:] гибрид, на месте работодателя \

#section[Проекты]

#entry(
  "2026",
  none,
  "Advance Shop — e-commerce backend",
  "Проектная работа · github.com/qFioofa/advance-shop-backend.springboot",
  "Backend-разработчик",
  [Интернет-магазин бытовой техники: серверная часть, которая управляет
    клиентами, поставщиками, товарами и изображениями.],
  none,
  (
    [Спроектировал и разработал серверную часть интернет-магазина — 29 функций для управления клиентами, поставщиками и товарами.],
    [Разделил операции чтения и записи в архитектуре, чтобы сервис стабильно работал при росте нагрузки.],
    [Спроектировал структуру базы данных и продумал обработку ошибок — при сбоях пользователь получает понятное сообщение.],
  ),
)

#entry(
  "2026",
  none,
  "Weather Collection — сбор данных о погоде",
  "Проектная работа · github.com/qFioofa/weather-collection.postgress",
  "Backend-разработчик",
  [Сервис автоматического сбора и анализа данных о погоде по 30 городам
    России.],
  none,
  (
    [Автоматизировал сбор данных: сервис сам обновляет информацию о погоде каждые 3 минуты, без участия человека.],
    [Спроектировал хранилище данных с автоматическим архивированием устаревших записей — сервис не перегружается со временем.],
    [Настроил автоматическое построение отчётов по городам: аналитика обновляется сама, без ручных действий.],
  ),
)

#entry(
  "2026",
  none,
  "Payment & Subscription Registry",
  "Проектная работа · github.com/qFioofa/payment-subscription.springboot",
  "Backend-разработчик",
  [Сервис учёта подписок и регулярных платежей: рассчитывает даты списаний
    и отслеживает их статусы.],
  none,
  (
    [Реализовал корректный расчёт дат списаний с учётом особенностей календаря — конец месяца и високосный год.],
    [Разделил бизнес-логику и техническую часть в архитектуре: сервис проще поддерживать и тестировать.],
    [Покрыл работу сервиса 16 автотестами, чтобы новые изменения не ломали существующую функциональность.],
  ),
)

#section[Навыки]

#field("Знание языков")[
  Русский — Родной \
  Английский — B2
]
#v(6pt)

#let taglist(items) = box[
  #(
    items
      .map(t => box(
        fill: rgb("#f0f0f0"),
        inset: (x: 6pt, y: 2pt),
        radius: 3pt,
        outset: (y: 2pt),
        text(size: 9pt)[#t],
      ))
      .join(h(4pt))
  )
]

#field("Владею")[
  #taglist((
    "Java",
    "ООП",
    "Базы данных",
    "SQL",
    "PostgreSQL",
    "REST API",
    "Spring Boot",
    "Spring Data JPA",
    "Hibernate",
    "Unit-тесты (JUnit 5, Mockito)",
    "Gradle",
    "Maven",
    "Flyway (миграции)",
    "Docker",
    "Docker Compose",
    "Linux",
    "Git",
    "CI/CD",
    "Nginx",
    "Python",
    "TCP/IP",
    "Bash",
  ))
]

#section[Образование]

#entry(
  "2026 — наст. время",
  none,
  "Школа 21 (Сбер)",
  "Программа по разработке · peer-to-peer",
  "Разработка ПО",
  [Бесплатная школа программирования по модели «равный — равному».],
  none,
  (
    [Проекты по разным направлениям: программирование, базы данных, сети, командная разработка.],
    [Софт-скилы: самообучение, разбор чужого кода, защита своих решений, работа в команде.],
  ),
)

#entry(
  "2023 — 2027",
  none,
  "НИУ ВШЭ",
  "Нижний Новгород",
  "Бизнес-информатика (бакалавриат, обучается)",
  [],
  none,
  none,
)

#section[О себе]

#field("Обо мне")[
  #list(
    [Backend-разработчик: проектирую и разрабатываю серверную часть приложений — от базы данных до развёртывания сервиса.],
    [Организатор и ведущий клуба переговоров для студентов: занятия для 10 участников с разбором теории и практическими упражнениями.],
    [Развил навык решения конфликтов и ведения переговоров.],
    [Есть опыт Работы в команде по гибким процессам: GitFlow, спринты по Agile, совместный code review.],
    [Документирую архитектуру и API визуальными диаграммами на PlantUML.],
  )
]
