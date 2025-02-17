output "vpc_master_id" {
  value = module.vpc_master.id_vpc
}
output "route_table_worker_id" {
  value = module.route-table-worker.id
}
output "route_table_association" {
  value = module.set-worker-default-router-associate.id
}
output "public_ip_vm_1" {
  value = module.master-control-plane.public_ip
}
output "public_ip_vm_2" {
  value = module.worker-1.public_ip
}
output "public_ip_vm_3" {
  value = module.worker-2.public_ip
}
output "private_ip_address_vm_1" {
  value = module.master-control-plane.private_ip
}
output "private_ip_address_vm_2" {
  value = module.worker-1.private_ip
}
output "private_ip_address_vm_3" {
  value = module.worker-2.private_ip
}
output "certificate_arn" {
  value = module.route53-acm.arn
}
output "alb_arn" {
  value = module.lb.arn
}
output "ConnectionStringToRDS" {
  value = module.db_rds.sqlserver_connection_string
  sensitive = true
}