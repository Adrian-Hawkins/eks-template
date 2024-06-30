# resource "aws_ecr_repository" "foo" {
#   name                 = "bar"
#   image_tag_mutability = "MUTABLE"

#   image_scanning_configuration {
#     scan_on_push = true
#   }
  
# }
resource "aws_ecrpublic_repository" "expressfoo" {

  repository_name = "express"

  catalog_data {
    about_text        = "About Text"
  }

  tags = {
    env = "production"
  }
}