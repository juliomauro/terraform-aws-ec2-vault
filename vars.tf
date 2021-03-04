variable "qtd" {
  default = "VM_QUANTITY"
  description = "Quantidade de VMs que serão criadas"
}

variable "provider" {
  default = "__PROVIDER__"
  description = "Nome do provider"
}

variable "cluster_name" {
  default = "__CLUSTER__"
  description = "Nome do cluster"
}

variable "stack_name" {
  default = "__STACKNAME__"
  description = "Nome da stack das máquinas"
}

variable "s_group" {
 type    = "list"
 default = ["sg-facc839e"]
 description = "Security group a ser usado"
}

# PRODSP - vpc-7172db15
# LAB -  vpc-9a4541e2
#
variable "vpc_id" {
  default= "vpc-7172db15"
  description = "VPC que será usada"
}

variable "subnet_id" {
  default= "subnet-bfacbde6"
  description = "Subnet que será usada"
}

variable "key_pair" {
  default = "Infra_CVC_SP.pem"
  description = "Nome da chave PEM"
}

variable "user" {
  default = "centos"
  description = "Usuário de SSH"
}

variable "type" {
  default = "compute"
  description = "Tipo da instância"
}

variable "environment" {
  default = "PROD"
  description = "Nome do ambiente"
}

variable "allow_ssh" {
  default = false
  description = "Permite acesso SSH"
}

variable "allow_http" {
  default = false
  description = "Permite acesso HTTP"
}

variable "public_ip" {
  default = false
  description = "Assinala IP público"
}

variable "attach_eip" {
  default = false
  description = "Assinala Elastic IP"
}

variable "region" {
  default = "sa-east-1a"
  description = "Região a ser utilizada"
}

variable "backup" {
  default = "yes"
  description = "Realizar backup da instância"
}

variable "user-ipa" {
  default = "iac.terraform"
  description = "Usuário do IPA"
}

variable "password-ipa" {
  default = "12qwaszx"
  description = "Senha do IPA"
}

variable "iam_role" {
  default = "osb-ec2"
  description = "EC2 Role"
}

variable "zone" {
  default = "sao-1"
  description = "Nome da zona"
}

variable "ami" {
  default = "VM_AMI"
  description = "ID da AMI"
}

variable "hostname" {
  default = "VM_HOSTNAME"
  description = "Hostname da instância"
}

variable "instance_type" {
  default = "VM_INSTANCETYPE"
  description = "Tipo de instância"
}

variable "business_unit" {
  default = "VM_BU"
  description = "Unidade de negócio"
}

variable "domain_weblogic" {
  default = "VM_DW"
  description = "Dominio weblogic"
}

variable "java_version" {
  default = "VM_JAVA_VERSION"
  description = "Versão do JAVA"
}

variable "product" {
  default = "VM_PRODUCT"
  description = "Nome do produto"
}

variable "domain" {
  default = "VM_DOMAIN"
  description = "Nome do domínio"
}

variable "country" {
  default = "VM_COUNTRY"
  description = "País"
}

variable "ebs_optimized" {
  default = "VM_EBS_OPTIMIZED"
  description = "Otimizar EBS"
}
