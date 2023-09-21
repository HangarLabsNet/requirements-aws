rm -rf .terraform

terraform init \
  -backend-config="bucket=$TERRAFORM_BACKEND_BUCKET" \
  -backend-config="key=$TERRAFORM_BACKEND_KEY" \
  -backend-config="region=$TERRAFORM_BACKEND_REGION" \
  -input=false
