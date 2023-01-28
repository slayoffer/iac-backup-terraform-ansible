resource "yandex_compute_instance" "vm-1" {
    name = var.name_id
    platform_id = var.platform_id
    zone        = var.instance_zone

    scheduling_policy {
        preemptible = true
    }

    resources {
        cores  = 2
        memory = 2
    }

    boot_disk {
        initialize_params {
            image_id = var.image_id
            size = 50
        }
    }

    network_interface {
        subnet_id = var.subnet_id
        nat       = true
    }

    metadata = {
        user-data = "${file("../../meta.yml")}"
    }
}