# AWS Terraform Infrastructure

## Descrizione
Questo progetto Terraform crea un'infrastruttura completa su AWS, includendo una rete virtuale, configurazioni di sicurezza e una macchina virtuale (EC2) configurata per eseguire un server Ubuntu.

## Componenti Creati

### Provider AWS
- Configura l'ambiente AWS nella regione specificata tramite la variabile `aws_region`.

### Virtual Private Cloud (VPC)
- **CIDR**: Utilizza il blocco CIDR definito (es. `10.0.0.0/16`).
- **DNS Support**: Abilita il supporto DNS e la risoluzione degli hostname.
- **Tag**: Assegna il nome definito in `vpc_name`.

### Subnet Pubblica
- **CIDR**: Configurata con il blocco CIDR definito (es. `10.0.1.0/24`).
- **IP Pubblici**: Abilita l'assegnazione automatica degli indirizzi IP pubblici.
- **Zona**: Collocata nella disponibilità di zona specificata (es. `us-east-1a`).
- **Tag**: Assegna il nome definito in `subnet_name`.

### Internet Gateway e Route Table
- **Internet Gateway**: Creato e associato alla VPC.
- **Route Table**: Configurata con una route per `0.0.0.0/0` che instrada tutto il traffico verso l'Internet Gateway.
- **Associazione**: La route table è associata alla subnet pubblica.

### Security Group
- **Ingress Rules**:
  - Permette l'accesso SSH (porta 22) da `0.0.0.0/0`.
  - Permette l'accesso HTTP (porta 80) da `0.0.0.0/0`.
- **Egress Rule**: Consente tutto il traffico in uscita.
- **Scope**: Associato alla VPC creata.

### Istanza EC2 (VM Ubuntu)
- **AMI & Tipo Istanza**: Utilizza l'AMI e il tipo di istanza definiti nelle variabili `ami` e `instance_type`.
- **Networking**:
  - L'istanza viene lanciata nella subnet pubblica appena creata.
  - È associata al security group per gestire gli accessi.
  - **Accesso SSH**: Associato un key pair (nome definito in `key_name`) per l'accesso remoto.
- **Storage**:
  - Configura il volume radice con una dimensione definita in `volume_size`.
- **Tag**:
  - Applica i tag per nome, ambiente e servizio (definiti in `instance_name`, `environment` e `service`).

## Variabili Principali
- `aws_region`: Regione AWS in cui creare l'infrastruttura.
- `vpc_name`: Nome della VPC.
- `subnet_name`: Nome della subnet pubblica.
- `ami`: ID dell'AMI per l'istanza EC2.
- `instance_type`: Tipo di istanza EC2.
- `key_name`: Nome del key pair per l'accesso SSH.
- `volume_size`: Dimensione del volume radice.

## Come Utilizzare
1. Clona il repository.
2. Configura le variabili nel file `variables.tf` o tramite un file `terraform.tfvars`.
3. Esegui i seguenti comandi:
   ```bash
   terraform init
   terraform plan
   terraform apply

# Azure Terraform Infrastructure

## Descrizione
Questa configurazione Terraform crea un ambiente completo in Azure utilizzando variabili per parametrizzare ogni componente. In questo modo è possibile adattare facilmente l'infrastruttura a diversi ambienti (sviluppo, staging, produzione) modificando i valori in `variables.tf` o tramite file `.tfvars`.

## Componenti Creati

### Resource Group
- **Nome**: Definito da `var.resource_group_name`.
- **Location**: Impostata tramite `var.location`.

### Virtual Network (VNet)
- **Nome**: Definito da `var.vnet_name`.
- **Spazio Indirizzi**: Definito da `var.vnet_address_space` (es. `10.1.0.0/16`).

### Subnet
- **Nome**: Definito da `var.subnet_name`.
- **Prefisso degli Indirizzi**: Definito da `var.subnet_address_prefix` (es. `10.1.1.0/24`).

### Public IP
- **Nome**: Definito da `var.public_ip_name`.
- **Allocazione**: Definita da `var.public_ip_allocation_method` (es. `Dynamic`).
- **SKU**: Definita da `var.public_ip_sku` (es. `Basic`).

### Network Security Group (NSG)
- **Nome**: Definito da `var.nsg_name`.
- **Regole**:
  - **SSH Inbound**: Abilita l'accesso sulla porta 22.
  - **HTTP Inbound**: Abilita l'accesso sulla porta 80.

### Network Interface (NIC)
- **Nome**: Definito da `var.nic_name`.
- **Configurazione**:
  - Collegata alla Subnet creata.
  - Associata al Public IP.
  - **IP Privato**: Allocato secondo `var.private_ip_allocation` (es. `Dynamic`).
- **Associazione NSG**: Utilizza una risorsa dedicata per associare il NSG definito alla NIC.

### Macchina Virtuale Linux (Ubuntu)
- **Nome della VM**: Definito da `var.vm_name`.
- **Location**: Stessa del Resource Group (`var.location`).
- **Dimensione della VM**: Impostata tramite `var.vm_size` (es. `Standard_B1s`).
- **Username Amministratore**: Definito da `var.admin_username`.

#### OS Disk
- **Nome**: Definito da `var.os_disk_name`.
- **Caching**: Definito da `var.os_disk_caching` (es. `ReadWrite`).
- **Tipo di Storage**: Definito da `var.os_disk_storage_account_type` (es. `Standard_LRS`).

#### Immagine del Sistema Operativo
- **Publisher**: Definito da `var.image_publisher` (es. `Canonical`).
- **Offer**: Definito da `var.image_offer` (es. `UbuntuServer`).
- **SKU**: Definito da `var.image_sku` (es. `18.04-LTS`).
- **Versione**: Definita da `var.image_version` (es. `latest`).

#### Accesso SSH
- Configurato tramite il blocco `admin_ssh_key` che utilizza la chiave pubblica specificata in `var.ssh_public_key_path`.

#### Tag
- **Name**: Definito da `var.instance_name`.
- **Environment**: Definito da `var.environment`.
- **Service**: Definito da `var.service`.

---

## Come Utilizzare
1. Clona il repository.
2. Configura le variabili nel file `variables.tf` o tramite un file `.tfvars`.
3. Esegui i seguenti comandi:
   ```bash
   terraform init
   terraform plan
   terraform apply

# Infracost

1. infracost breakdown --path .