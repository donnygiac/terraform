variable "resource_group_name" {
  description = "Nome del Resource Group in Azure"
  type        = string
  default     = "DonnyGiacRG"
}

variable "location" {
  description = "Regione di Azure"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "Nome della Virtual Network"
  type        = string
  default     = "DonnyGiacVNet"
}

variable "subnet_name" {
  description = "Nome della Subnet"
  type        = string
  default     = "DonnyGiacSubnet"
}

variable "public_ip_name" {
  description = "Nome del Public IP"
  type        = string
  default     = "DonnyGiacPublicIP"
}

variable "nsg_name" {
  description = "Nome del Network Security Group"
  type        = string
  default     = "DonnyGiacNSG"
}

variable "nic_name" {
  description = "Nome della Network Interface"
  type        = string
  default     = "DonnyGiacNIC"
}

variable "vm_name" {
  description = "Nome della macchina virtuale in Azure"
  type        = string
  default     = "DonnyGiacAzureVM"
}

variable "vm_size" {
  description = "Dimensione della VM in Azure"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Nome utente per l'accesso SSH alla VM in Azure"
  type        = string
  default     = "adminuser"
}

variable "os_disk_name" {
  description = "Nome del disco OS"
  type        = string
  default     = "DonnyGiacOSDisk"
}

variable "ssh_public_key_path" {
  description = "Percorso della chiave SSH pubblica"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "instance_name" {
  description = "Nome dell'istanza per i tag"
  type        = string
  default     = "DonnyGiacVM"
}

variable "environment" {
  description = "Ambiente (es. production, staging)"
  type        = string
  default     = "production"
}

variable "service" {
  description = "Servizio associato all'istanza"
  type        = string
  default     = "web-app"
}
