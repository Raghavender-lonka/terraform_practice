resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = var.username_from_module

  group = aws_iam_group.demo_group.name
}

resource "aws_iam_group" "demo_group" {
  name = var.group_from_module
  #   path = "/users/"
}
resource "aws_iam_user" "lb" {
  count = length(var.username_from_module)
  name     = var.username_from_module[count.index]
  #   path = "/system/"

  tags = {
    tag-key = "demo27"
  }
}
