    # The configuration for the `remote` backend.
    terraform {
      backend "remote" {
        # The name of your Terraform Cloud organization.
        organization = "demo27"

        # The name of the Terraform Cloud workspace to store Terraform state files in.
        workspaces {
          name = "raghavenderreddylonka"
        }
      }
    }


    resource "aws_instance" "web" {
      ami           = "ami-051dfed8f67f095f5"
      instance_type = "t2.micro"

      tags = {
        Name = "Demo27_modules"
        owner = "Raghavender"
        purpose = "Training Tf"
      }
    }
