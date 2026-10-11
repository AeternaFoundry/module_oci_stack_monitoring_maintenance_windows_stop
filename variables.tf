variable "stack_monitoring_maintenance_windows_stops" {
  description = <<EOT
Map of stack_monitoring_maintenance_windows_stops, attributes below
Required:
    - maintenance_window_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    maintenance_window_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

