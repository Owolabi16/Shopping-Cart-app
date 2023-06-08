output "public_ips" {
  value = module.ec2_instances.public_ips
}

output "cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "cluster_certificate_authority" {
  value = module.eks_cluster.cluster_certificate_authority
}
