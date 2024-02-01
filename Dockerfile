# pull the image from docker hub
FROM python:3.9-alpine

# adds metadata to the image
LABEL authors="Shevan Fernando"
LABEL version="1.0"
LABEL description="A Docker container to serve a simple Python Flask API"

# set work directory
WORKDIR /home/shevan/PycharmProjects/flask_api_with_docker

COPY requirements.txt ./

# create virtual enviroment
RUN python -m venv venv

# activate virtual enviroment
CMD source ./venv/bin/activate

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

ADD main.py ./

ENV FLASK_APP=main
ENV FLASK_ENV=development

CMD flask run -h 0.0.0.0 -p 5000

EXPOSE 5000