module "ec2_instances" {
  source = "./modules/ec2"
}

module "eks_cluster" {
  source = "./modules/eks"
}