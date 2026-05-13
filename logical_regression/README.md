# Предсказание вида ириса - Logical Regression

Учебный проект: предсказание вида ириса по параметрам чашелистника и лепестка

## Что сделано
- Распределения признаков, визуализация выбросов
- Удаление выбросов 
- Обучение LogicalRegression, сравнение качества с выбросами и без
- Метрики: precision, recall, F1-score (classification report)

## Результат

### С выбросами
 
| Класс | Precision | Recall | F1-score | Support |
|---|---|---|---|---|
| setosa | 1.00 | 1.00 | 1.00 | 10 |
| versicolor | 1.00 | 1.00 | 1.00 | 9 |
| virginica | 1.00 | 1.00 | 1.00 | 11 |
| **accuracy** | | | **1.00** | **30** |
 
### Без выбросов
 
| Класс | Precision | Recall | F1-score | Support |
|---|---|---|---|---|
| setosa | 1.00 | 1.00 | 1.00 | 8 |
| versicolor | 1.00 | 0.82 | 0.90 | 11 |
| virginica | 0.83 | 1.00 | 0.91 | 10 |
| **accuracy** | | | **0.93** | **29** |



## Стек
Python, pandas, numpy, sklearn, matplotlib