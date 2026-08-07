terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.50"
    }
  }

  # --- Remote state backend (recommended once you move past local practice) ---
  # Leave this block empty here and pass values at init time so the same code
  # works across environments without hardcoding a state file location.
  #
  #   terraform init \
  #     -backend-config="bucket=my-tfstate-bucket-unique" \
  #     -backend-config="key=s3-bucket/dev.terraform.tfstate" \
  #     -backend-config="region=ap-south-1" \
  #     -backend-config="dynamodb_table=terraform-locks"
  #
  # For your very first local practice run, comment this whole "backend"
  # block out and Terraform will just use a local terraform.tfstate file.
  # backend "s3" {}
}

provider "aws" {
  region = var.aws_region
}
