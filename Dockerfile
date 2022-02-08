FROM python:3.10.2-alpine3.15

MAINTAINER Igor Sverchkov <knjaz1989@gmail.com>

COPY . ./stocks_products

WORKDIR /stocks_products

RUN apk update && apk add nano

RUN python -m pip install --upgrade pip && pip install -r requirements.txt

RUN python manage.py makemigrations && python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
