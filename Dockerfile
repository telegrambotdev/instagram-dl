FROM amd64/python:3.9.0-alpine

WORKDIR /app

RUN apk update

RUN apk add build-base bash

COPY . .

RUN python3 -m install -r requirements.txt

CMD ["bash","start.sh"]
