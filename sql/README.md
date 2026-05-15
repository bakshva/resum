# Анализ успеваемости студентов — SQL

Анализ факторов успеваемости студентов с помощью SQL-запросов.

## Датасет
- **Student Performance (Multiple Linear Regression)**  
  Автор: Nikhil Narayan (nikhil7280)  
  https://www.kaggle.com/datasets/nikhil7280/student-performance-multiple-linear-regression


| Столбец | Описание |
|---|---|
| hours_study | Часов учёбы в день |
| previous_score | Предыдущий балл |
| extracurricular_activities | Внеучебная активность (Yes/No) |
| sleep_hours | Часов сна |
| sample_question | Решено пробных заданий |
| performance_index | Итоговый балл (10–100) |

## Структура

```
create_table.sql          — создание таблицы
hours_performance.sql     — корреляция часов учёбы и успеваемости
performance_categories.sql — разбивка студентов по категориям успеваемости
probe.csv                 — датасет
students.db               — база данных SQLite
```

## Запросы

### Корреляция часов учёбы и успеваемости (`hours_performance.sql`)

Студенты разбиты на группы по количеству часов учёбы, для каждой группы посчитан средний балл.

| hours_group | avg_performance | count |
|---|---|---|
| 1-3 | 46.75 | 3356 |
| 4-6 | 55.62 | 3312 |
| 7-9 | 63.37 | 3332 |

**Вывод:** чем больше часов учёбы, тем выше средний балл — прослеживается положительная корреляция.

### Разбивка по категориям успеваемости (`performance_categories.sql`)

Студенты разделены на три категории через `CASE WHEN`: низкая (10–40), средняя (41–70), высокая (71–100).

| performance_category | count | avg_performance |
|---|---|---|
| low | 2562 | 30.70 |
| mid | 4933 | 55.36 |
| high | 2505 | 80.05 |

**Вывод:** большинство студентов (49%) попадают в среднюю категорию, низкая и высокая группы примерно равны по размеру.

## Стек

SQLite