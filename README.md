# NimbusKart DevOps Assignment

## Stack

- Terraform
- LocalStack
- Docker
- Flask
- Prometheus
- Grafana
- boto3
- GitHub Actions

## Features

- VPC creation
- Public subnets
- EC2 instances
- Monitoring
- Metrics endpoint
- Janitor cleanup tool
- CI pipeline

## Run App

cd app

docker build -t nimbuskart-app .

docker run -p 5000:5000 nimbuskart-app

## Monitoring

Prometheus:
http://localhost:9090

Grafana:
http://localhost:3000

## Janitor

cd janitor

python janitor.py

pytest