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
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = "~> 4.0"
        }
      }
    }
    
    provider "aws" {
      region     = "us-east-2"
      profile = "default"
    }

    resource "aws_instance" "web" {
      ami           = "ami-0568773882d492fc8"
      instance_type = "t2.micro"

      tags = {
        Name = "Demo27_modules"
        owner = "Raghavender"
        purpose = "Training Tf"
      }
    }
