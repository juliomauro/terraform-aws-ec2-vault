resource "aws_instance" "ec2_generic_instance" {
  count                       = "${var.qtd}"
  key_name                    = "${var.key_pair}"
  ami                         = "${var.ami}"
  vpc_security_group_ids      = "${var.s_group}"
  subnet_id                   = "${var.subnet_id}"
  instance_type               = "${var.instance_type}"
  associate_public_ip_address = "${var.attach_eip ? var.attach_eip : var.public_ip}"
  iam_instance_profile        = "${var.iam_role}"
  ebs_optimized               = "${var.ebs_optimized}"
  source_dest_check           = true
  monitoring                  = false

  tags {
    Name        = "${var.type}.${var.hostname}.${var.country}-${var.zone}.${var.domain}"
    Empresa     = "${upper(var.business_unit)}"
    Componente  = "${upper(var.product)}"
    Plataforma  = "SITE"
    Stack       = "${var.stack_name}"
  }

  connection {
    type        = "ssh"
    user        = "${vault_generic_secret.ssh_user}"
    agent       = false
    private_key = "${file("${var.key_pair}")}"
    timeout     = "5m"
  }

  provisioner "remote-exec" {
     inline = [
       "sudo /usr/bin/hostnamectl set-hostname ${var.type}.${var.hostname}.${var.country}-${var.zone}.${var.domain}",
     ]
   }
}
