<p align="center">
  <img src="./p/hi-cat.gif" width="120" height="120" alt="avatar">
</p>

<h1 align="center">💻 Backend-разработчик</h1>

<p align="center">
  <b>REST API и микросервисы:</b> от схемы БД и миграций до деплоя в Docker.
</p>

<p align="center">
  <a href="https://github.com/qFioofa">
    <img src="https://img.shields.io/badge/-GitHub-black?style=flat&logo=github&logoColor=white" alt="GitHub">
  </a>
  <a href="mailto:rizzman@yandex.ru">
    <img src="https://img.shields.io/badge/-Email-D14836?style=flat&logo=gmail&logoColor=white" alt="Email">
  </a>
  <a href="https://t.me/Fioofa">
    <img src="https://img.shields.io/badge/-Telegram-0088CC?style=flat&logo=telegram&logoColor=white" alt="Telegram">
  </a>
</p>

---

<h2 align="center">🧰 Стек</h2>

<p align="center">
  <img src="https://go-skill-icons.vercel.app/api/icons?i=java,spring,gradle,postgres,docker,nginx,git" />
</p>

<p align="center">
  <img src="https://go-skill-icons.vercel.app/api/icons?i=githubactions,gitlab,bash,python,linux" />
</p>

<p align="center">
  <img src="https://go-skill-icons.vercel.app/api/icons?i=swagger,postman,maven" />
</p>

---

<h2 align="center">🚀 Проекты</h2>

| Проект | Что сделал | Архитектура | Стек |
| ------ | ---------- | ----------- | ---- |
| [**Advance Shop**](https://github.com/qFioofa/advance-shop-backend.springboot) | REST API интернет-магазина: <b>29 эндпоинтов</b>, семантика PUT/PATCH, единый контракт ошибок, OpenAPI | CQRS-сплит: <b>1 write + 2 read</b> (веса 2:1:1), <b>7 миграций Flyway</b>, вертикальные слои controller → service → dao, Nginx + TLS | ![Java](https://img.shields.io/badge/-Java-orange?style=flat&logo=java) ![Spring](https://img.shields.io/badge/-Spring-6DB33F?style=flat&logo=spring) ![Flyway](https://img.shields.io/badge/-Flyway-CC0200?style=flat) ![Nginx](https://img.shields.io/badge/-Nginx-009639?style=flat&logo=nginx) |
| [**Weather Collection**](https://github.com/qFioofa/weather-collection.postgress) | Time-series пайплайн внутри PostgreSQL: <b>30 городов</b>, опрос каждые 3 мин, retention | TimescaleDB hypertable, hot/cold-тиринг (30 мин + daily-партиции), авто-генерируемые view, pgaudit | ![PostgreSQL](https://img.shields.io/badge/-PostgreSQL-336791?style=flat&logo=postgresql) ![TimescaleDB](https://img.shields.io/badge/-TimescaleDB-2F4D8D?style=flat) ![Python](https://img.shields.io/badge/-Python-3776AB?style=flat&logo=python) |
| [**Payment & Subscription**](https://github.com/qFioofa/payment-subscription.springboot) | Реестр подписок: реальный realtime через SSE, календарно-корректные списания (31 янв → 28/29 фев) | Чистая слоёная архитектура с ручным DI (без component-scan), repository-as-port, <b>16 unit-тестов</b> | ![Java](https://img.shields.io/badge/-Java-orange?style=flat&logo=java) ![Spring](https://img.shields.io/badge/-Spring-6DB33F?style=flat&logo=spring) ![SSE](https://img.shields.io/badge/-SSE-0088CC?style=flat) |
| [**Tic-Tac-Toe**](https://github.com/qFioofa/tic-tac-toe-backend.springboot) | Full-stack игра: <b>dual-JWT</b> auth (access+refresh), depth-aware minimax, лобби, лидерборд | Framework-free домен, Spring Data JDBC + optimistic locking, LED-board, без JPA | ![Java](https://img.shields.io/badge/-Java-orange?style=flat&logo=java) ![Spring](https://img.shields.io/badge/-Spring-6DB33F?style=flat&logo=spring) ![JWT](https://img.shields.io/badge/-JWT-000000?style=flat) |
| [**CI/CD Pipeline**](https://github.com/qFioofa/ci-cd-pipeline.gitlab) | Пайплайн в двух системах: GitLab CI и GitHub Actions из общих скриптов | <b>5 стадий / 7 jobs</b>, <b>11 integration-сценариев</b>, quality-гейт clang-format, деплой по SSH + Telegram | ![GitLab CI](https://img.shields.io/badge/-GitLab%20CI-FC6D26?style=flat&logo=gitlab) ![GitHub Actions](https://img.shields.io/badge/-GitHub%20Actions-2088FF?style=flat&logo=githubactions) ![Bash](https://img.shields.io/badge/-Bash-4EAA25?style=flat) |

📂 Все проекты и демо: [`PROJECTS.md`](./PROJECTS.md)

---

<h2 align="center">📖 О себе</h2>

- ⚙️ Проектирую бэкенд «от и до»: слои `controller → service → dao`, DTO, миграции БД, деплой.
- 🔀 Разделяю чтение/запись (CQRS), настраиваю reverse-proxy и CI/CD — довожу сервисы до продакшена.
- 🗄️ Данные: PostgreSQL, TimescaleDB, Flyway (7+ миграций), индексы, партиционирование, статистика.
- 📝 Документирую API: OpenAPI/Swagger (все эндпоинты), JavaDoc, PlantUML-диаграммы.

---

<p align="center">
  🏡 <a href="./CONFIG.md">Персональное окружение</a>
</p>