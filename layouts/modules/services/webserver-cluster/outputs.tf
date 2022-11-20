output "alb_dns_name" {
    value = aws_lb.example.dns_name
    description = "The domain name of the load balancer"
}

output "alb_security_group_id" {
  value = aws_security_group.alb.id
  description = "The ID of the security group attached to ALB"
}

output "instance_security_group_id" {
  value = aws_security_group.instance.id
  description = "the ID of the security group attached to instances in ASG"
}