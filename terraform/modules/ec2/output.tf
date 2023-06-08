output "public_ips" {
  value = aws_instance.aliu_ec2[*].public_ip
}
