# --- compute/main.tf  --- #





resource "aws_instance" "bastian" {
  instance_type = "t2.micro"
  ami           = "ami-081c75eaeac28ac34"
  vpc_security_group_ids = [
    aws_security_group.bastian_sg.id
  ]
  subnet_id = module.vpc.public_subnets[0]
  key_name  = aws_key_pair.demo.key_name
  tags = {
    Name = "bastion"
  }


}
