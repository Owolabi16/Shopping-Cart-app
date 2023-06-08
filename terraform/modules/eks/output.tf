output "cluster_endpoint" {
  value = aws_eks_cluster.aliu_eks.endpoint
}

output "cluster_certificate_authority" {
  value = aws_eks_cluster.aliu_eks.certificate_authority
}

