
variable "project_name" {
  description = "Name of the ECR repository and project."
  type        = string
  default     = "aws-cicd-lab"

  validation {
    condition = (
      length(var.project_name) >= 2 &&
      length(var.project_name) <= 256 &&
      can(regex("^[a-z0-9]+([._/-][a-z0-9]+)*$", var.project_name))
    )
    error_message = "project_name must be a valid ECR repository name: 2-256 lowercase letters, numbers, and permitted separators."
  }
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "lab"

  validation {
    condition     = contains(["lab", "dev", "test", "staging", "prod"], var.environment)
    error_message = "environment must be one of: lab, dev, test, staging, prod."
  }
}