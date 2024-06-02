variable "project_id" {
  type = string
}

variable "kms_key_ring_name" {
  type = string
  default = "example-keyring"
}

variable "crypto_key_name" {
  type = string
  default = "crypto-key-example"
}

variable "crypto_key_purpose" {
  type = string
  default = "ENCRYPT_DECRYPT"
}

variable "crypto_key_rotation_period" {
  type = number
  default = 86400
}
