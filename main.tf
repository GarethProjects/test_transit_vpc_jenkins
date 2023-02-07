#############################################################################
# PROVIDERS BLOCK 
#############################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

#############################################################################
# Resources BLOCK 
#############################################################################


resource "aws_vpc" "my_test_vpc" {
  cidr_block = "172.16.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main_changed_commit"
  }
  lifecycle {
    prevent_destroy = false # Default is false
  }
}
