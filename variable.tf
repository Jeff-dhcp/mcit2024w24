variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "azurermresourcegroup"{ 
type=string
default="myresourcegroup"

}
variable "loadbalancer" {
type=string
default="loadbalancer"
}
variable "OSPF" {
type=string
default="OSPF"
}
variable "network" {
type=string
default="network"
}
variable "subnet" {
type=string
default="subnet"
}
variable "secret" {
type=string
default="secret"
}
variable "microsoft" { 
type=string
default="microsoft"
}

variable "location1" {
type=string
default="koreasouth"
}

variable "location2" {
type=string
default="ukwest"
}
variable "location3" {
type=string
default="francesouth"
}

variable "cloud" {
type=string
default="database"
}

variable "storageresourcegroup" {
type=string
default= "storagecontainer"
}

variable "location" {
type=string
default= "centralus"
}




# variables.tf
variable "location" {
  description = "The location for the resources."
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "mcit-exam-rg"
}

variable "vm_names" {
  description = "List of virtual machine names"
  default     = ["mcitexamvm1", "mcitexamvm2", "mcitexamvm3", "mcitexamvm4", "mcitexamvm5"]
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  default     = "adminuser"
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  default     = "Password1234!"
}

variable "vm_size" {
  description = "The size of the virtual machine"
  default     = "Standard_DS1_v2"
}


variable "foods" {
  description = "List of foods"
  type        = list(string)
  default     = ["steak", "pizza", "poutine", "salmon", "chicken"]
}






variable "cars" {
  description = "List of car brands"
  type        = list(string)
  default     = ["lambo", "mclaren", "bughati", "hellcat", "gtr"]
}









