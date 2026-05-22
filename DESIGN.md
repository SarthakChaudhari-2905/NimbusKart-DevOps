# System Design

Terraform
    ↓

LocalStack AWS
    ↓

VPC
 ├── Public Subnet 1
 ├── Public Subnet 2
 └── EC2 Instances

Application Layer
    ↓

Flask App
    ↓

Docker

Monitoring
 ├── Prometheus
 └── Grafana

Cleanup Layer
    ↓

Janitor (boto3)