install:
	python -m pip install --upgrade pip &&\
		pip install -r requirements_dev.txt &&\
		pip install -r requirements.txt

test:
	

lint:
	pylint --disable=R,C *.py

format:
	black *.py

make build:
	docker build . -t doc_qa:latest

all: install line test