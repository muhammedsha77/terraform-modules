#LOOKUP : Latest ubuntu 22.04 ami
#--------------------------------


#--------------------------------
# EC2 instance
# --------------------------------

resource "aws_instance" "first_instance" {
  ami = var.ami
  instance_type = var.instance_type
  tags = { 
    Name = var.instance_name
 }
}