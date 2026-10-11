output "stack_monitoring_maintenance_windows_stops_id" {
  description = "Map of id values across all stack_monitoring_maintenance_windows_stops, keyed the same as var.stack_monitoring_maintenance_windows_stops except keys with no id are omitted"
  value       = { for k, v in oci_stack_monitoring_maintenance_windows_stop.stack_monitoring_maintenance_windows_stops : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stack_monitoring_maintenance_windows_stops_maintenance_window_id" {
  description = "Map of maintenance_window_id values across all stack_monitoring_maintenance_windows_stops, keyed the same as var.stack_monitoring_maintenance_windows_stops except keys with no maintenance_window_id are omitted"
  value       = { for k, v in oci_stack_monitoring_maintenance_windows_stop.stack_monitoring_maintenance_windows_stops : k => v.maintenance_window_id if v.maintenance_window_id != null && length(v.maintenance_window_id) > 0 }
}

