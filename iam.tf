provider "aws" {
}

resource "aws_iam_user" "import_user_iam" {
  force_destroy        = null
  name                 = "iam-github-user"
  path                 = "/"
  permissions_boundary = null
  tags                 = {
    Name = "Created_By_TF"
  }
 
  lifecycle {
    ignore_changes = [tags]
  }
}
