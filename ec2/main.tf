resource "aws_instance" "web" {
  ami           = var.ami_from_module
  instance_type = "t2.micro"

  tags = {
    Name = "Demo27_modules"
    owner = "Raghavender"
    purpose = "Training Tf"
  }
}

resource "aws_ebs_volume" "example" {
  count = var.ebs_size ? 1 : 0
  availability_zone = "us-west-2a"
  size              = var.ebs_size

  tags = {
    Name = "demo27"
    Owner = "Raghavender"
    purpose = "Training"

  }
}