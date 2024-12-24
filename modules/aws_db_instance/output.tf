output "sqlserver_connection_string" {
  value = "Server=${aws_db_instance.sqlserver2019.endpoint};Database=SavingAccount;User Id=${aws_db_instance.sqlserver2019.username};Password=${aws_db_instance.sqlserver2019.password};"
}