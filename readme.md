[![Kubernetes-Flask with Github Actions](https://github.com/kb1907/Kubernetes-Flask/actions/workflows/main.yml/badge.svg)](https://github.com/kb1907/Kubernetes-Flask/actions/workflows/main.yml)

# Kubernetes-Flask-Github-Actions

Kubernetes-Docker-Flask-Github Actions folder for MLOPS 2022 Data Scientist Trainees and DS Aspirants.


![kubernete](https://user-images.githubusercontent.com/51021282/175277513-baeb766d-944e-4aed-95d7-8306a7eb5cfd.png)



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

![Screen Shot 2022-06-23 at 12 56 52 PM](https://user-images.githubusercontent.com/51021282/175276974-3cd9a9b8-3f36-4254-a4a8-8b64e084ddd7.png)


Describe the load balanced service

```bash
kubectl describe services kube-flask-service
```
![Screen Shot 2022-06-23 at 12 57 39 PM](https://user-images.githubusercontent.com/51021282/175276935-a3220926-4351-4c24-b27a-3ced5a35cf9e.png)


Then go to http://127.0.0.1:8080/ to see the page.

To cleanup the deployment

```bash
kubectl delete deployment kube-flask
```
