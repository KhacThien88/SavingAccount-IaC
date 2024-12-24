resource "aws_security_group" "rds_sg" {
  name        = "rds-sqlserver-sg"
  description = "Allow SQL Server access"
  vpc_id      = var.vpc_master_id

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}