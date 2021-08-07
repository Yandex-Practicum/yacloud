locals {
  registry_name = "todo-registry"
}

provider "yandex" {
  token     = var.yc_token
  folder_id = var.yc_folder
  cloud_id  = var.yc_cloud
  zone      = "ru-central1-c"
}
