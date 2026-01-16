variable "instance_type" {
    description = "The type of the instance"
    type = string
    
}

variable "instance_name" {
    description = "The name of the instance"
    type = string
    default = "first-instance"
}


variable "ami" {
    type= string
    description = "the AMI for instance"

}