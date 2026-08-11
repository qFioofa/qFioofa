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

#let entry(period, dur, org, sub, role, summary, team: none, stack: none, achievements: none) = {
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
      if achievements != none {
        v(1pt)
        list(..achievements)
      }
      if stack != none {
        v(2pt)
        text(fill: meta)[Стек: #stack]
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
  "Август 2026 — по настоящее время",
  none,
  "Payment & Subscription Registry",
  "Учёт подписок и платежей · github.com/qFioofa/payment-subscription.springboot",
  "Backend-разработчик",
  [Сервис расчёта дат списаний и отслеживания статусов подписок с уведомлениями в реальном времени (SSE).],
  team: [индивидуальная разработка (backend, БД, тесты)],
  stack: [Java, Spring Boot, Spring Cloud, PostgreSQL, Kafka, RabbitMQ, транзакции, SSE, JUnit 5, Mockito, Liquibase],
  achievements: (
    [Реализовал корректный расчёт дат списаний на граничных днях календаря (31 янв → 28/29 фев).],
    [Подключил Kafka и RabbitMQ: продюсеры и консьюмеры доставляют уведомления о статусах без потерь.],
    [Покрыл сервис автотестами (JUnit 5, Mockito): изменения не ломают существующую логику.],
  ),
)

#entry(
  "Июль 2026 — по настоящее время",
  none,
  "Advance Shop",
  "Интернет-магазин бытовой техники · github.com/qFioofa/advance-shop-backend.springboot",
  "Backend-разработчик",
  [REST API для управления клиентами, поставщиками и товарами; интеграция с внешними системами через SOAP/XML.],
  team: [индивидуальная разработка (проектирование, backend, БД, деплой)],
  stack: [Java, Spring Boot, Spring Data JPA, PostgreSQL, Flyway, Liquibase, Docker, Nginx, OpenAPI, SOAP, XML],
  achievements: (
    [Реализовал REST API на JSON с семантикой PUT/PATCH, валидацией DTO и единым контрактом ошибок — клиенты получают предсказуемые ответы при сбоях.],
    [Разделил операции чтения и записи по разным репликам базы через API Gateway: сервис остаётся отзывчивым при росте трафика.],
    [Развернул сервис в Docker за Nginx с TLS и покрыл код unit-тестами.],
  ),
)

#entry(
  "Июнь 2026 — по настоящее время",
  none,
  "Tic-Tac-Toe",
  "Full-stack веб-приложение · github.com/qFioofa/tic-tac-toe-backend.springboot",
  "Backend-разработчик",
  [Веб-игра «крестики-нолики»: регистрация, лобби, лидерборд и ИИ-противник (minimax).],
  team: [индивидуальная разработка (backend, фронтенд, БД)],
  stack: [Java, Spring Boot, Spring Data JDBC, JWT, PostgreSQL, JavaScript, GraphQL],
  achievements: (
    [Реализовал stateless JWT-авторизацию (access + refresh) — маршруты защищены, доступ по ролям.],
    [Защитил игровые состояния от гонок через optimistic locking — конкурентные ходы не ломают партию.],
    [Реализовал GraphQL API и собрал фронтенд одной командой.],
  ),
)

#entry(
  "Май 2026 — по настоящее время",
  none,
  "Weather Collection",
  "Сбор и анализ данных о погоде · github.com/qFioofa/weather-collection.postgress",
  "Backend-разработчик",
  [Автоматический сбор и хранение погодных данных по городам России с отчётами на MS SQL и Oracle.],
  team: [индивидуальная разработка (ETL, БД, аналитика)],
  stack: [Python, PostgreSQL, MS SQL, Oracle, PL/pgSQL, TimescaleDB, индексы и партиции, Bash],
  achievements: (
    [Построил ETL-пайплайн в базе: источники опрашиваются по расписанию, данные архивируются автоматически.],
    [Оптимизировал запросы индексами и партициями — отчёты по городам строятся быстро на растущем объёме.],
    [Реализовал миграцию и бэкапы данных между PostgreSQL, MS SQL и Oracle.],
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

#field("Языки")[
  #taglist((
    "Java",
    "Java Core (JVM, JMM)",
    "Java 17",
    "Kotlin",
    "ООП",
    "Python",
    "C++",
    "Golang",
    "JavaScript",
    "Bash",
    "SQL",
  ))
]
#v(4pt)
#field("Backend")[
  #taglist((
    "Spring Boot",
    "Spring Data JPA / JDBC",
    "Spring Cloud",
    "Hibernate",
    "REST API",
    "GraphQL",
    "SOAP / XML",
    "JSON",
    "микросервисы",
  ))
]
#v(4pt)
#field("Базы данных")[
  #taglist((
    "PostgreSQL",
    "MySQL",
    "MS SQL",
    "Oracle",
    "PL/pgSQL",
    "PL/SQL",
    "TimescaleDB",
    "индексы и партиции",
    "транзакции (ACID)",
    "миграции и бэкапы",
  ))
]
#v(4pt)
#field("Очереди сообщений")[
  #taglist(("Kafka (продюсеры, консьюмеры)", "RabbitMQ", "ActiveMQ", "Amazon SQS", "SSE"))
]
#v(4pt)
#field("API и безопасность")[
  #taglist(("OpenAPI", "API Gateway", "валидация DTO", "JWT", "REST-контракты", "SOAP"))
]
#v(4pt)
#field("Инструменты")[
  #taglist((
    "Docker",
    "Kubernetes",
    "Docker Compose",
    "Nginx",
    "Linux",
    "Git",
    "Gradle",
    "Maven",
    "CI/CD",
    "Agile",
    "PlantUML",
  ))
]
#v(4pt)
#field("Тестирование")[
  #taglist(("JUnit 5", "Mockito"))
]
#v(6pt)

#section[Образование]

#entry(
  "2026 — по настоящее время",
  none,
  "Школа 21 (Сбер)",
  "Программа по разработке · peer-to-peer",
  "Разработка ПО",
  [Бесплатная школа программирования по модели «равный — равному».],
  team: [командная разработка и code review со студентами],
  stack: none,
  achievements: (
    [Проекты по разным направлениям: программирование, базы данных, сети, командная разработка.],
    [Софт-скилы: самообучение, разбор чужого кода, защита своих решений, работа в команде.],
  ),
)

#entry(
  "2023 — 2027",
  none,
  "НИУ ВШЭ",
  "Нижний Новгород",
  "Бизнес-информатика (бакалавриат)",
  [],
  stack: none,
  achievements: none,
)

#section[О себе]

#field("Обо мне")[
  #list(
    [Java / Spring Boot: REST API, PostgreSQL (индексы, транзакции, миграции), Docker.],
    [Веду студенческий клуб переговоров: занятия по аргументации и решению конфликтов.],
    [Собрал AI Router — маршрутизатор запросов между LLM.],
    [Документирую API в OpenAPI, схемы архитектуры — в PlantUML.],
  )
]

