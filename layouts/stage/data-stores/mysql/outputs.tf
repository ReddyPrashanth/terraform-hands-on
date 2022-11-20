output "address" {
  value = aws_db_instance.example.address
  description = "MySQL connection end point."
}

output "port" {
  value = aws_db_instance.example.port
  description = "The database port number."
}