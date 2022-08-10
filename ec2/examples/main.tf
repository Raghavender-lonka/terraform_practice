# module "ec2" {
#     source = "../"
#     ami_from_module = "ami-051dfed8f67f095f5"
    
# }

# module "sc3" {
#   source = "../../sc3"
#   bucket_from_module = "demo27-bucket-090822"
# }

module "iam_username" {
  source = "../../iam_user&group"
  username_from_module = ["demo_user1", "demo_user2", "demo_user3"]
  group_from_module = "demo_group27"

}