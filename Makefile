install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,W0702 app.py

test:
	python -m pytest -vv test.py

build:
	docker build -t kubernetes-flask .

run:
	docker run -p 8080:8080 kubernetes-flask


run-kube:
	kubectl apply -f kube-flask.yaml

all: install lint test