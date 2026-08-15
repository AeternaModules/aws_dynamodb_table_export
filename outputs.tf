output "dynamodb_table_exports_id" {
  description = "Map of id values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dynamodb_table_exports_arn" {
  description = "Map of arn values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "dynamodb_table_exports_billed_size_in_bytes" {
  description = "Map of billed_size_in_bytes values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.billed_size_in_bytes if v.billed_size_in_bytes != null }
}
output "dynamodb_table_exports_end_time" {
  description = "Map of end_time values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.end_time if v.end_time != null && length(v.end_time) > 0 }
}
output "dynamodb_table_exports_export_format" {
  description = "Map of export_format values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.export_format if v.export_format != null && length(v.export_format) > 0 }
}
output "dynamodb_table_exports_export_status" {
  description = "Map of export_status values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.export_status if v.export_status != null && length(v.export_status) > 0 }
}
output "dynamodb_table_exports_export_time" {
  description = "Map of export_time values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.export_time if v.export_time != null && length(v.export_time) > 0 }
}
output "dynamodb_table_exports_export_type" {
  description = "Map of export_type values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.export_type if v.export_type != null && length(v.export_type) > 0 }
}
output "dynamodb_table_exports_incremental_export_specification" {
  description = "Map of incremental_export_specification values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => one(v.incremental_export_specification) if v.incremental_export_specification != null && length(v.incremental_export_specification) > 0 }
}
output "dynamodb_table_exports_item_count" {
  description = "Map of item_count values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.item_count if v.item_count != null }
}
output "dynamodb_table_exports_manifest_files_s3_key" {
  description = "Map of manifest_files_s3_key values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.manifest_files_s3_key if v.manifest_files_s3_key != null && length(v.manifest_files_s3_key) > 0 }
}
output "dynamodb_table_exports_region" {
  description = "Map of region values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dynamodb_table_exports_s3_bucket" {
  description = "Map of s3_bucket values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.s3_bucket if v.s3_bucket != null && length(v.s3_bucket) > 0 }
}
output "dynamodb_table_exports_s3_bucket_owner" {
  description = "Map of s3_bucket_owner values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.s3_bucket_owner if v.s3_bucket_owner != null && length(v.s3_bucket_owner) > 0 }
}
output "dynamodb_table_exports_s3_prefix" {
  description = "Map of s3_prefix values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.s3_prefix if v.s3_prefix != null && length(v.s3_prefix) > 0 }
}
output "dynamodb_table_exports_s3_sse_algorithm" {
  description = "Map of s3_sse_algorithm values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.s3_sse_algorithm if v.s3_sse_algorithm != null && length(v.s3_sse_algorithm) > 0 }
}
output "dynamodb_table_exports_s3_sse_kms_key_id" {
  description = "Map of s3_sse_kms_key_id values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.s3_sse_kms_key_id if v.s3_sse_kms_key_id != null && length(v.s3_sse_kms_key_id) > 0 }
}
output "dynamodb_table_exports_start_time" {
  description = "Map of start_time values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "dynamodb_table_exports_table_arn" {
  description = "Map of table_arn values across all dynamodb_table_exports, keyed the same as var.dynamodb_table_exports"
  value       = { for k, v in aws_dynamodb_table_export.dynamodb_table_exports : k => v.table_arn if v.table_arn != null && length(v.table_arn) > 0 }
}

