output "yandex_vpc_subnet" {
    description = "Yandex.Cloud Subnets map"
    value = data.yandex_vpc_subnet.default
}

output "yandex_vpc_network" {
  description = "Yandex.Cloud Network ID"
  value       = data.yandex_vpc_network.default
} 