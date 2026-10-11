variable "dataflow_jobs" {
  description = <<EOT
Map of dataflow_jobs, attributes below
Required:
    - name
    - temp_gcs_location
    - template_gcs_path
Optional:
    - additional_experiments
    - deletion_policy
    - enable_streaming_engine
    - ip_configuration
    - kms_key_name
    - labels
    - machine_type
    - max_workers
    - network
    - on_delete
    - parameters
    - project
    - region
    - service_account_email
    - skip_wait_on_job_termination
    - subnetwork
    - transform_name_mapping
    - zone
    - timeouts (block):
        - update (optional)
EOT

  type = map(object({
    name                         = string
    temp_gcs_location            = string
    template_gcs_path            = string
    additional_experiments       = optional(set(string))
    deletion_policy              = optional(string)
    enable_streaming_engine      = optional(bool)
    ip_configuration             = optional(string)
    kms_key_name                 = optional(string)
    labels                       = optional(map(string))
    machine_type                 = optional(string)
    max_workers                  = optional(number)
    network                      = optional(string)
    on_delete                    = optional(string)
    parameters                   = optional(map(string))
    project                      = optional(string)
    region                       = optional(string)
    service_account_email        = optional(string)
    skip_wait_on_job_termination = optional(bool)
    subnetwork                   = optional(string)
    transform_name_mapping       = optional(map(string))
    zone                         = optional(string)
    timeouts = optional(object({
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataflow_jobs : (
        v.on_delete == null || (contains(["cancel", "drain"], v.on_delete))
      )
    ])
    error_message = "must be one of: \"cancel\", \"drain\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataflow_jobs : (
        v.ip_configuration == null || (contains(["WORKER_IP_PUBLIC", "WORKER_IP_PRIVATE", ""], v.ip_configuration))
      )
    ])
    error_message = "must be one of: \"WORKER_IP_PUBLIC\", \"WORKER_IP_PRIVATE\", \"\""
  }
}

