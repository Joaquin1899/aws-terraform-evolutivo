resource "aws_instance" "main" {
  ami           = "ami-08982f1c5bf93d976"  # AMI de Amazon Linux 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  key_name      = "vockey"
  security_groups = [aws_security_group.main.name]

  tags = {
    Name = "terraform-ec2"
  }
}