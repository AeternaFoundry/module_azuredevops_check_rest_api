variable "check_rest_apis" {
  description = <<EOT
Map of check_rest_apis, attributes below
Required:
    - connected_service_name
    - connected_service_name_selector
    - display_name
    - method
    - project_id
    - target_resource_id
    - target_resource_type
Optional:
    - body
    - completion_event
    - headers
    - retry_interval
    - success_criteria
    - timeout
    - url_suffix
    - variable_group_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    connected_service_name          = string
    connected_service_name_selector = string
    display_name                    = string
    method                          = string
    project_id                      = string
    target_resource_id              = string
    target_resource_type            = string
    body                            = optional(string)
    completion_event                = optional(string)
    headers                         = optional(string)
    retry_interval                  = optional(number)
    success_criteria                = optional(string)
    timeout                         = optional(number)
    url_suffix                      = optional(string)
    variable_group_name             = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        contains(["connectedServiceName", "connectedServiceNameARM"], v.connected_service_name_selector)
      )
    ])
    error_message = "must be one of: \"connectedServiceName\", \"connectedServiceNameARM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        length(v.connected_service_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        contains(["OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "PATCH"], v.method)
      )
    ])
    error_message = "must be one of: \"OPTIONS\", \"GET\", \"HEAD\", \"POST\", \"PUT\", \"DELETE\", \"TRACE\", \"PATCH\""
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        v.body == null || (length(v.body) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        v.headers == null || (length(v.headers) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        v.retry_interval == null || (v.retry_interval >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        v.url_suffix == null || (length(v.url_suffix) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        v.variable_group_name == null || (length(v.variable_group_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.check_rest_apis : (
        v.timeout == null || (v.timeout >= 1 && v.timeout <= 43200)
      )
    ])
    error_message = "must be between 1 and 43200"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

