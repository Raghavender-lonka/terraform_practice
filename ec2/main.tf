resource "aws_instance" "web" {
  ami           = var.ami_from_module
  instance_type = "t2.micro"

  tags = {
    Name = "Demo27_modules"
    owner = "Raghavender"
    purpose = "Training Tf"
  }
}