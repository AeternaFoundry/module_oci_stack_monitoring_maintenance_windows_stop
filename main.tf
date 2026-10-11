resource "oci_stack_monitoring_maintenance_windows_stop" "stack_monitoring_maintenance_windows_stops" {
  for_each = var.stack_monitoring_maintenance_windows_stops

  maintenance_window_id = each.value.maintenance_window_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

