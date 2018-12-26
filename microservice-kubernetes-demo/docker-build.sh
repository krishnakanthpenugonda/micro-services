#!/bin/sh
DOCKER_ACCOUNT=bajishaik
docker build --tag=microservice-kubernetes-demo-apache apache
docker tag microservice-kubernetes-demo-apache $DOCKER_ACCOUNT/microservice-kubernetes-demo-apache:v1
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-apache

docker build --tag=microservice-kubernetes-demo-catalog microservice-kubernetes-demo-catalog
docker tag microservice-kubernetes-demo-catalog $DOCKER_ACCOUNT/microservice-kubernetes-demo-catalog:v1
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-catalog

docker build --tag=microservice-kubernetes-demo-customer microservice-kubernetes-demo-customer
docker tag microservice-kubernetes-demo-customer $DOCKER_ACCOUNT/microservice-kubernetes-demo-customer:v1
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-customer

docker build --tag=microservice-kubernetes-demo-order microservice-kubernetes-demo-order
docker tag microservice-kubernetes-demo-order $DOCKER_ACCOUNT/microservice-kubernetes-demo-order:v1
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-order

docker build --tag=microservice-kubernetes-demo-hystrix-dashboard microservice-kubernetes-demo-hystrix-dashboard
docker tag microservice-kubernetes-demo-hystrix-dashboard $DOCKER_ACCOUNT/microservice-kubernetes-demo-hystrix-dashboard:v1
docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-hystrix-dashboard

