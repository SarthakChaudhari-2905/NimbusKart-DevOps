# Design Document

## Objective

To build a cloud-native DevOps environment using Infrastructure as Code, containerization, monitoring, and CI/CD.

---

## Architecture Components

### Terraform
Used for provisioning:
- VPC
- Subnets
- Security Groups
- EC2 instances

### LocalStack
Used to emulate AWS services locally.

### Flask Application
Simple Python application containerized using Docker.

### Docker Compose
Used to orchestrate:
- Flask App
- Prometheus
- Grafana

### Prometheus
Collects application metrics.

### Grafana
Visualizes monitoring metrics.

### Janitor Utility
Python script using boto3 to scan EC2 instances.

### GitHub Actions
Automates:
- Dependency installation
- Docker build
- Janitor tests

---

## Challenges Faced

- LocalStack ELB and AutoScaling limitations
- Prometheus metrics endpoint issue
- GitHub Actions pytest import issues

---

## Improvements

- Add Kubernetes deployment
- Add real AWS deployment
- Add alerting using Grafana Alerts
