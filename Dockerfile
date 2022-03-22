# Docker file creation
FROM python:3.6

RUN mkdir -p /flaskapp/diabetes
WORKDIR /flaskapp/diabetes

ADD . /flaskapp/diabetes

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "/flaskapp/diabetes/app.py"]