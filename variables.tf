variable "project_id" {
  description = "The project ID to host the GCE instance."
  type        = string
}

variable "region" {
  description = "The region to host the GCE instance."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone to host the GCE instance."
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "The name of the GCE instance."
  type        = string
  default     = "mysql-instance"
}

variable "machine_type" {
  description = "The machine type of the GCE instance."
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "The image to use for the GCE instance."
  type        = string
  default     = "debian-cloud/debian-11"
}