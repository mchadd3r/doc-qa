FROM python:3.10
COPY ./requirements.txt /tmp/
RUN pip install -U pip && pip install -r /tmp/requirements.txt
COPY app.py app/
WORKDIR app/
ARG OPENAI_API_KEY
ENTRYPOINT python app.py