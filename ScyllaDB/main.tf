
module "ScyllaDB" {
  source                    = "github.com/mygurkulam-p9/Terrform_Module.git//ec2/private?ref=ec2_module"
  vpc_id                    = data.terraform_remote_state.network.outputs.test_vpc_id
  private_subnet_id         = data.terraform_remote_state.network.outputs.private_subnet_id[2]
  ami_id                    = var.ami_id
  key_name                  = var.key_name
  volume_size               = var.volume_size
  volume_type               = var.volume_type
  encrypted_volume          = var.encrypted_volume
  count_ec2_private         = var.count_ec2_private
  private_instance_type     = var.private_instance_type
  private_name              = var.private_name
  private_tags              = var.private_tags
  zone                      = var.zone
  environment               = var.environment
  private_security_group_name = var.private_security_group_name
  ingress_ports             =  var.ingress_ports
  app_cidr                  =  var.app_cidr
  ssh_cidr                  =  var.ssh_cidr
  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
