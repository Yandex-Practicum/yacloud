variable "yc_cloud" {
  type = string
  description = "Yandex Cloud ID"
}

variable "yc_folder" {
  type = string
  description = "Yandex Cloud folder"
}

variable "yc_token" {
  type = string
  description = "Yandex Cloud OAuth token"
}

variable "user" {
  type = string
  description = "$USER"
}

variable "overload_token" {
  type = string
  description = "token for https://overload.yandex.net"
}

variable "private_key" {
  type    = string
  default = "~/.ssh/id_rsa"
}

variable "public_key" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}