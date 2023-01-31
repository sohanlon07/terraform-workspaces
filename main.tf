provider "aws" {
    region = "us-east-2"
}


terraform {
  backend "s3" {
    bucket = "terraform-state-file-storage-sohan"
    key  = "workspaces-example/s3/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-state-file-storage-sohan-locks"
    encrypt = true
  }

}

resource "aws_instance" "example" {
    ami = "ami-0fb653ca2d3203ac1"  
    instance_type = "t2.micro"
}
