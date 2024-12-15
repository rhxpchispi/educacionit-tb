variable "ambiente" {
	type = string
	description = "Define el ambiente para deploy"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Tipo de instancia de EC2"
}

variable "tags" {
  description = "Dato tipo map de las variables"
  type        = map(string)
  default     = {}
}