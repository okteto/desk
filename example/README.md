# Getting Started Guide

A simple Python app (using Flask) to show the power of **Okteto Desk**.

## Configure access to a Kubernetes cluster

You have three options to configure a Kubernetes cluster:

1. Join our [Slack workspace](https://okteto-community.slack.com/join/shared_invite/enQtNDg3MTMyMzA1OTg3LTY1NzE0MGM5YjMwOTAzN2YxZTU3ZjkzNTNkM2Y1YmJjMjlkODU5Mzc1YzY0OThkNWRhYzhkMTM2NWFlY2RkMDk) and ask *Pablo*  for access to our **Okteto Freetier Cluster**.
2. Configure your own Kubernetes cluster in the Cloud. AWS, Azure, Google and Digital Ocean have nice offerings to run Kubernetes as a service.
3. Docker for Mac/Minikube. This is a valid option for demo purposes, but **Okteto Desk** is more powerfull when running in the cloud (CPU and network resources are not limited by local hardware). Nevertheless, configuring **Okteto Desk** with Docker for Mac/Minikube still makes sense, since you will get ride of Docker for Mac/Minikube performance issues by desactivating file synchronization between your local filesystem and the VM running Docker for Mac/Minikube.

## Deploy the sample app in your Okteto Desk

Clone this repo and move to this example folder.

```console
git clone https://github.com/okteto/desk
cd desk/example
```

To deploy your **Okteto Desk**, execute:

```console
okteto desk up
```

After a few seconds, you will have a bash terminal running in the cloud.

To run the sample app, execute:

```console
docker-compose up -d --build
```

In a few seconds, you will have the sample app running in the cloud (note how fast images are pulled and built).

## Access the sample app

You have three different options to access your application.

### Access your application from your okteto desk session

```console
curl localhost
Hello Okteto User!</br>Hostname: ebf2b5258db0</br>><b>Visits:</b> 2
```

### Access your application using ingress rules

You can configure ingress rules to have access to the sample app.
If you are using the **Okteto Freetier Cluster**, your sample app will be avaiable at https://$USERNAME.europe.okteto.net, where your `$USERNAME` will be provided by okteto together with your kubernetes cluster credentials.

### Access your application using kubectl port-forward

From your local terminal, execute the appropiate `kubectl port-forward` command to make the sample app available from *localhost*.

## Modify the sample app

Open your favorite local IDE, go to `app.py` and change the message (line 19) from `Hello` to `Hi` and save the file. Go to the browser, reload the page, and check the result. Your changes were applied instantly and automatically to the app running in your Okteto Desk!

### Destroy your Okteto Desk

In order to destroy your **Okteto Desk**, execute:

```console
okteto desk down
```

from the same folder where you executed `okteto desk up`.

Remember to destroy your **Okteto Desk** before creating a new one in different local folder.

## Summary

Okteto Desk gives you the following advantages:

1. Keep editing your files locally from your favorite IDE.
1. Run your code in the cloud from development, with potentially unlimited CPU/Memory/Network resources.
1. Forget about performance issues when using Docker for Mac/Minikube.
1. Enable a new level of collaboration in your team.
