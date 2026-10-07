variable "project_name" {
  description = "Name of the project."
  type        = string

  default = "aws-cicd-lab"
}

variable "environment" {
  description = "Deployment environment."
  type        = string

  default = "lab"
}