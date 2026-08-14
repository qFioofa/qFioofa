#let ink = rgb("#1a1a1a")
#let meta = rgb("#555555")
#let hairline = rgb("#d0d0d0")

#let hlink(url, body) = link(url)[
  #text(fill: rgb("#1f4e9c"))[
    #underline(stroke: 0.5pt + rgb("#1f4e9c"), offset: 2pt, body)
  ]
]

#let about(title, ..results) = {
  if results.len() == 0 {
    [#title]
  } else {
    [
      #title
      #list(..results)
    ]
  }
}

#set page(margin: (x: 1.5cm, y: 1.2cm))
#set text(font: "Noto Sans", size: 10pt, lang: "ru", fill: ink)
#set par(justify: false, leading: 0.75em, spacing: 0.7em)

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

#let entry(period, dur, org, sub, role, summary, team: none, stack: none, repo: none, achievements: none) = {
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
      if repo != none {
        linebreak()
        text(
          size: 9.5pt,
        )[
          #summary
          #h(5pt)
          ·
          #h(5pt)
          #hlink(repo)[Ссылка на проект]
        ]
      } else if summary != [] {
        linebreak()
        text[#summary]
      }
      linebreak()
      text(size: 10.5pt)[#role]
      if team != none {
        v(3pt)
        text[
          #text(weight: "bold")[Команда: ]
          #team
        ]
      }
      if achievements != none {
        v(4pt)
        list(..achievements)
      }
      if stack != none {
        v(2pt)
        [#text(weight: "bold")[Стек:] #stack]
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
    Telegram: \@Fioofa \
    Мой GitHub: #hlink("https://github.com/qFioofa")[github.com/qFioofa]
    #v(3pt)
    #text(fill: meta, size: 9.5pt)[
      Проживание: Нижний Новгород \
      Возраст: 21 год (2005 г.р.) \
      Гражданство: Россия
    ]
  ],
  box(
    width: 80pt,
    height: 130pt,
    radius: 4pt,
    clip: true,
    stroke: 0.6pt + hairline,
  )[#image("../img/self-s21.png", width: 100%, height: 100%, fit: "cover")],
)

#section[Желаемая должность]
#text(weight: "bold", size: 13pt)[Backend-разработчик (Java)]
#v(2pt)
#text(fill: meta)[Специализации:] Программист, разработчик \
#text(fill: meta)[Тип занятости:] полная \
#text(fill: meta)[Формат работы:] на месте работодателя \

#section[Проекты]

#entry(
  "Июль 2026 - Август 2026",
  none,
  "Payment & Subscription Registry",
  "Учёт подписок и платежей",
  none,
  [Сервис расчёта дат списаний и отслеживания статусов подписок с уведомлениями в реальном времени (SSE).],
  team: [индивидуальная разработка (backend, БД, тесты)],
  repo: "https://github.com/qFioofa/payment-subscription.springboot",
  stack: [Java, Spring Boot, Spring Data JPA, PostgreSQL, Flyway, транзакции, SSE, JUnit 5, Mockito],
  achievements: none,
  //   (
  //   [Рассчитал даты списаний без ошибок в сложные дни календаря: при списании 31 января дата автоматически переносится на конец февраля, неверных списаний не бывает.],
  //   [Подключил мгновенные уведомления: клиент видит смену статуса подписки (оплачено/просрочено) сразу, без перезагрузки страницы (SSE).],
  //   [Защитил ключевую логику автотестами на все сценарии расчёта и смены статусов (JUnit 5, Mockito).],
  // ),
)

#entry(
  "Июль 2026 - Август 2026",
  none,
  "Advance Shop",
  "Интернет-магазин бытовой техники",
  none,
  [REST API для управления клиентами, поставщиками и товарами.],
  team: [индивидуальная разработка (проектирование, backend, БД, деплой)],
  repo: "https://github.com/qFioofa/advance-shop-backend.springboot",
  stack: [Java, Spring Boot, Spring Data JPA, PostgreSQL, Flyway, Docker, Nginx, OpenAPI],
  achievements: none,
  //   (
  //   [Спроектировал единые правила обмена данными с магазином (REST API): интеграция с системой предсказуема, ошибки видны сразу.],
  //   [Сделал систему способной выдерживать рост трафика: чтение и запись данных разделены.],
  //   [Довёл продукт до готовности к запуску: развёртывание в Docker, защищённое соединение (TLS), код покрыт тестами.],
  // ),
)

