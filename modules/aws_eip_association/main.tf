resource "aws_eip_association" "eip_associate" {
  instance_id   = var.id_instance
  allocation_id = var.id_eip
}