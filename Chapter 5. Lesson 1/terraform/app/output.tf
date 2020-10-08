output "instance_group_id" {
  value = "${yandex_compute_instance_group.todo_instances.id}"
}

output "postgresql_cluster_id" {
  value = "${yandex_mdb_postgresql_cluster.todo_postgresql.id}"
}

output "load_balancer_id" {
  value = "${yandex_lb_network_load_balancer.todo_lb.id}"
}