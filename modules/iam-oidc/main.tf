resource "aws_iam_role" "this" {
  name = var.github_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRoleWithWebIdentity"
        Effect = "Allow"
        Principal = {
          Federated = var.github_oidcp_arn
        }
        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }
          StringLike = {
            "token.actions.githubusercontent.com:sub" = "repo:${var.gibhub_oidc_organization}/${var.gibhub_oidc_repository}:*"
          }
        }
      },
    ]
  })

  inline_policy {
    name = "${var.github_role_name}-inline"
    policy = jsonencode({
      Version   = "2012-10-17"
      Statement = var.role_permission_statements
    })
  }
}
