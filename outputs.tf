output "check_rest_apis_id" {
  description = "Map of id values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.id }
}
output "check_rest_apis_body" {
  description = "Map of body values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.body }
}
output "check_rest_apis_completion_event" {
  description = "Map of completion_event values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.completion_event }
}
output "check_rest_apis_connected_service_name" {
  description = "Map of connected_service_name values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.connected_service_name }
}
output "check_rest_apis_connected_service_name_selector" {
  description = "Map of connected_service_name_selector values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.connected_service_name_selector }
}
output "check_rest_apis_display_name" {
  description = "Map of display_name values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.display_name }
}
output "check_rest_apis_headers" {
  description = "Map of headers values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.headers }
}
output "check_rest_apis_method" {
  description = "Map of method values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.method }
}
output "check_rest_apis_project_id" {
  description = "Map of project_id values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.project_id }
}
output "check_rest_apis_retry_interval" {
  description = "Map of retry_interval values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.retry_interval }
}
output "check_rest_apis_success_criteria" {
  description = "Map of success_criteria values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.success_criteria }
}
output "check_rest_apis_target_resource_id" {
  description = "Map of target_resource_id values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.target_resource_id }
}
output "check_rest_apis_target_resource_type" {
  description = "Map of target_resource_type values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.target_resource_type }
}
output "check_rest_apis_timeout" {
  description = "Map of timeout values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.timeout }
}
output "check_rest_apis_url_suffix" {
  description = "Map of url_suffix values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.url_suffix }
}
output "check_rest_apis_variable_group_name" {
  description = "Map of variable_group_name values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.variable_group_name }
}
output "check_rest_apis_version" {
  description = "Map of version values across all check_rest_apis, keyed the same as var.check_rest_apis"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.version }
}

