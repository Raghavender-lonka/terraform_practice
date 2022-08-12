# output "op-one" {
#   value = module.ec2.op-two # module.module_name.output_name
# }

output "op-users_name" {
  value = module.iam_username.op-user # module.module_name.output_name
}
