resource "google_dataflow_job" "dataflow_jobs" {
  for_each = var.dataflow_jobs

  name                         = each.value.name
  temp_gcs_location            = each.value.temp_gcs_location
  template_gcs_path            = each.value.template_gcs_path
  additional_experiments       = each.value.additional_experiments
  deletion_policy              = each.value.deletion_policy
  enable_streaming_engine      = each.value.enable_streaming_engine
  ip_configuration             = each.value.ip_configuration
  kms_key_name                 = each.value.kms_key_name
  labels                       = each.value.labels
  machine_type                 = each.value.machine_type
  max_workers                  = each.value.max_workers
  network                      = each.value.network
  on_delete                    = each.value.on_delete
  parameters                   = each.value.parameters
  project                      = each.value.project
  region                       = each.value.region
  service_account_email        = each.value.service_account_email
  skip_wait_on_job_termination = each.value.skip_wait_on_job_termination
  subnetwork                   = each.value.subnetwork
  transform_name_mapping       = each.value.transform_name_mapping
  zone                         = each.value.zone

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      update = timeouts.value.update
    }
  }
}

