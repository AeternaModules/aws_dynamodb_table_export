variable "dynamodb_table_exports" {
  description = <<EOT
Map of dynamodb_table_exports, attributes below
Required:
    - s3_bucket
    - table_arn
Optional:
    - export_format
    - export_time
    - export_type
    - region
    - s3_bucket_owner
    - s3_prefix
    - s3_sse_algorithm
    - s3_sse_kms_key_id
    - incremental_export_specification (block):
        - export_from_time (optional)
        - export_to_time (optional)
        - export_view_type (optional)
EOT

  type = map(object({
    s3_bucket         = string
    table_arn         = string
    export_format     = optional(string)
    export_time       = optional(string)
    export_type       = optional(string)
    region            = optional(string)
    s3_bucket_owner   = optional(string)
    s3_prefix         = optional(string)
    s3_sse_algorithm  = optional(string)
    s3_sse_kms_key_id = optional(string)
    incremental_export_specification = optional(object({
      export_from_time = optional(string)
      export_to_time   = optional(string)
      export_view_type = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dynamodb_table_exports : (
        v.s3_prefix == null || (length(v.s3_prefix) >= 0 && length(v.s3_prefix) <= 1024)
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.dynamodb_table_exports : (
        v.s3_sse_kms_key_id == null || (length(v.s3_sse_kms_key_id) >= 0 && length(v.s3_sse_kms_key_id) <= 2048)
      )
    ])
    error_message = "must be between 0 and 2048 characters"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

