output "iam_oidc_role_names" {
  value = [ for k, v in local.roles_params : k ]
}

output "packages_bucket_name" {
  value = var.packages_bucket_name
}
