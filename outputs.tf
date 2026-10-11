output "check_rest_apis_id" {
  description = "Map of id values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no id are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "check_rest_apis_body" {
  description = "Map of body values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no body are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.body if v.body != null && length(v.body) > 0 }
}
output "check_rest_apis_completion_event" {
  description = "Map of completion_event values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no completion_event are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.completion_event if v.completion_event != null && length(v.completion_event) > 0 }
}
output "check_rest_apis_connected_service_name" {
  description = "Map of connected_service_name values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no connected_service_name are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.connected_service_name if v.connected_service_name != null && length(v.connected_service_name) > 0 }
}
output "check_rest_apis_connected_service_name_selector" {
  description = "Map of connected_service_name_selector values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no connected_service_name_selector are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.connected_service_name_selector if v.connected_service_name_selector != null && length(v.connected_service_name_selector) > 0 }
}
output "check_rest_apis_display_name" {
  description = "Map of display_name values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no display_name are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "check_rest_apis_headers" {
  description = "Map of headers values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no headers are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.headers if v.headers != null && length(v.headers) > 0 }
}
output "check_rest_apis_method" {
  description = "Map of method values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no method are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.method if v.method != null && length(v.method) > 0 }
}
output "check_rest_apis_project_id" {
  description = "Map of project_id values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "check_rest_apis_retry_interval" {
  description = "Map of retry_interval values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no retry_interval are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.retry_interval if v.retry_interval != null }
}
output "check_rest_apis_success_criteria" {
  description = "Map of success_criteria values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no success_criteria are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.success_criteria if v.success_criteria != null && length(v.success_criteria) > 0 }
}
output "check_rest_apis_target_resource_id" {
  description = "Map of target_resource_id values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no target_resource_id are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}
output "check_rest_apis_target_resource_type" {
  description = "Map of target_resource_type values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no target_resource_type are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.target_resource_type if v.target_resource_type != null && length(v.target_resource_type) > 0 }
}
output "check_rest_apis_timeout" {
  description = "Map of timeout values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no timeout are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.timeout if v.timeout != null }
}
output "check_rest_apis_url_suffix" {
  description = "Map of url_suffix values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no url_suffix are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.url_suffix if v.url_suffix != null && length(v.url_suffix) > 0 }
}
output "check_rest_apis_variable_group_name" {
  description = "Map of variable_group_name values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no variable_group_name are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.variable_group_name if v.variable_group_name != null && length(v.variable_group_name) > 0 }
}
output "check_rest_apis_version" {
  description = "Map of version values across all check_rest_apis, keyed the same as var.check_rest_apis except keys with no version are omitted"
  value       = { for k, v in azuredevops_check_rest_api.check_rest_apis : k => v.version if v.version != null }
}

