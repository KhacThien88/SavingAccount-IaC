
resource "aws_db_instance" "sqlserver2019" {
  allocated_storage    = 20
  max_allocated_storage = 100
  engine               = "sqlserver-ex"
  engine_version       = "15.00.4410.1.v1"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "SecurePass123!"
  publicly_accessible  = true
  storage_type = "gp2"
  vpc_security_group_ids = [var.sg_db_rds_id]
  db_subnet_group_name = var.db_subnet_group_name
  multi_az             = false
  skip_final_snapshot  = true
  license_model           = "license-included"

  tags = {
    Name = "mssql-instance"
  }
}

