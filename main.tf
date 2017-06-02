//  Setup the core provider information.
provider "aws" {
  region  = "${var.region}"
}

//  Create the consul-cluster, based on our consul module.
module "consul-cluster" {
  source                   = "./modules/consul"
  region                   = "${var.region}"
  amisize                  = "t2.micro"
  min_size                 = "5"
  max_size                 = "5"
  vpc_cidr                 = "10.0.0.0/16"
  subnetaz1                = "${var.subnetaz1}"
  subnetaz2                = "${var.subnetaz2}"
  subnet_frontend_cidr1    = "10.0.1.0/25"
  subnet_frontend_cidr2    = "10.0.1.128/25"
  subnet_backend_cidr1     = "10.0.2.0/25"
  subnet_backend_cidr2     = "10.0.2.128/25"
  subnet_bastion_cidr1     = "10.0.255.0/25"
  subnet_bastion_cidr2     = "10.0.255.128/25"
  key_name                 = "consul-cluster"
  public_key_path          = "${var.public_key_path}"
  asg_consul_server_name   = "consul-server-asg"
  asg_consul_client_name   = "consul-client-asg"
  consul_server_count      = "3"
  nomad_server_count       = "2"
}

//  We'll also show the DNS to the consul cluster.
/*output "consul-dns" {
  value = "${module.consul-cluster.consul-dns}"
}*/
