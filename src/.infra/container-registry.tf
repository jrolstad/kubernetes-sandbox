resource "aws_ecr_repository" "registry" {
  name                 = "rolstadlearnk8s-frontend-static"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
