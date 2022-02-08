#Инструкция по запуску проекта в контейнере docker

1. Скачиваем файлы из репозитория в папку

2. Командой ниже создать образ docker
    ```
    docker build -t stocks-products .
    ```
3. Запустите контейнер, передав в переменную DJANGO_SECRET_KEY необходимое значение

    ```
   docker run -e DJANGO_SECRET_KEY=значение -d -it --name stocks-products -p 8000:8000 stocks-products
   ```