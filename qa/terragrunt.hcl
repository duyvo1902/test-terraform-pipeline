# test-terraform-pipeline/qa/terragrunt.hcl
include "root" {
  path = find_in_parent_folders()
}