variable "newrelic_app_name" {
  type        = string
  description = <<-EOF
    The name of the application to monitor.

    This field is used to name the resources that will be created by Terraform,
    not to filter metrics in New Relic. Use newrelic_fully_qualified_app_name
    for that.
  EOF
}

variable "newrelic_fully_qualified_app_name" {
  type        = string
  description = "The name that the application was registered in New Relic with."
}

variable "service_url" {
  type        = string
  description = "The URL of the service to be used for synthetics monitoring."
}

variable "runbook_url" {
  type        = string
  default     = null
  description = "URL where the runbook is located."
}

variable "enable_victorops_notifications" {
  type        = bool
  default     = false
  description = "True if VictorOps notifications are desired; false otherwise."
}

variable "victorops_api_key" {
  type        = string
  default     = null
  description = "API key for VictorOps"
}

variable "victorops_urgent_routing_key" {
  type        = string
  default     = null
  description = "Routing key where urgent notifications will be sent."
}

variable "victorops_non_urgent_routing_key" {
  type        = string
  default     = null
  description = "Routing key where non-urgent notifications will be sent."
}

variable "error_rate_5xx_duration" {
  type        = number
  default     = 5
  description = "How long the error threshold must be exceeded for before an alert is raised (in minutes)"
}

variable "error_rate_5xx_threshold" {
  type        = number
  default     = 10
  description = "Error threshold (in percentage)"
}

variable "error_rate_4xx_duration" {
  type        = number
  default     = 5
  description = "How long the error threshold must be exceeded for before an alert is raised (in minutes)"
}

variable "error_rate_4xx_threshold" {
  type        = number
  default     = 30
  description = "Error threshold (in percentage)"
}

variable "high_latency_urgent_duration" {
  type        = number
  default     = 5
  description = "How long the error threshold must be exceeded for before an alert is raised (in minutes)"
}

variable "high_latency_urgent_threshold" {
  type        = number
  default     = 1000
  description = "Latency threshold (in milliseconds)"
}

variable "high_latency_non_urgent_duration" {
  type        = number
  default     = 5
  description = "How long the error threshold must be exceeded for before an alert is raised (in minutes)"
}

variable "high_latency_non_urgent_threshold" {
  type        = number
  default     = 1000
  description = "Latency threshold (in milliseconds)"
}