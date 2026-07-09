#let ink = rgb("#1a1a1a")
#let meta = rgb("#8a8a8a")
#let hairline = rgb("#d0d0d0")

#set page(margin: (x: 1.7cm, y: 1.5cm))
#set text(font: "Noto Sans", size: 10pt, lang: "ru", fill: ink)
#set par(justify: false, leading: 0.62em, spacing: 0.7em)

#let section(title) = {
  v(6pt)
  text(fill: meta, size: 11pt)[#title]
  v(2pt)
  line(length: 100%, stroke: 0.6pt + hairline)
  v(4pt)
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
      if sub != none { linebreak(); text(fill: meta, size: 9.5pt)[#sub] }
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
  v(6pt)
}

#grid(
  columns: (1fr, auto),
  column-gutter: 16pt,
  align: (left + top, right + top),
  [
    #text(size: 20pt, weight: "bold")[Воскобойник Дмитрий]
    #v(-3pt)
    #text(fill: meta, size: 9.5pt)[Мужчина, родился в 2004 году]
    #v(4pt)
    +7 (915) 945-15-30 \
    voskoboinikdmitri\@yandex.ru \
    telegram: \@Fioofa \
    Мой GitHub: #link("https://github.com/qFioofa")[github.com/qFioofa]
    #v(3pt)
    #text(fill: meta, size: 9.5pt)[
      Проживает: Нижний Новгород \
      Гражданство: Россия, есть разрешение на работу: Россия \
      Готов к переезду, готов к командировкам
    ]
  ],
  box(
    width: 80pt,
    height: 80pt,
    radius: 4pt,
    clip: true,
    stroke: 0.6pt + hairline,
  )[#image("img/self.jpeg", width: 100%, height: 100%, fit: "cover")],
)

#section[Желаемая должность и зарплата]
#text(weight: "bold", size: 13pt)[Backend-разработчик (Java / Go)]
#v(2pt)
#text(fill: meta)[Специализации:] Программист, разработчик \
#text(fill: meta)[Тип занятости:] полная, частичная, проектная работа/стажировка \
#text(fill: meta)[Формат работы:] удалённо, гибрид, на месте работодателя \
#text(fill: meta)[Зарплата:] по договорённости

#section[Опыт работы]

#entry(
  "2025 — наст. время",
  none,
  "Debate Timer — клуб переговоров",
  "Проектная работа · github.com/qFioofa/NegotiationTimer",
  "Backend-разработчик",
  [Реалтайм-таймер для клуба переговоров: единое состояние отсчёта для всех
  участников комнаты, синхронизация в реальном времени.],
  (
    [Разработал реалтайм-бэкенд на Phoenix (Elixir): REST + WebSocket API через Phoenix Channels.],
    [Спроектировал stateful-архитектуру на OTP: изолированный процесс (GenServer) на каждую комнату под DynamicSupervisor и Registry.],
    [Развернул фронт и бэк отдельными сервисами в Docker на Railway.],
  ),
  (
    [Обеспечил отказоустойчивость: автоперевыбор хоста при отключении с grace-периодом, авто-очистку пустых комнат, отслеживание онлайна через Presence.],
    [Вывел сервис в продакшен — используется клубом переговоров еженедельно с 2025 года.],
    [Освоил Svelte и Phoenix/Elixir с нуля до рабочего продакшена.],
  ),
)

#entry(
  "2025",
  none,
  "Conflict Generator — Telegram-сервис на базе LLM",
  "Проектная работа · github.com/qFioofa/TuningModelTGBotShowcase",
  "Backend-разработчик",
  [Backend-сервис в Telegram, отдающий сгенерированные конфликтные кейсы для
  тренировки переговоров поверх дообученной LLM.],
  (
    [Спроектировал backend-сервис с модульной архитектурой: хендлеры, ядро, шаблоны, параметры.],
    [Реализовал интеграцию с моделью через Telegram Bot API; контейнеризация и развёртывание через Docker Compose.],
    [Собрал end-to-end пайплайн: сбор датасета → дообучение LLM → продуктовый сервис.],
  ),
  (
    [Собрал и вручную разметил датасет ≈500 записей, опубликовал на Hugging Face.],
    [Довёл сервис до применения в обучении клуба переговоров.],
  ),
)

