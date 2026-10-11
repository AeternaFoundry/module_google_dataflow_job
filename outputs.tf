output "dataflow_jobs_id" {
  description = "Map of id values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no id are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataflow_jobs_additional_experiments" {
  description = "Map of additional_experiments values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no additional_experiments are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.additional_experiments if v.additional_experiments != null && length(v.additional_experiments) > 0 }
}
output "dataflow_jobs_deletion_policy" {
  description = "Map of deletion_policy values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dataflow_jobs_effective_labels" {
  description = "Map of effective_labels values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no effective_labels are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "dataflow_jobs_enable_streaming_engine" {
  description = "Map of enable_streaming_engine values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no enable_streaming_engine are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.enable_streaming_engine if v.enable_streaming_engine != null }
}
output "dataflow_jobs_ip_configuration" {
  description = "Map of ip_configuration values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no ip_configuration are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.ip_configuration if v.ip_configuration != null && length(v.ip_configuration) > 0 }
}
output "dataflow_jobs_job_id" {
  description = "Map of job_id values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no job_id are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.job_id if v.job_id != null && length(v.job_id) > 0 }
}
output "dataflow_jobs_kms_key_name" {
  description = "Map of kms_key_name values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no kms_key_name are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.kms_key_name if v.kms_key_name != null && length(v.kms_key_name) > 0 }
}
output "dataflow_jobs_labels" {
  description = "Map of labels values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no labels are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "dataflow_jobs_machine_type" {
  description = "Map of machine_type values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no machine_type are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.machine_type if v.machine_type != null && length(v.machine_type) > 0 }
}
output "dataflow_jobs_max_workers" {
  description = "Map of max_workers values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no max_workers are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.max_workers if v.max_workers != null }
}
output "dataflow_jobs_name" {
  description = "Map of name values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no name are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataflow_jobs_network" {
  description = "Map of network values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no network are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.network if v.network != null && length(v.network) > 0 }
}
output "dataflow_jobs_on_delete" {
  description = "Map of on_delete values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no on_delete are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.on_delete if v.on_delete != null && length(v.on_delete) > 0 }
}
output "dataflow_jobs_parameters" {
  description = "Map of parameters values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no parameters are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "dataflow_jobs_project" {
  description = "Map of project values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no project are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dataflow_jobs_region" {
  description = "Map of region values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no region are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dataflow_jobs_service_account_email" {
  description = "Map of service_account_email values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no service_account_email are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.service_account_email if v.service_account_email != null && length(v.service_account_email) > 0 }
}
output "dataflow_jobs_skip_wait_on_job_termination" {
  description = "Map of skip_wait_on_job_termination values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no skip_wait_on_job_termination are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.skip_wait_on_job_termination if v.skip_wait_on_job_termination != null }
}
output "dataflow_jobs_state" {
  description = "Map of state values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no state are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dataflow_jobs_subnetwork" {
  description = "Map of subnetwork values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no subnetwork are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.subnetwork if v.subnetwork != null && length(v.subnetwork) > 0 }
}
output "dataflow_jobs_temp_gcs_location" {
  description = "Map of temp_gcs_location values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no temp_gcs_location are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.temp_gcs_location if v.temp_gcs_location != null && length(v.temp_gcs_location) > 0 }
}
output "dataflow_jobs_template_gcs_path" {
  description = "Map of template_gcs_path values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no template_gcs_path are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.template_gcs_path if v.template_gcs_path != null && length(v.template_gcs_path) > 0 }
}
output "dataflow_jobs_terraform_labels" {
  description = "Map of terraform_labels values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no terraform_labels are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "dataflow_jobs_transform_name_mapping" {
  description = "Map of transform_name_mapping values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no transform_name_mapping are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.transform_name_mapping if v.transform_name_mapping != null && length(v.transform_name_mapping) > 0 }
}
output "dataflow_jobs_type" {
  description = "Map of type values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no type are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.type if v.type != null && length(v.type) > 0 }
}
output "dataflow_jobs_zone" {
  description = "Map of zone values across all dataflow_jobs, keyed the same as var.dataflow_jobs except keys with no zone are omitted"
  value       = { for k, v in google_dataflow_job.dataflow_jobs : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

