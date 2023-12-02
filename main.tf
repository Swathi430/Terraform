provider "aws" {
    access_key = "AKIA4YABMCDJVK4JN5OB"
    secret_key = "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"
    region = "eu-north-1"
}
resource "aws_instance" "vmr" {
    ami = "ami-0fe8bec493a81c7da"
    instance_type = "t3.micro"
    key_name = "jenk2"
    count = 3
    tags = {
      Name = "Mydevops"
    }
}