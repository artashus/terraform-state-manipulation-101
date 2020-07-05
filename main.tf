terraform {
  required_version = "=0.12.26"

    backend "s3" {
    bucket = "tfstate.a.dem.am"
    key    = "twink/terraform-state-manipulation-101/repo1.tfstate"
    region = "eu-central-1"
    dynamodb_table = "tfstate"
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "main" {
  bucket = "20200705-testbucket1" 
  acl    = "private"
}

resource "aws_s3_bucket" "main1" {
  bucket = "20200705-testbucket1-1" 
  acl    = "private"
}


resource "aws_s3_bucket" "group1" {
  count = 4
  bucket = "20200705-group1-${count.index}" 
  acl    = "private"
}


resource "aws_s3_bucket" "group2" {
  count = 4
  bucket = "20200705-group2-${count.index}" 
  acl    = "private"
}


resource "aws_s3_bucket" "group3" {
  count = 4
  bucket = "20200705-group3-${count.index}" 
  acl    = "private"
}

resource "aws_s3_bucket" "important-group" {
  count = 4
  bucket = "20200705-group4-${count.index}" 
  acl    = "private"
}