# NimbusKart DevOps Assignment

## Project Overview

This project demonstrates a DevOps workflow using:

- Terraform
- LocalStack
- Docker
- Flask
- Prometheus
- Grafana
- GitHub Actions
- Python Janitor Utility

---

## Architecture

(terraform + docker architecture explanation)

---

## Features

- Infrastructure as Code using Terraform
- Dockerized Flask application
- Monitoring using Prometheus and Grafana
- Janitor utility using boto3
- CI pipeline using GitHub Actions
- Local AWS emulation using LocalStack

---

## Folder Structure
devops-assignment/
│── .github/
│   └── workflows/
│       └── ci.yml
│
│── app/
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
│
│── docs/
│   └── walkthrough.md
│
│── janitor/
│   ├── janitor.py
│   ├── constants.py
│   ├── report_generator.py
│   ├── utils.py
│   ├── requirements.txt
│   └── tests/
│       └── test_janitor.py
│
│── monitoring/
│   └── prometheus.yml
│
│── samples/
│   ├── report.example.json
│   └── report.example.md
│
│── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
│       └── network/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf
│
│── .gitignore
│── DESIGN.md
│── docker-compose.yml
│── README.md
└── SUBMISSION.md

---

## Setup Instructions

### Clone Repository

git clone https://github.com/SarthakChaudhari-2905/NimbusKart-DevOps.git

### Run Application

docker compose up --build -d

### Run Terraform

cd terraform
tflocal init
tflocal apply -auto-approve

### Run Janitor

cd janitor
python janitor.py

### Run Tests

pytest

---

## Monitoring

Prometheus:
http://localhost:9090

Grafana:
http://localhost:3000

---

## Screenshots

<img width="1919" height="974" alt="image" src="https://github.com/user-attachments/assets/e48f3bbb-6d3a-45a4-9fd0-e691901041cc" />

<img width="1916" height="968" alt="image" src="https://github.com/user-attachments/assets/15b0f4e0-48bd-4774-b621-39bd13217145" />

<img width="1919" height="972" alt="image" src="https://github.com/user-attachments/assets/85e13eaf-c784-4c78-aee1-a21870382db5" />

<img width="1916" height="974" alt="image" src="https://github.com/user-attachments/assets/2c603f73-b7f8-48a0-9fab-35bc8bb437fb" />

<img width="1919" height="974" alt="image" src="https://github.com/user-attachments/assets/446a9bb0-92c0-49f4-9651-abc979b58e18" />

<img width="1605" height="993" alt="image" src="https://github.com/user-attachments/assets/ff242429-1aa8-443a-a361-4b705cc3c077" />


---

## Author

Sarthak Chaudhari
