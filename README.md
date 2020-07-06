[![CircleCI](https://circleci.com/gh/dammy092002/devops.svg?style=svg)](https://circleci.com/gh/dammy092002/devops)

## Project Summary

This project shows how to operationalize a Machine Learning Microservice API, given a pre-trained model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 
The Python flask app(app.py)serves out predictions about housing prices through API calls.

### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. 
Some of the main tasks carried out in this project includes:
* Testing project code using linting
* Completing a Dockerfile to containerize this application
* Deploying the containerized application using Docker and making a prediction
* Improving the log statements in the source code for this application
* Configuring Kubernetes and creating a Kubernetes cluster(minikube)
* Deploying a container using kubernetes and making a prediction


---

## Setup the Environment

* Create a virtualenv and activate it. python3 -m venv ~/.devops
* Installing dependencies via project `Makefile`. Many of the project dependencies are listed in the file `requirements.txt`; these can be installed using `pip` commands in the provided `Makefile`. Run the command:
`make install`

### Running `app.py`

1. To run the app in Standalone:  `python3 app.py`
2. To run the app in Docker:  `sudo ./run_docker.sh`
3. To run the app in Kubernetes:  `sudo ./run_kubernetes.sh`

### Repo Files

The following describes the main files in the repository
* app.py: This is the flask app.
* Makefile: This file contains the procedure to install project dependencies(make install), test the app (make test) and lint the code and dockerfile (make lint).
* Dockerfile: This file contains the procedure run to containerize the flask app.
* make_prediction.sh: Run this script to make a prediction.
* requirements.txt: This file contains all the dependencies required by the flas app in this project.
* run_docker.sh: Run this script to containerize and run the containerized application in a docker. It uses the dockerfile
* run_kubernetes.sh: Run this script to create the kubernetes cluster required for the application. It also runs the application on the created cluster and exposes it on configured ports on the host system. 
* upload_docker.sh: Run this script to upload the containerized docker application to the docker repository(docker hub).
* output_txt_files: This folder contains sample prediction output when the app is run in a docker container and in a kubernetes cluster.
