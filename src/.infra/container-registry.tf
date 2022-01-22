resource "aws_ecr_repository" "registry-frontend" {
  name                 = "rolstadlearnk8s-frontend-static"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "registry-api" {
  name                 = "rolstadlearnk8s-frontend-api"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
