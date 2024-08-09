output "ScyllaDB_instance_ip" {
  value = module.ScyllaDB.private_ec2_ip
}


output "ScyllaDB_Sg_id" {
  value = module.ScyllaDB.private_ec2_sg_id
}
