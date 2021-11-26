# My first docker file.
FROM node:16-alpine3.14
RUN echo "Tryin to build my first application"

COPY . /var/www
WORKDIR /var/www

RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm","start"]