#entry(
  "2025",
  none,
  "Разработка Telegram-ботов",
  "Проектная работа · github.com/qFioofa/TGBotTemplate",
  "Backend-разработчик",
  [Разработка Telegram-ботов на Python (Bot API) и переиспользуемый шаблон
  для быстрого старта новых ботов.],
  (
    [Разработал переиспользуемый шаблон Telegram-бота: модульная структура, конфигурация, готовая точка старта.],
    [Реализую ботов поверх шаблона с контейнеризацией через Docker.],
  ),
  (
    [Опубликовал шаблон в open-source — ускоряет запуск новых ботов и унифицирует их структуру.],
  ),
)

#section[Предпочитаемые проекты для участия]

#list(
  [Backend высоконагруженных и отказоустойчивых сервисов: распределённые системы, микросервисы, проектирование API (REST / gRPC).],
  [Реалтайм- и stateful-сервисы (WebSocket, событийная модель) — близко к моему опыту с OTP/Phoenix.],
  [Data-intensive задачи: проектирование схем БД, оптимизация запросов, DWH/OLAP, очереди сообщений.],
  [Готов расти в экосистеме Java/Spring и Go: брокеры сообщений, кеширование, наблюдаемость сервисов.],
)

#section[Образование]

#entry(
  "2024 — наст. время",
  none,
  "Школа 21 (Сбер)",
  "Программа по разработке · peer-to-peer",
  "Разработка ПО",
  [Практико-ориентированная программа: 25+ проектов с обязательной
  peer-to-peer проверкой и code review.],
  none,
  (
    [Java: ООП и функциональная парадигма; командная разработка консольного roguelike (JCurses) — общая архитектура, code review.],
    [Go: конкурентность — горутины, каналы, пакет sync (WaitGroup, Mutex, RWMutex).],
    [SQL / базы данных: транзакции и уровни изоляции (ACID), хранимые процедуры, индексы и оптимизация запросов, OLAP-агрегации, проектирование хранилищ данных (DWH).],
    [DevOps / сети: Linux, сети TCP/IP — адресация, маршрутизация.],
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

#section[Навыки]

#field("Знание языков")[
  Русский — Родной \
  Английский — B2 — Средне-продвинутый
]
#v(6pt)

#let taglist(items) = box[
  #items.map(t => box(
    fill: rgb("#f0f0f0"),
    inset: (x: 6pt, y: 2pt),
    radius: 3pt,
    outset: (y: 2pt),
    text(size: 9pt)[#t],
  )).join(h(4pt))
]

#field("Владею")[
  #taglist((
    "Java", "Go", "Python", "PostgreSQL", "SQL",
    "Проектирование схем БД", "Транзакции и изоляция (ACID)", "Индексы",
    "Оптимизация запросов", "Хранимые процедуры", "DWH / OLAP",
    "REST API", "WebSocket", "Telegram Bot API", "Elixir / Phoenix",
    "OTP / GenServer", "Конкурентность (Go)", "Docker", "Docker Compose",
    "Git", "Gradle", "CI/CD", "Linux", "TCP/IP", "Bash",
  ))
]
#v(6pt)
#field("Изучаю")[
  #taglist((
    "Spring Boot", "gRPC", "Kafka / RabbitMQ", "Redis", "Kubernetes",
    "Микросервисы", "Hibernate", "Prometheus / Grafana",
  ))
]

#section[Дополнительная информация]

#field("Обо мне")[
  #list(
    [Организатор и ведущий клуба переговоров: еженедельные встречи (10+ участников); разработал и внедрил инструменты клуба — Debate Timer, Conflict Generator LLM.],
    [Публикую open-source инструменты: #link("https://github.com/qFioofa/physical-keyboard.nvim")[physical-keyboard.nvim], #link("https://github.com/qFioofa/ascii-engine.zig")[ascii-engine.zig] (фреймворк на Zig без зависимостей), #link("https://github.com/qFioofa/tree-sitter-plantuml")[tree-sitter-plantuml].],
    [Использую AI-инструменты для ускорения разработки и подготовки документации.],
    [Интересуюсь отказоустойчивостью, производительностью сервисов и работой с данными.],
  )
  #v(2pt)
  ТГ: \@Fioofa · Тел: +7 (915) 945-15-30 · GitHub: github.com/qFioofa
]
