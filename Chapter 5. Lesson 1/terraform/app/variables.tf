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

variable "yc_cloud" {
  type = string
  description = "Yandex Cloud OAuth token"
}

variable "db_name" {
  type = string
  default = "db"
}

variable "db_user" {
  type = string
  default = "user"
}

variable "db_password" {
  type = string
  default = "password"
}