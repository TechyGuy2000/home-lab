variable "private_key_path" {
  description = "The path to the SSH private key"
  type        = string
}

variable "public_key_path" {
  description = "The path to the SSH public key"
  type        = string
}

variable "ci_password" {
  description = "Cloud Init Password"
  type        = string
}

variable "ci_user" {
  description = "Cloud Init User"
  type        = string
}

variable "proxmox_api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "proxmox_api_token_id" {
  description = "Proxmox API token id"
  type        = string
}

variable "proxmox_api_token_secret" {
  description = "Proxmox API token secret"
  type        = string
}




