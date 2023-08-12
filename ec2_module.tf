module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "ec2_module"
  monitoring             = true
  vpc_security_group_ids = ["sg-0270753a884536229"]
  subnet_id              = "subnet-0528842e52e2c7e2e"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}