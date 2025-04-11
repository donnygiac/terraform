variable "vpc_cidr" {
  description = "CIDR block per la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nome della VPC"
  type        = string
  default     = "donnygiac-vpc"
}

variable "subnet_cidr" {
  description = "CIDR block per la Subnet pubblica"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_name" {
  description = "Nome della Subnet"
  type        = string
  default     = "donnygiac-subnet"
}

variable "aws_availability_zone" {
  description = "Zona di disponibilità AWS"
  type        = string
  default     = "us-east-1a"
}

variable "sg_name" {
  description = "Nome del Security Group"
  type        = string
  default     = "instance-sg"
}

variable "ingress_ssh_cidr" {
  description = "CIDR per l'accesso SSH"
  type        = string
  default     = "0.0.0.0/0"
}

variable "ingress_http_cidr" {
  description = "CIDR per l'accesso HTTP"
  type        = string
  default     = "0.0.0.0/0"
}

variable "ami" {
  description = "AMI da utilizzare per l'istanza EC2"
  type        = string
  default     = "ami-005e54dee72cc1d00"
}

variable "instance_type" {
  description = "Tipo di istanza EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nome della key pair per SSH"
  type        = string
}

variable "instance_name" {
  description = "Nome dell'istanza per i tag"
  type        = string
  default     = "DonnyGiacEC2"
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

variable "volume_size" {
  description = "Dimensione del volume radice (in GB)"
  type        = number
  default     = 20
}

variable "subnet_id" {
  description = "ID della Subnet in cui lanciare l'istanza"
  type        = string
}

variable "security_group_id" {
  description = "ID del Security Group da associare all'istanza"
  type        = string
}