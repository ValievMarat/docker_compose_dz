FROM python:3.9

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt
COPY . /src

EXPOSE 8000
ENV SECRET_KEY=sdfkgjlskdfg34oiusdkfsldkfh23u42341sasd
ENV DEBUG=True
ENV ALLOWED_HOSTS=localhost
ENV DB_NAME=netology_stocks_products
ENV DB_HOST=postgres
ENV DB_PORT=5432
ENV DB_USER=postgres
ENV DB_PASSWORD=postgres

WORKDIR src

CMD gunicorn stocks_products.wsgi -b 0.0.0.0:8000