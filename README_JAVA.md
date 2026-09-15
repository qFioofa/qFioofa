<p align="center">
  <img src="./p/hi-cat.gif" width="120" height="120" alt="avatar">
</p>

<h1 align="center">Backend-разработчик</h1>

<p align="center">
  <b>REST API и микросервисы:</b> от схемы БД и миграций до деплоя в Docker.
</p>

<p align="center">
  <a href="https://github.com/qFioofa/qFioofa/blob/feature/java-backend-hh-rewrite/resume/result/resume_java_hh.pdf">
    <img src="https://img.shields.io/badge/%D0%A0%D0%B5%D0%B7%D1%8E%D0%BC%D0%B5-EC1C24?style=flat&logo=googledocs&logoColor=white" alt="Резюме">
  </a>
  <a href="mailto:rizzman@yandex.ru">
    <img src="https://img.shields.io/badge/-Email-D14836?style=flat&logo=gmail&logoColor=white" alt="Email">
  </a>
  <a href="https://t.me/Fioofa">
    <img src="https://img.shields.io/badge/-Telegram-0088CC?style=flat&logo=telegram&logoColor=white" alt="Telegram">
  </a>
</p>

---

<h2 align="center">Стек</h2>

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

<h2 align="center">Проекты</h2>

| Проект                                                                                   | Что сделал                                                                                                                                                        | Архитектура                                                                                                                                            | Стек                                                                                                                                                                                                                                                                                               |
| ---------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**Advance Shop**](https://github.com/qFioofa/advance-shop-backend.springboot)           | Спроектировал и реализовал <b>e-commerce REST API</b> на Spring Boot: <b>29 эндпоинтов</b> /api/v1, семантика PUT/PATCH, единый контракт ошибок, автодока OpenAPI | Масштабирование на чтение: <b>1 write + 2 read</b> (веса 2:1:1), <b>7 миграций Flyway</b> (схема + seed), слои controller → service → dao, Nginx + TLS | ![Java](https://img.shields.io/badge/-Java-orange?style=flat&logo=java) ![Spring](https://img.shields.io/badge/-Spring-6DB33F?style=flat&logo=spring) ![Flyway](https://img.shields.io/badge/-Flyway-CC0200?style=flat) ![Nginx](https://img.shields.io/badge/-Nginx-009639?style=flat&logo=nginx) |
| [**Weather Collection**](https://github.com/qFioofa/weather-collection.postgress)        | Построил <b>ETL-пайплайн</b> агрегации данных прямо в БД: <b>30 городов</b>, опрос каждые 3 минуты, автогенерация аналитических view                              | Data-engineering: TimescaleDB hypertable, hot/cold-тиринг (30 мин + daily-партиции), индексы под time-series, аудит pgaudit                            | ![PostgreSQL](https://img.shields.io/badge/-PostgreSQL-336791?style=flat&logo=postgresql) ![TimescaleDB](https://img.shields.io/badge/-TimescaleDB-2F4D8D?style=flat) ![Python](https://img.shields.io/badge/-Python-3776AB?style=flat&logo=python)                                                |
| [**Payment & Subscription**](https://github.com/qFioofa/payment-subscription.springboot) | Разработал сервис автоматизации подписок: <b>realtime-обновления через SSE</b>, бизнес-логика с календарными edge-case (31 янв → 28/29 фев)                       | Чистая слоёная архитектура с ручным DI (без component-scan), repository-as-port, покрытие <b>16 unit-тестами</b>                                       | ![Java](https://img.shields.io/badge/-Java-orange?style=flat&logo=java) ![Spring](https://img.shields.io/badge/-Spring-6DB33F?style=flat&logo=spring) ![SSE](https://img.shields.io/badge/-SSE-0088CC?style=flat)                                                                                  |
| [**Tic-Tac-Toe**](https://github.com/qFioofa/tic-tac-toe-backend.springboot)             | Full-stack веб-приложение: <b>stateless JWT-авторизация</b> (access+refresh), ИИ-противник (minimax), лобби и лидерборд                                           | Чистый framework-free домен, Spring Data JDBC + optimistic locking против конкурентных ходов, сборка одной командой                                    | ![Java](https://img.shields.io/badge/-Java-orange?style=flat&logo=java) ![Spring](https://img.shields.io/badge/-Spring-6DB33F?style=flat&logo=spring) ![JWT](https://img.shields.io/badge/-JWT-000000?style=flat)                                                                                  |
| [**CI/CD Pipeline**](https://github.com/qFioofa/ci-cd-pipeline.gitlab)                   | Автоматизировал сборку и деплой в двух CI-системах: GitLab CI и GitHub Actions из общего набора скриптов                                                          | <b>5 стадий / 7 jobs</b> с параллелизацией, <b>11 integration-сценариев</b>, quality-гейт clang-format, деплой по SSH + Telegram-уведомления           | ![GitLab CI](https://img.shields.io/badge/-GitLab%20CI-FC6D26?style=flat&logo=gitlab) ![GitHub Actions](https://img.shields.io/badge/-GitHub%20Actions-2088FF?style=flat&logo=githubactions) ![Bash](https://img.shields.io/badge/-Bash-4EAA25?style=flat)                                         |

---

<h2 align="center">О себе</h2>

- Проектирую бэкенд «от и до»: слои `controller → service → dao`, DTO, миграции БД, деплой.
- Разделяю чтение/запись (CQRS), настраиваю reverse-proxy и CI/CD — довожу сервисы до продакшена.
- Данные: PostgreSQL, TimescaleDB, Flyway (7+ миграций), индексы, партиционирование, статистика.
- Документирую API: OpenAPI/Swagger (все эндпоинты), JavaDoc, PlantUML-диаграммы.

---

<p align="center">
  🏡 <a href="./CONFIG.md">Персональное окружение</a>
</p>
