provider "aws" {
	region = "us-east-1"
}

terraform {
	backend "s3" {
		bucket = "my-tf-test-bucket-cis"
		key = "terraform.tfstate"
		region = "us-east-1"
	}
}

resource "aws_instance" "inst1" {
	ami = "ami-0cd59ecaf368e5ccf"
	instance_type = "t2.micro"
	tags = {
		Name = "new_inst"
		Env = "dev-env"
	}
}
