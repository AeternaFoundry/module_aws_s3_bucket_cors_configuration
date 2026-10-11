variable "s3_bucket_cors_configurations" {
  description = <<EOT
Map of s3_bucket_cors_configurations, attributes below
Required:
    - bucket
    - cors_rule (block):
        - allowed_headers (optional)
        - allowed_methods (required)
        - allowed_origins (required)
        - expose_headers (optional)
        - id (optional)
        - max_age_seconds (optional)
Optional:
    - expected_bucket_owner
    - region
EOT

  type = map(object({
    bucket                = string
    expected_bucket_owner = optional(string)
    region                = optional(string)
    cors_rule = list(object({
      allowed_headers = optional(set(string))
      allowed_methods = set(string)
      allowed_origins = set(string)
      expose_headers  = optional(set(string))
      id              = optional(string)
      max_age_seconds = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.s3_bucket_cors_configurations : (
        length(v.cors_rule) >= 1 && length(v.cors_rule) <= 100
      )
    ])
    error_message = "Each cors_rule list must contain between 1 and 100 items"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

