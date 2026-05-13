variable "ami_id" {
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instance."
  validation {
    condition     = contains(["t2.micro", "t2.small", "t2.medium"], var.instance_type)
    error_message = "Invalid instance type. Allowed values are: t2.micro, t2.small, t2.medium."
  }
}

variable "sg_ids" {
  type        = list
  description = "A list of security group IDs to associate with the EC2 instance."
}

variable "tags" {
  type        = map
  default     = {}
  description = "A map of tags to assign to the EC2 instance."
}