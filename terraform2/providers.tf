terraform {
        required_providers {
                  aws = {
                     source = "hashicorp/aws"
                      }
}

}
provider "aws" {
        alias = "us"
        region = "us-east-1"
        access_key = "AKIAROTAYPIQCTH7GJGG"
        secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxx"
}

provider "aws" {
        alias = "ap"
        region = "ap-south-1"
        access_key = "AKIAROTAYPIQCTH7GJGG"
        secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}
