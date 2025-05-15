
locals {
  repositories = yamldecode(file("${path.module}/repositories.yaml"))["allow"]
}

locals {
  conditions = [
    for repo in local.repositories : "repo:${repo}:*"
  ]
}
