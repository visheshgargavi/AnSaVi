output "aws_instance_url" {
  description = "URL of load balancer"
  value       = "http://${aws_instance.RockPaperScissor.public_ip}/"
}

