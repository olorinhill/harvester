# Run Terraform
terraform init -var-file=dev.tfvars -reconfigure
terraform plan -var-file=dev.tfvars -out dev.tfplan
terraform apply "dev.tfplan"