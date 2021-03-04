provider "vault" {
  // vault dev
  address = "http://172.16.65.123:8200"
  version = "~> 1.1"
}

data "vault_generic_secret" "ssh_user" {
  path = "secret/vmware/ssh_user"
}
