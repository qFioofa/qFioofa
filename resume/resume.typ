#let accent = rgb("#1e6f5c")
#let ink = rgb("#222222")
#let soft = rgb("#666666")
#let hairline = rgb("#d9d9d9")

#let mono(body, ..args) = text(font: "JetBrainsMono NF", ..args, body)

#set page(margin: (x: 1.6cm, y: 1.1cm))
#set text(font: "Noto Sans", size: 9.5pt, lang: "ru", fill: ink)
#set par(justify: true, leading: 0.72em, spacing: 0.85em)

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
    box(baseline: 30%, image("img/" + icons, height: 12pt))
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
)[#image("img/self.jpeg", width: 100%, height: 100%, fit: "cover")]

#grid(
  columns: (1fr, auto),
  column-gutter: 16pt,
  align: (left + top, right + top),
  [
    #text(size: 22pt, weight: "bold")[Дмитрий Воскобойник]
    #v(-4pt)
    #mono([Backend-разработчик #text(fill: accent)[(Java)]], size: 11pt)
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      ico("\u{f0e0}")[voskoboinikdmitri\@yandex.ru],
      ico("\u{f095}")[+7 (915)
        945-15-30],

      ico("\u{f2c6}")[\@Fioofa], ico("\u{f09b}")[#link("https://github.com/qFioofa")[github.com/qFioofa]],
      ico("\u{f041}")[Нижний Новгород],
    )
  ],
  photo,
)
#v(2pt)
#line(length: 100%, stroke: 1pt + accent)

= О себе

#point(
  "\u{f0e7}",
  [Реалтайм и отказоустойчивость],
  [WebSocket-синхронизация, stateful-сервисы (OTP), автовосстановление
    при сбоях],
)
#point(
  "\u{f121}",
  [Java и глубокий SQL],
  [ООП и функциональная парадигма; транзакции, индексы, хранимые
    процедуры, DWH],
)
#point(
  "\u{f135}",
  [Довожу до продакшена],
  [Docker-деплой, живые пользователи; переношу backend-опыт с Elixir/OTP
    на стек Spring],
)

= Проекты

#card(
  "Debate Timer",
  [таймер для клуба переговоров],
  [Реалтайм-бэкенд на Phoenix/Elixir: WebSocket-синхронизация состояния
    между клиентами, изолированный процесс на комнату, автоперевыбор
    хоста при сбоях. В проде (Docker/Railway), используется на реальных
    встречах клуба переговоров.],
  icons: "stack-timer.svg",
  link("https://github.com/qFioofa/NegotiationTimer")[GitHub],
  link("https://negotiationtimer.up.railway.app/")[Демо],
)

#card(
  "Conflict Generator LLM",
  [конфликтные кейсы для переговоров],
  [Полный ML-пайплайн: датасет \~500 записей с ручной разметкой
    (Hugging Face) → дообучение LLM → Telegram-бот с модульной
    архитектурой (Docker Compose). Применяется в обучении клуба
    переговоров.],
  icons: "stack-llm.svg",
  link("https://github.com/qFioofa/TuningModelTGBotShowcase")[GitHub],
  link(
    "https://huggingface.co/datasets/BroneBonBon/conflict-situations-test",
  )[Датасет],
)

#card(
  "Roguelike на Java",
  [командный проект — Школа 21],
  [Командная разработка консольного roguelike на Java (JCurses):
    ООП-архитектура, code review. Соло-версия жанра на Unity/C\#:
    процедурная генерация уровней, ИИ противников.],
  icons: "stack-rogue.svg",
  link("https://github.com/qFioofa/RoguelikeGame")[GitHub],
)

#text(fill: soft, size: 9pt)[
  Ещё проекты (open-source плагины, a11y, Android):
  #link("https://github.com/qFioofa")[github.com/qFioofa]
]

= Навыки

#let skill(label, body, icons: none) = (
  mono(label, size: 8.5pt, weight: "bold", fill: accent),
  ..if icons != none {
    (body, image("img/" + icons, height: 11pt))
  } else {
    (table.cell(colspan: 2, body),)
  },
)
#table(
  columns: (88pt, 1fr, auto),
  align: (left + horizon, left + horizon, right + horizon),
  inset: (x: 8pt, y: 6pt),
  stroke: (x, y) => (
    top: if y > 0 { 0.5pt + hairline } else { 0pt },
    left: if x > 0 { 0.5pt + hairline } else { 0pt },
  ),
  ..skill("ЯЗЫКИ", icons: "cat-langs.svg")[
    Java, SQL, Python, Go, Kotlin, JS/TS, Bash
  ],
  ..skill("BACKEND", icons: "cat-backend.svg")[
    WebSocket-реалтайм, REST API, stateful-сервисы, отказоустойчивость
    (OTP), Telegram Bot API
  ],
  ..skill("БАЗЫ ДАННЫХ", icons: "cat-db.svg")[
    проектирование схем, транзакции и уровни изоляции, хранимые
    процедуры, индексы, DWH/OLAP
  ],
  ..skill("ИНСТРУМЕНТЫ", icons: "cat-tools.svg")[
    Docker (Compose), Gradle, Git, Linux (NixOS), CI-скрипты
  ],
  ..skill("КОНЦЕПЦИИ")[
    ООП и функциональная парадигма (Java), конкурентность (Go:
    горутины, каналы, sync)
  ],
  ..skill("ЯЗЫКИ (ЕСТ.)")[русский — родной; английский — уровень],
)

= Образование

#ico("\u{f19d}")[#mono("Вуз", weight: "bold", size: 10pt)#text(
    fill: soft,
  )[ — специальность (год — год)]]

#v(1pt)
#ico("\u{f0c0}")[#mono("Школа 21 (Сбер)", weight: "bold", size: 10pt)#text(
    fill: soft,
  )[ — peer-to-peer программа]]
- Командная разработка, code review; треки Java, Go, SQL/DWH, Linux-сети

= Активности

- #ico("\u{f086}")[*Клуб переговоров* — мои продукты (Debate Timer,
    Conflict Generator LLM) используются клубом на регулярных встречах]
- #ico("\u{f091}")[*Хакатон по веб-доступности* — командная работа под
    дедлайн, результат задеплоен:
    #link("https://qfioofa.github.io/hackaton-2026.accessibility/root/")[демо]]