#entry(
  "Июнь 2026 - Июль 2026",
  none,
  "Tic-Tac-Toe",
  "Full-stack веб-приложение",
  none,
  [Веб-игра крестики-нолики: регистрация, лобби, лидерборд и ИИ-противник (minimax).],
  team: [индивидуальная разработка (backend, фронтенд, БД)],
  repo: "https://github.com/qFioofa/tic-tac-toe-backend.springboot",
  stack: [Java, Spring Boot, Spring Data JDBC, Spring Security, JWT, PostgreSQL, JavaScript],
  achievements: none,
  //   (
  //   [Внедрил регистрацию и вход с защитой данных: доступ к аккаунту и функциям игры надёжно защищён (JWT).],
  //   [Обеспечил корректную игру при одновременных ходах двух игроков: партия не ломается и данные не теряются.],
  //   [Собрал продукт целиком: от интерфейса до серверной логики и базы данных.],
  // ),
)

// Weather Collection - временно скрыт
// #entry(
//   "Май 2026 - Июнь 2026",
//   none,
//   "Weather Collection",
//   "Сбор и анализ данных о погоде",
//   "Backend-разработчик",
//   [Автоматический сбор и хранение погодных данных по городам России.],
//   team: [индивидуальная разработка (ETL, БД, аналитика)],
//   repo: "https://github.com/qFioofa/weather-collection.postgress",
//   stack: [Python, PostgreSQL, TimescaleDB, PL/pgSQL, индексы и партиции, Bash],
//   achievements: (
//     [ETL-пайплайн в базе: источники опрашиваются по расписанию, данные архивируются сами.],
//     [Индексы и партиции по месяцам: отчёты строятся на растущем объёме без ручных действий.],
//     [Миграции и бэкапы схемы и данных в PostgreSQL.],
//   ),
// )

#section[Навыки]

#field("Знание языков")[
  Русский - Родной \
  Английский - B2
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

#field("Ключевые навыки")[
  #taglist((
    "Java",
    "Spring Boot",
    "Spring Data JPA",
    "Spring Data JDBC",
    "Spring Security",
    "Hibernate",
    "REST API",
    "PostgreSQL",
    "Flyway",
    "транзакции (ACID)",
    "JWT",
    "SSE",
    "Docker",
    "Nginx",
    "Gradle",
    "CI/CD",
    "OpenAPI",
    "JUnit 5",
    "Mockito",
    "SQL",
    "Python",
    "JavaScript",
    "Git",
    "Linux",
  ))
]
#v(6pt)

#section[Образование]

#entry(
  "2023 - 2027",
  none,
  "НИУ ВШЭ",
  "Нижний Новгород",
  "Бизнес-информатика (бакалавриат)",
  [],
  stack: none,
  achievements: none,
)

#entry(
  "2026 - по настоящее время",
  none,
  "Школа 21 (Сбер)",
  "Программа по разработке",
  none,
  [Бесплатная школа цифровых технологий.],
  team: none, // [командная разработка и code review со студентами],
  stack: none,
  achievements: none,
)


#section[О себе]

#field("")[
  #list(
    spacing: 1.4em,
    about([Код-ревьюер на отборочных интенсивах Школы 21], [Проверял решения
      более 15 участников, давал развивающую обратную связь]),
    about(
      [Веду студенческий клуб переговоров на протяжении 1 года],
      [Ведение деловых коммуникаций и решение конфликтов с 10 людьми на занятиях],
    ),
    about([Организатор студенческих мероприятий], [
      Сознацие сценария. координирование команды на топ 2 по маштабу
      мероприятие в вузе - более 100 участников
    ]),
    about([Роль в команде: backend-разработчик], [
      GitFlow, спринты по Agile, совместный code review; отвечаю за серверную
      часть и согласование API-контрактов с коллегами
    ]),
  )
]

