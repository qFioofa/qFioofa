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
#text(weight: "bold", size: 13pt)[Бизнес-аналитик]
#v(2pt)
#text(fill: meta)[Специализации:] бизнес-аналитик · BPMN · техзадание · User Stories \
#text(fill: meta)[Тип занятости:] полная \
#text(fill: meta)[Формат работы:] на месте работодателя \

#section[Проекты]

#entry(
  "Сентябрь 2025",
  none,
  "Кейс-чемпионат по Process Mining",
  "Оформление ОСАГО: анализ процесса страховой претензии по логу событий",
  none,
  [Анализ лога урегулирования ОСАГО-претензий: зацикленность и длительность операций → гипотезы → эффект.],
  team: [аналитик команды из 4 человек],
  repo: none,
  stack: [Process Mining, лог событий, метрики, гипотезы, оценка эффекта],
  achievements: (
    [Посчитал зацикленность с разбором типов повторов: 14 470 возвратов в «Урегулировании претензии», 8 170 в «Проверке документов»; оценил отклонения длительности операций от среднего.],
    [Сформулировал 4 гипотезы, перевёл причины в требования (скоринг мошенничества, единая БД документов, цифровое досье претензии, сегментация по риску) и оценил эффект: до −90% затрат.],
  ),
)

#entry(
  "2026 - наст. время",
  none,
  "Платформа курсов по переговорам",
  "Сервис для проведения курсов по переговорам",
  none,
  [Задачи: сбор требований, создание User Stories, вывод в тестирование.],
  team: [роль: бизнес-аналитик],
  repo: none,
  stack: [интервью, User Research, User Stories, Use Case, Miro, Jira],
  achievements: (
    [Описал процесс проведения курса на основе опыта ведения клуба, собрал требования к платформе и разложил их на User Stories.],
    [Вёл задачи в Jira от постановки до вывода в тестирование.],
  ),
)

#entry(
  "Июль 2026 - Август 2026",
  none,
  "Payment & Subscription Registry",
  "Учёт подписок и платежей",
  none,
  [Сервис расчёта дат списаний и отслеживания статусов подписок с уведомлениями в реальном времени.],
  team: [индивидуальная работа: анализ процесса, user stories, модель данных],
  repo: "https://github.com/qFioofa/payment-subscription.springboot",
  stack: [AS IS / TO BE, User Stories, OpenAPI, SQL, PostgreSQL, Jira],
  achievements: (
    [Описал процесс «как есть» (учёт в заметках и почте, ручной расчёт дат) и «как должно быть»: 3 User Stories со сценариями использования.],
    [Спроектировал модель данных и жизненный цикл обязательства: active / cancelled / expired, защита от дублей. Бизнес-кейсы закрыты 16 автотестами.],
  ),
)

#entry(
  "Июль 2026 - Август 2026",
  none,
  "Advance Shop",
  "Интернет-магазин бытовой техники",
  none,
  [REST API для управления клиентами, поставщиками и товарами.],
  team: [индивидуальная работа: модель данных, API-контракт],
  repo: "https://github.com/qFioofa/advance-shop-backend.springboot",
  stack: [User Stories, BPMN, OpenAPI, REST API, SQL, PostgreSQL, PlantUML, Jira, Miro],
  achievements: (
    [Разобрал домен магазина и зафиксировал API-контракт: 29 операций /api/v1 с раздельной семантикой PUT/PATCH и единым форматом ошибок.],
    [Смоделировал данные (5 сущностей) и разграничение прав; сделал контракт самодокументируемым: OpenAPI и 6 диаграмм PlantUML.],
  ),
)

#entry(
  "Июнь 2026 - Июль 2026",
  none,
  "Tic-Tac-Toe",
  "Игровая платформа: сценарии и права доступа",
  none,
  [Веб-игра крестики-нолики: лобби, лидерборд и ИИ-противник (minimax).],
  team: [индивидуальная работа: use case, роли, API-контракт],
  repo: "https://github.com/qFioofa/tic-tac-toe-backend.springboot",
  stack: [Use Case, User Stories, OpenAPI, REST API, SQL, PlantUML, Postman, Figma],
  achievements: (
    [Описал сценарии игры: лобби, ход против человека или minimax-ИИ, лидерборд; зафиксировал 13 операций /api/v1 и правила валидации хода.],
    [Развёл доступы по ролям: вход, обновление и отзыв токена, защита маршрутов — требования зафиксированы до реализации.],
  ),
)

#entry(
  "2025 - 2026",
  none,
  "Клуб переговоров",
  "Фасилитация: запросы участников → регламенты",
  none,
  [Еженедельные занятия для 10 участников: коммуникации и разрешение конфликтов.],
  team: [ведущий клуба, 1 год],
  repo: none,
  stack: [интервью, User Research, Miro, обратная связь, фасилитация],
  achievements: (
    [Выявлял запросы участников и переводил их в регламенты; разрешал конфликты внутри команды.],
  ),
)

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
    "Process Mining",
    "BPMN 2.0",
    "Use Case",
    "User Stories",
    "User Research",
    "интервью",
    "работа со стейкхолдерами",
    "техзадание (ТЗ)",
    "UML",
    "PlantUML",
    "Miro",
    "Camunda Modeler",
    "Jira",
    "Agile",
    "Scrum",
    "Git",
    "Figma",
    "REST API",
    "OpenAPI",
    "Swagger",
    "Postman",
    "SQL",
    "PostgreSQL",
    "Exel",
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
    spacing: 1.15em,
    about([Код-ревьюер на отборочных интенсивах Школы 21], [Проверял решения
      15+ участников, давал развивающую обратную связь]),
    about(
      [Веду студенческий клуб переговоров на протяжении 1 года],
      [Выявлял запросы участников и переводил их в регламенты, вёл деловые
        коммуникации и разрешал конфликты с 10 людьми],
    ),
    about([Организатор студенческих мероприятий], [
      Сценарий и координация команды: топ-2 мероприятие в вузе, 100+ участников
    ]),
    about([Роль в команде: бизнес-аналитик], [
      Требования до начала разработки, согласование API-контрактов, спринты по
      Agile и GitFlow, защита решений на code review
    ]),
  )
]
