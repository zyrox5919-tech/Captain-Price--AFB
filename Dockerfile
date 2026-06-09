FROM python:3.9.7-slim-buster

RUN apt-get update && apt-get install -y gcc g++ build-essential

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD python3 bot.py
