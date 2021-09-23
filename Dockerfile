FROM python:3.6
ENV PYTHONUNBUFFERED 1
# RUN apt-get update && apt-get install -y 
RUN apt-get update && apt-get -y install libpq-dev gcc gettext && pip install psycopg2
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
WORKDIR /code