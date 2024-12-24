module "aws_db_subnet_group" {
  source = "./modules/aws_db_subnet_group"
  providers = {
    aws = aws.region-master
  }
  subnet_master_1_id = module.subnet_master_1.id
  subnet_master_2_id =  module.subnet_master_2.id
}
module "db_rds" {
  source = "./modules/aws_db_instance"
  providers = {
    aws = aws.region-master
  }
  db_subnet_group_name = module.aws_db_subnet_group.name
  sg_db_rds_id = module.sg-db-rds.id
}