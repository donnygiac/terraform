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

variable "vnet_address_space" {
  description = "Spazio indirizzi della Virtual Network"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet_name" {
  description = "Nome della Subnet"
  type        = string
  default     = "DonnyGiacSubnet"
}

variable "subnet_address_prefix" {
  description = "Prefisso di indirizzi della Subnet"
  type        = string
  default     = "10.1.1.0/24"
}

variable "azure_subnet_id" {
  description = "ID della Subnet in Azure per la VM"
  type        = string
}

variable "public_ip_name" {
  description = "Nome del Public IP in Azure"
  type        = string
  default     = "DonnyGiacPublicIP"
}

variable "public_ip_allocation_method" {
  description = "Metodo di allocazione del Public IP"
  type        = string
  default     = "Dynamic"
}

variable "public_ip_sku" {
  description = "SKU del Public IP"
  type        = string
  default     = "Basic"
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

variable "os_disk_caching" {
  description = "Tipo di caching del disco OS"
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "Tipo di account di storage per il disco OS"
  type        = string
  default     = "Standard_LRS"
}

variable "image_publisher" {
  description = "Publisher dell'immagine del sistema operativo"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Offer dell'immagine del sistema operativo"
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "SKU dell'immagine del sistema operativo"
  type        = string
  default     = "18.04-LTS"
}

variable "image_version" {
  description = "Versione dell'immagine del sistema operativo"
  type        = string
  default     = "latest"
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

variable "private_ip_allocation" {
  description = "Metodo di allocazione dell'indirizzo IP privato per la NIC"
  type        = string
  default     = "Dynamic"
}

variable "azure_public_ip_address_id" {
  description = "ID del Public IP in Azure, se esistente, associato alla VM"
  type        = string
}
