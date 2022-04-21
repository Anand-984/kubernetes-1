#manju@manju-Aspire-ES1-531:~/provider$ cat providers.tf 
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
        secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

provider "aws" {
        alias = "ap"
        region = "ap-south-1"
        access_key = "AKIAROTAYPIQCTH7GJGG"
        secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}
