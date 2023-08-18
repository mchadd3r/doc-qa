FROM python:3.10
COPY ./requirements.txt /tmp/
RUN pip install -U pip && pip install -r /tmp/requirements.txt
COPY knowledge_gpt /app/knowledge_gpt
COPY main.py app/
WORKDIR /app
#ENTRYPOINT python -m streamlit run main.py
ENTRYPOINT '/bin/bash'