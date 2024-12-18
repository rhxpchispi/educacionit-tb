#En esta sección del código, configuramos la región que utilizaremos en el proveedor. 
terraform {
  backend "s3" {
    bucket = "testing-for-educacionit"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}