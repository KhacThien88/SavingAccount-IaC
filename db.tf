module "aws_db_subnet_group" {
  source = "./modules/aws_db_subnet_group"
  providers = {
    aws = aws.region-master
  }
  subnet_master_1 = module.subnet_master_1
}
module "db_rds" {
  source = "./modules/aws_db_instance"
  providers = {
    aws = aws.region-master
  }
  db_subnet_group_name = module.aws_db_subnet_group.name
  sg_db_rds_id = module.aws_db_subnet_group.id
}