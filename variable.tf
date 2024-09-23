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
