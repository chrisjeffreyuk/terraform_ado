# Note that this example should import the GitHub Repo for this code into Azure DevOps. However, it appears as though this is still not fully supported.
# Also at this time only public repos are supported for import.
#
#resource "azuredevops_git_repository" "imported_repo" {
#  project_id = azuredevops_project.terraform_ado_project.id
#  name       = "Imported Repo"
#  initialization {
#    init_type = "Import"
#    source_type = "Git"
#    source_url = "xxxxxxxxxxxxxxxxxxxx
#  }
#}