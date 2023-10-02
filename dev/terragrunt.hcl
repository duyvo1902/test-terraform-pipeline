# test-terraform-pipeline/dev/terragrunt.hcl
include "root" {
  path = find_in_parent_folders()
}