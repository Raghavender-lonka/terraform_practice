module "ec2" {
    source = "../"
    ami_from_module = "ami-051dfed8f67f095f5"
    
}

module "sc3" {
  source = "../../sc3"
  bucket_from_module = "demo27-bucket-090822"
}