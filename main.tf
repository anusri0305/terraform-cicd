resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "WebServer-${var.env_name}"
  }
}

output "instance_ip" {
  value = aws_instance.webserver.public_ip
}