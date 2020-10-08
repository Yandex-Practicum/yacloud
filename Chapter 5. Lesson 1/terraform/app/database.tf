locals {
  dbhosts = yandex_mdb_postgresql_cluster.todo_postgresql.host.*.fqdn
}

resource "yandex_mdb_postgresql_cluster" "todo_postgresql" {
  name        = "todo-postgresql"
  folder_id   = var.yc_folder
  environment = "PRODUCTION"
  network_id  = "${yandex_vpc_network.todo-network.id}"

  config {
    version = 12
    resources {
      resource_preset_id = "s2.micro"
      disk_type_id       = "network-ssd"
      disk_size          = 16
    }
  }

  database {
    name  = var.db_name
    owner = var.db_user
  }

  user {
    name     = var.db_user
    password = var.db_password
    permission {
      database_name = var.db_name
    }
  }

  host {
    zone      = "ru-central1-b"
    subnet_id = "${yandex_vpc_subnet.todo-subnet-b.id}"
    assign_public_ip = true
  }
  host {
    zone      = "ru-central1-c"
    subnet_id = "${yandex_vpc_subnet.todo-subnet-c.id}"
    assign_public_ip = true
  }
}
