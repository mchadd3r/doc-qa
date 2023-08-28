install:
	python -m pip install --upgrade pip &&\
		pip install -r requirements.txt

dev:
	python -m pip install --upgrade pip &&\
		pip install pytest pytest-cov pylint black jupyter

lint:
	pylint --disable=R,C *.py

format:
	black *.py

make build:
	docker build . -t doc_qa:latest

clean:
	rm -rf __pycache__
	rm -rf venv

all: run install lint format test