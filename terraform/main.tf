module "yandex_cloud_instance" {
  source = "./modules/tf-yc-instance"
}

module "yandex_cloud_instance_network" {
  source = "./modules/tf-yc-network"
}

output "yandex_cloud_instance_ips" {
  value = module.yandex_cloud_instance
}

output "yandex_cloud_instance_datasource" {
  value = module.yandex_cloud_instance_network
}