# Создание через docker-compose по задаче 2.3 (CRUD)

## Для запуска требуется:

### 1. docker-compose up
запуск контейнеров

### 2. docker-compose exec app_stocks_products python manage.py migrate

создание миграций в БД

Для проверки работы api перейти по пути:
http://localhost:7878/api/v1/products/