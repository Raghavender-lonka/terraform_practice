# to add iam users to group

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  # users = var.username_from_module # users name
  users = [for i in aws_iam_user.lb : i.name ] # users name

  group = aws_iam_group.demo_group.name # group name
}

# to create user group

resource "aws_iam_group" "demo_group" {
  name = var.group_from_module
  #   path = "/users/"
}

# to create iam users
resource "aws_iam_user" "lb" {
  count = length(var.username_from_module)
  name     = var.username_from_module[count.index]
  #   path = "/system/"

  tags = {
    tag-key = "demo27"
  }
}
