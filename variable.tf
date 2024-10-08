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

variable "storagecontainer2" {
type=string
default= "azurecontainer"
}

variable "accounttier" {
type=string
default= "Standard"
}

variable "accountreplicationtype" {
type=string
default= "LRS"
}

variable "storagecontainer3" {
type=string
default="vhds"
}

variable "containeraccestype" {
type=string
default= "private"
}








variable "service_plan_name" {
  type        = string
default= "serviceplanid"
  description = "The name of the App Service plan."
}

variable "os_type" {
  type        = string
  default     = "Linux"
  description = "The OS type for the App Service Plan."
}

variable "p1v2" {
  type        = string
  default     = "P1v2"
  description = "The SKU name for the App Service Plan."
}

variable "web_app_name" {
  type        = string
default = "linux"
  description = "The name of the Linux Web App."
}
variable "name" {
type=string
default="dns"
}
