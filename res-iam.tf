module "github_role_generic" {
  source = "./modules/iam-oidc"

  for_each = local.roles_params

  github_role_name           = each.key
  gibhub_oidc_organization   = var.gibhub_oidc_organization
  gibhub_oidc_repository     = each.value.gibhub_oidc_repository
  github_oidcp_arn           = var.github_oidcp_arn
  role_permission_statements = each.value.role_permission_statements
}

locals {
  roles_params = {
    github-actions = {
      gibhub_oidc_repository = "*"
      role_permission_statements = [
        {
          Effect   = "Allow",
          Action   = "*",
          Resource = "*",
        },
      ]
    }
  }
}
