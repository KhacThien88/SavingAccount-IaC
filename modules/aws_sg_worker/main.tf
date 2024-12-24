resource "aws_security_group" "jenkins-sg-worker" {
  name        = "jenkins-sg-worker"
  description = "Allow TCP/8080 & TCP/22"
  vpc_id      = var.vpc_worker_id
  ingress {
    description = "Allow 22 from our public IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.external_ip]
  }
  ingress {
    description = "Allow 80 from our public IP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.external_ip]
  }
  ingress {
    description = "Allow 81 from our public IP"
    from_port   = 81
    to_port     = 81
    protocol    = "tcp"
    cidr_blocks = [var.external_ip]
  }
  ingress {
    description = "Allow 443 from our public IP"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.external_ip]
  }

  ingress {
    description = "Allow anyone on port 8080"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow anyone on port 32100"
    from_port   = 32100
    to_port     = 32100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow traffic from us-east-1"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.1.0/24"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow 80 from our public IP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.external_ip]
  }
  egress {
    description = "Allow 81 from our public IP"
    from_port   = 81
    to_port     = 81
    protocol    = "tcp"
    cidr_blocks = [var.external_ip]
  }
  egress {
    description = "Allow 443 from our public IP"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.external_ip]
  }

  egress {
    description = "Allow anyone on port 8080"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow anyone on port 32100"
    from_port   = 32100
    to_port     = 32100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}