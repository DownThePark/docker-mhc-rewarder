FROM php:7.4-cli

COPY ./app/ /app

RUN apt-get update

RUN apt-get install libgmp-dev -y

RUN docker-php-ext-install gmp

CMD [ "sh", "/app/start.sh" ]
