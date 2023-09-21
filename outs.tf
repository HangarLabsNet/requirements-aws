output "iam_oidc_role_names" {
  value = [ for k, v in local.roles_params : k ]
}
