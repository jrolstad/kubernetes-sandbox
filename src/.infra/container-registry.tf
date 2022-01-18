resource "aws_ecr_repository" "registry" {
  name                 = "rolstadlearnk8s-eks"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
