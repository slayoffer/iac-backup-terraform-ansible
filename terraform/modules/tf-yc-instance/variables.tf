variable "instance_zone" {
  default     = "ru-central1-b"
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.instance_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  sensitive = true
  nullable = false
}

variable "platform_id" {
  default     = "standard-v1"
  type        = string
  description = "Platform ID"
  sensitive = true
  nullable = false
}

variable "name_id" {
  default     = "chapter5-lesson2-std-012-30"
  type        = string
  description = "VM name ID"
  sensitive = true
  nullable = false
}

variable "image_id" {
  default     = "fd80qm01ah03dkqb14lc"
  type        = string
  description = "VM OS image ID"
  sensitive = true
  nullable = false
}

variable "subnet_id" {
  default     = "e2l6gdef5mmrsc7o17om"
  type        = string
  description = "YC subnet ID"
  sensitive = true
  nullable = false
}