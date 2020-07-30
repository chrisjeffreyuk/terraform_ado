provider "azuredevops" {
  version = ">= 0.0.1"
  # Remember to specify the org service url and personal access token details below
  org_service_url = "xxxxxxxxxxxxxxxxxxxx"
  personal_access_token = "xxxxxxxxxxxxxxxxxxxx"
}

resource "azuredevops_project" "terraform_ado_project" {
  project_name       = var.project_name
  description        = var.description
  visibility         = var.visibility
  version_control    = var.version_control
  work_item_template = var.work_item_template
  # Enable or desiable the DevOps fetures below (enabled / disabled)
  features = {
      "boards" = "enabled"
      "repositories" = "enabled"
      "pipelines" = "enabled"
      "testplans" = "enabled"
      "artifacts" = "enabled"
  }
}
