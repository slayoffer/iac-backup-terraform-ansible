variable "instance_zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.instance_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  sensitive = true
  nullable = false
}

variable "cloud_id" {
  default     = "b1g3jddf4nv5e9okle7p"
  type        = string
  description = "Cloud ID"
  sensitive = true
  nullable = false
}

variable "folder_id" {
  default     = "b1g6kb8sqccdk2sg5drr"
  type        = string
  description = "Folder ID"
  sensitive = true
  nullable = false
}
