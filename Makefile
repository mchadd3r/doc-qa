install:
	python -m pip install --upgrade pip &&\
		pip install -r requirements_dev.txt &&\
		pip install -r requirements.txt

test:
	#python -m pytest --cov=wikiphrases --cov=nlplogic test_corenlp.py

lint:
	pylint --disable=R,C *.py

format:
	black *.py

make build:
	docker build . -t gradio_app:latest

all: install line test