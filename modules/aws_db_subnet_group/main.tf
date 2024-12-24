resource "aws_db_subnet_group" "main" {
  name       = "mssql-subnet-group"
  subnet_ids = [var.subnet_master_1_id]

  tags = {
    Name = "mssql-subnet-group"
  }
}
