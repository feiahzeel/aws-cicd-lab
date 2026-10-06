terraform {
  backend "s3" {
    bucket       = "aws-cicd-lab-terraform-state-156041445500"
    key          = "aws-cicd-lab/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}