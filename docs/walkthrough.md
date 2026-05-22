# Walkthrough

1. Start LocalStack

docker run -d -p 4566:4566 localstack/localstack

2. Deploy Terraform

cd terraform

tflocal init

tflocal apply

3. Run application

docker compose up --build -d

4. Open:

localhost:5000
localhost:9090
localhost:3000

5. Run Janitor

cd janitor

python janitor.py

pytest