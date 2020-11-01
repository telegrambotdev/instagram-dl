FROM amd64/python:3.9.0

WORKDIR /app

RUN apt -qq update

RUN apt -qq install -y build-essential bash py3-tkinter

COPY . .

RUN pip3 install -r requirements.txt

CMD ["bash","start.sh"]
