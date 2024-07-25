resource "aws_s3_bucket" "bucket1" {
	bucket = "aksmit22091993-s3bucket-date"
}

resource "aws_s3_bucket" "bucket2" {
    
}

provider "aws" {
    region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "aksmit22091993-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "aksmit-date-dblocks"
    encrypt        = true
  }
}
