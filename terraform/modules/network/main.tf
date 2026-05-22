resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Project="NimbusKart"
    Environment="staging"
    Owner="Sarthak"
    ManagedBy="terraform"
  }
}

resource "aws_subnet" "public1" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.20.1.0/24"

  availability_zone = "us-east-1a"

  map_public_ip_on_launch = true

  tags = {
    Name="public-subnet-1"
    Project="NimbusKart"
    Environment="staging"
    Owner="Sarthak"
    ManagedBy="terraform"
  }
}

resource "aws_subnet" "public2" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.20.2.0/24"

  availability_zone = "us-east-1b"

  map_public_ip_on_launch = true

  tags = {
    Name="public-subnet-2"
    Project="NimbusKart"
    Environment="staging"
    Owner="Sarthak"
    ManagedBy="terraform"
  }
}
resource "aws_security_group" "web_sg" {

  name = "web-security-group"

  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Project="NimbusKart"
    Environment="staging"
    Owner="Sarthak"
    ManagedBy="terraform"
  }

}
resource "aws_instance" "web1" {

  ami = "ami-test"

  instance_type = "t3.micro"

  subnet_id = aws_subnet.public1.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  tags = {
    Name="web-server-1"
    Tier="web"

    Project="NimbusKart"
    Environment="staging"
    Owner="Sarthak"
    ManagedBy="terraform"
  }

}

resource "aws_instance" "web2" {

  ami = "ami-test"

  instance_type = "t3.micro"

  subnet_id = aws_subnet.public2.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  tags = {
    Name="web-server-2"
    Tier="web"

    Project="NimbusKart"
    Environment="staging"
    Owner="Sarthak"
    ManagedBy="terraform"
  }

}
resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.main.id

  tags = {
    Name="nimbuskart-igw"

    Project="NimbusKart"
    Environment="staging"
    Owner="Sarthak"
    ManagedBy="terraform"
  }

}

resource "aws_route_table" "public_rt" {

  vpc_id = aws_vpc.main.id

  route {

    cidr_block = "0.0.0.0/0"

    gateway_id = aws_internet_gateway.igw.id

  }

  tags = {
    Name="public-route-table"

    Project="NimbusKart"
    Environment="staging"
    Owner="Sarthak"
    ManagedBy="terraform"
  }

}

resource "aws_route_table_association" "public1_assoc" {

  subnet_id = aws_subnet.public1.id

  route_table_id = aws_route_table.public_rt.id

}

resource "aws_route_table_association" "public2_assoc" {

  subnet_id = aws_subnet.public2.id

  route_table_id = aws_route_table.public_rt.id

}