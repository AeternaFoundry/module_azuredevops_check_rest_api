resource "azuredevops_check_rest_api" "check_rest_apis" {
  for_each = var.check_rest_apis

  connected_service_name          = each.value.connected_service_name
  connected_service_name_selector = each.value.connected_service_name_selector
  display_name                    = each.value.display_name
  method                          = each.value.method
  project_id                      = each.value.project_id
  target_resource_id              = each.value.target_resource_id
  target_resource_type            = each.value.target_resource_type
  body                            = each.value.body
  completion_event                = each.value.completion_event
  headers                         = each.value.headers
  retry_interval                  = each.value.retry_interval
  success_criteria                = each.value.success_criteria
  timeout                         = each.value.timeout
  url_suffix                      = each.value.url_suffix
  variable_group_name             = each.value.variable_group_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

