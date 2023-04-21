provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAY5JSWF3F5W2ICR2D"
  secret_key = "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"
}
resource "aws_instance" "myec2" {
    ami = "ami-0127b2e6f3b9b94d5"
    instance_type = "t2.micro"

tags = {
   Name = "myfirst_tf"
    }
}
resource "aws_instance" "web" {
    ami = "ami-0127b2e6f3b9b94d5"
    instance_type = "t2.micro"
    tags = {
   Name = "myfirst_tf_web"
    }
}
resource "aws_instance" "server" {
    ami = "ami-0127b2e6f3b9b94d5"
    instance_type = "t2.micro"
    tags = {
   Name = "myfirst_tf_server"
    }
}
resource "aws_instance" "db" {
    ami = "ami-0127b2e6f3b9b94d5"
    instance_type = "t2.micro"
    tags = {
   Name = "myfirst_tf_db"
    }
}
