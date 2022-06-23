[![Kubernetes-Flask with Github Actions](https://github.com/kb1907/Kubernetes-Flask/actions/workflows/main.yml/badge.svg)](https://github.com/kb1907/Kubernetes-Flask/actions/workflows/main.yml)

# Kubernetes-Flask-Github-Actions

Kubernetes demo folder for MLOPS 2022 Data Scientist Trainees and DS Aspirants.

### New environment

```bash
    conda create -n kubernetes-flask  python=3.9 -y
```

Activate the environment

```bash
    conda activate kubernetes-flask
```

Requirements File

```bash
    touch requirements.txt
```

### Connect to Github

```bash
git init
```

```bash
git add .
```

```bash
git commit -m "first commit"
```

oneliner updates for readme

```bash
git add . && git commit -m "update Readme.md"
```

pushing changes to new repo

```bash
git remote add origin https://github.com/kb1907/Kubernetes-Flask.git
git branch -M main
git push -u origin main
```

### Run `make all` to install python libraries, lint project, run tests.

### Docker

Dockerfile

```bash
touch Dockerfile
```

Build Docker Image

```bash
docker build -t kubernetes-flask .
```

- or `make build`

List of Images

```bash
docker image ls
```

Run the docker image

```bash
docker run -p 8080:8080 kubernetes-flask
```

- or `make run`

Then go to http://127.0.0.1:8080/ to see the page.

### Kubernetes

Kubernetes yaml

```bash
touch kube-flask.yaml
```

Check how many pods are running

```bash
kubectl get pods
```

Run the application in Kubernetes with loadbalancer service

```bash
kubectl apply -f kube-flask.yaml
```

- or `make run-kube`

Check again how many pods are running

```bash
kubectl get pods
```

Describe the load balanced service

```bash
kubectl describe services kube-flask-service
```

Then go to http://127.0.0.1:8080/ to see the page.

To cleanup the deployment

```bash
kubectl delete deployment kube-flask
```
