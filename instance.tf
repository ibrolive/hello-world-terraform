provider "aws" {
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
    region     = "us-east-1"
}

resource "aws_instance" "example" {
    ami           = "ami-13be557e"
    instance_type = "t2.micro"
}