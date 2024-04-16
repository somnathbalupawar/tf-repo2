provider "aws" {
   region = "ap-south-1"
}
terraform {
   backend "s3"{
      bucket = "my-tf-new-bkt"
      key = "terraform.tfstate"
      region = "ap-south-1"
   }  
}
       
resource "aws_instance" "insta1"{
   ami = "ami-007020fd9c84e18c7"
   instance_type = "t2.micro"
   tags = {
      Name = "insta1"
   }
}

