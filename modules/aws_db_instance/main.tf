
resource "aws_db_instance" "sqlserver2019" {
  allocated_storage    = 20
  max_allocated_storage = 100
  engine               = "sqlserver-se"
  engine_version       = "15.00.4410.1.v1"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "111111aA@"
  parameter_group_name = "default.sqlserver-se-15.0"
  publicly_accessible  = true
  db_name = "SavingAccount"
  storage_type = "gp2"
  vpc_security_group_ids = [var.sg_db_rds_id]
  db_subnet_group_name = var.db_subnet_group_name
  multi_az             = true
  skip_final_snapshot  = true
  license_model           = "license-included"
  tags = {
    Name = "mssql-instance"
  }
}

