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

#let entry(period, dur, org, sub, role, summary, team: none, stack: none, results: none) = {
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
      if team != none {
        v(2pt)
        text(fill: meta)[Команда: #team]
      }
      if stack != none {
        v(1pt)
        text(fill: meta)[Стек: #stack]
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
      Проживает: Москва \
      Возраст: 21 год (2005 г.р.) \
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

#section[Опыт работы]

#entry(
  "2026 — наст. время",
  none,
  "Advance Shop",
  "Проектная работа · github.com/qFioofa/advance-shop-backend.springboot",
  "Backend-разработчик",
  [Интернет-магазин бытовой техники: серверная часть, которая управляет клиентами, поставщиками, товарами и изображениями. Поддержка синхронного взаимодействия через REST API и интеграция с внешними системами через SOAP/XML.],
  team: [индивидуальная разработка (проектирование, backend, БД, деплой)],
  stack: [Java, Spring Boot, Spring Data JPA, PostgreSQL, Flyway, Liquibase, Docker, Nginx, OpenAPI, SOAP, XML],
  results: (
    [Разделил операции чтения и записи в архитектуре (1 write + 2 read): сервис выдерживает нагрузку до 10 000 RPS.],
    [Спроектировал структуру базы данных с поддержкой бэкапов и миграций, обеспечил обработку ошибок — пользователь получает понятные сообщения при сбоях.],
    [Реализовал интеграцию с внешними системами через SOAP/XML и API Gateway.],
  ),
)

#entry(
  "2026 — наст. время",
  none,
  "Tic-Tac-Toe",
  "Проектная работа · github.com/qFioofa/tic-tac-toe-backend.springboot",
  "Backend-разработчик",
  [Full-stack веб-приложение «крестики-нолики»: регистрация, лобби, лидерборд и ИИ-противник (minimax). Поддержка синхронного взаимодействия через REST API.],
  team: [индивидуальная разработка (backend, фронтенд, БД)],
  stack: [Java, Spring Boot, Spring Data JDBC, JWT, PostgreSQL, JavaScript, GraphQL],
  results: (
    [Настроил безопасную авторизацию и ролевой доступ — злоумышленник не получает данные без валидного токена.],
    [Защитил игровые состояния от гонок: конкурентные ходы не ломают партию.],
    [Реализовал GraphQL API для гибкого взаимодействия с фронтендом.],
  ),
)

#entry(
  "2026 — наст. время",
  none,
  "Weather Collection",
  "Проектная работа · github.com/qFioofa/weather-collection.postgress",
  "Backend-разработчик",
  [Сервис автоматического сбора, хранения и анализа данных о погоде по городам России. Поддержка работы с MS SQL и Oracle для аналитических отчётов.],
  team: [индивидуальная разработка (ETL, БД, аналитика)],
  stack: [Python, PostgreSQL, MS SQL, Oracle, PL/pgSQL, TimescaleDB, индексы и партиции, Bash],
  results: (
    [Автоматизировал сбор и архивирование данных — сервис не перегружается со временем и не требует ручных действий.],
    [Оптимизировал запросы индексами и партициями: отчёты генерируются за 2 секунды при объёме данных в 1 млн записей.],
    [Реализовал бэкапы и миграции данных между PostgreSQL, MS SQL и Oracle.],
  ),
)

#entry(
  "2026 — наст. время",
  none,
  "Payment & Subscription Registry",
  "Проектная работа · github.com/qFioofa/payment-subscription.springboot",
  "Backend-разработчик",
  [Сервис учёта подписок и регулярных платежей: рассчитывает даты списаний, отслеживает их статусы и шлёт обновления в реальном времени (SSE). Интеграция с брокерами сообщений (Kafka, RabbitMQ) для гарантии доставки уведомлений.],
  team: [индивидуальная разработка (backend, БД, тесты)],
  stack: [Java, Spring Boot, Spring Cloud, PostgreSQL, Kafka, RabbitMQ, транзакции, SSE, JUnit 5, Mockito, Liquibase],
  results: (
    [Реализовал корректную работу подписок на граничных датах (31 янв → 28/29 фев).],
    [Покрыл сервис автотестами: изменения не ломают существующую функциональность.],
    [Настроил кластер Kafka для гарантии доставки сообщений и обработки до 5000 событий в секунду.],
    [Реализовал продюсеры и консьюмеры для асинхронной обработки платежей.],
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
    "Kotlin",
    "Java Core (JVM, JMM)",
    "Java 17",
    "ООП",
    "SQL",
    "PostgreSQL",
    "MySQL",
    "MS SQL",
    "Oracle",
    "PL/SQL",
    "PL/pgSQL",
    "индексы",
    "транзакции, ACID",
    "бэкап и миграции",
    "REST API",
    "GraphQL",
    "SOAP",
    "XML",
    "JSON",
    "OpenAPI",
    "API Gateway",
    "валидация DTO",
    "микросервисы",
    "синхронное взаимодействие",
    "JWT (безопасность API)",
    "SSE (асинхронное взаимодействие)",
    "Spring Boot",
    "Spring Data JPA",
    "Spring Data JDBC",
    "Spring Cloud",
    "Hibernate",
    "Kafka (продюсеры, консьюмеры, гарантии доставки)",
    "RabbitMQ",
    "ActiveMQ",
    "Amazon SQS",
    "настройка кластеров",
    "Unit-тесты (JUnit 5, Mockito)",
    "Gradle",
    "Maven",
    "Flyway (миграции)",
    "Liquibase",
    "Docker",
    "Kubernetes",
    "Docker Compose",
    "Linux",
    "Git",
    "CI/CD",
    "Nginx",
    "Python",
    "C++",
    "Golang",
    "JavaScript",
    "TCP/IP",
    "Bash",
    "ИИ / LLM (инструменты разработки)",
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
  team: [командная разработка и code review со студентами],
  stack: none,
  duties: none,
  results: (
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
  duties: none,
  results: none,
)

#section[О себе]

#field("Обо мне")[
  #list(
    [Backend-разработчик: проектирую и разрабатываю серверную часть приложений, оптимизирую базы данных и настраиваю инфраструктуру.],
    [Организовал клуб переговоров для студентов: провожу занятия для 10+ участников с практическими упражнениями.],
    [Разработал и внедрил AI Router для маршрутизации запросов между LLM, сократив затраты на 30%.],
    [Опыт командной разработки: GitFlow, Agile-спринты, code review.],
    [Документирую архитектуру и API с помощью PlantUML и OpenAPI.],
    [Использую ИИ-ассистентов для генерации кода, тестов и документации.],
  )
]