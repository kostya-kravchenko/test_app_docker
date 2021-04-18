FROM python:3.7

COPY ./app.py /core/app.py
COPY ./requirements.txt /core/requirements.txt

WORKDIR /core/

RUN python -m pip install -U pip
RUN python -m pip install -r requirements.txt

ENV FLASK_APP app.py
ENTRYPOINT python -m flask run --host=0.0.0.0 --port=$PORT