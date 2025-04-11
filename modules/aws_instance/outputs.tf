output "instance_id" {
  description = "ID dell'istanza AWS creata"
  value       = aws_instance.donnygiac_webapp.id
}

output "instance_public_ip" {
  description = "Indirizzo IP pubblico dell'istanza AWS creata (se associato)"
  value       = aws_instance.donnygiac_webapp.public_ip
}

output "instance_private_ip" {
  description = "Indirizzo IP privato dell'istanza AWS creata"
  value       = aws_instance.donnygiac_webapp.private_ip
}

output "instance_ami" {
  description = "AMI utilizzata per creare l'istanza AWS"
  value       = aws_instance.donnygiac_webapp.ami
}

output "instance_name_tag" {
  description = "Nome assegnato all'istanza AWS tramite il tag 'Name'"
  value       = aws_instance.donnygiac_webapp.tags["Name"]
}

output "instance_environment_tag" {
  description = "Ambiente (es. production, staging, ecc.) assegnato all'istanza AWS tramite il tag 'Environment'"
  value       = aws_instance.donnygiac_webapp.tags["Environment"]
}

output "instance_service_tag" {
  description = "Servizio associato all'istanza AWS tramite il tag 'Service'"
  value       = aws_instance.donnygiac_webapp.tags["Service"]
}

output "root_block_device_size" {
  description = "Dimensione del disco radice dell'istanza AWS (in GB)"
  value       = aws_instance.donnygiac_webapp.root_block_device[0].volume_size
}