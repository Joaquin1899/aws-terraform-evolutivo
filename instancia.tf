resource "aws_instance" "main" {
  ami           = "ami-08982f1c5bf93d976"  # AMI de Amazon Linux 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  key_name      = "vockey"
  vpc_security_group_ids = [aws_security_group.main.id]  


  tags = {
    Name = "terraform-ec2"
  }
}