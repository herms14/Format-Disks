variable "rg_name" {
  description = "Resource group name"
  type        = string
  
}


variable "vm_name" {
  description = "Virtual machine name"
  type        = list(string)
  

}

variable "os" {
  description = "Operating system Windows or Linux"
  type        = string
}