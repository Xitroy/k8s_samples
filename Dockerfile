FROM python:3.7-slim-stretch
COPY simplest-http.py /usr/
RUN apt-get update && apt-get -y install curl
CMD python3 /usr/simplest-http.py
