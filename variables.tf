variable "rg_name" {
  description = "Resource group name"
  type        = string
  default     = ""
}


variable "vm_name" {
  description = "Virtual machine name"
  type        = list(string)
  default     = []

}

variable "os" {
  description = "Operating system"
  type        = string
}