[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ArthurEzenwanne/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ArthurEzenwanne/DevOps_Microservices/tree/master)

## Project Overview

In this project, I apply the skills I acquired in [Udacity DevOps Engineer Nanodegree program](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991) to operationalize a Machine Learning Microservice API. 

I used a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Data for this project was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).
This project tested my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize a achine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project I:
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested

**The implementation of this project showcases my abilities to operationalize production microservices.**

---

## Setup the Environment

** Note: For best effect use a Linux based system and Python3.**

* Create a virtual environment with Python and activate it.
```bash
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
* Run `make install` to install the necessary dependencies.

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Making Predictions
* While `app.py` is running, run `./make_predictions` to make an inference.

### Configuration Steps

* Setup and Configure Docker locally
1. Update the installed packages and package cache on your instance.
    ```sudo yum update -y```
2. Install the most recent Docker Community Edition package.
    ```sudo amazon-linux-extras install docker```
3. Add the <current_user> to the docker group so that you can run Docker commands without using `sudo`.
    ```sudo usermod -a -G docker <current_user>```
4. Close the current SSH terminal window and reconnect to your instance in a new one. Your new SSH session should have the appropriate docker group permissions. Start the Docker service.
    ```sudo service docker start```
5. Verify that the <current_user> can run Docker commands without using `sudo`
    ```docker ps```

* Setup and Configure Kubernetes locally
1. To install the latest minikube stable release on x86-64 Linux using binary download.
    ```
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    ```
2. Start the K8 cluster.
    ```minikube start```
3. Verify the installation by checking the K8 running version.
    ```minikube version```
 
### Run Application Steps

* Run the Docker app and Make Predictions
1. Run and build a docker image. (You may give your docker build a unique name in the shell script file `run_docker.sh`)
    ```./run_docker.sh```
2. Make Predictions (in a new console tab).
    ```./make_prediction.sh```
3. Upload the docker image to an online repository. (Ensure you put in your personal login details in the shell script file `upload_docker.sh`)
    ```./upload_docker.sh```

* Deploy the Flask Application with Kubernetes
1. Ensure that minicube is up and running.
   ```minikube version```
2. To deploy the application on the Kubernetes cluster involves running your containerized application using `kubectl`. The commands to set a docker image path, start up minikube kubectl on port 80, and forward the container port to a host are contained in the `run_kubernetes.sh` file. We now run the shell script.
   ```./run_kubernetes.sh```
3. Make Predictions (in a new console tab).
    ```./make_prediction.sh```
