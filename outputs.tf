output "s3_bucket_cors_configurations_id" {
  description = "Map of id values across all s3_bucket_cors_configurations, keyed the same as var.s3_bucket_cors_configurations"
  value       = { for k, v in aws_s3_bucket_cors_configuration.s3_bucket_cors_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_cors_configurations_bucket" {
  description = "Map of bucket values across all s3_bucket_cors_configurations, keyed the same as var.s3_bucket_cors_configurations"
  value       = { for k, v in aws_s3_bucket_cors_configuration.s3_bucket_cors_configurations : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_cors_configurations_cors_rule" {
  description = "Map of cors_rule values across all s3_bucket_cors_configurations, keyed the same as var.s3_bucket_cors_configurations"
  value       = { for k, v in aws_s3_bucket_cors_configuration.s3_bucket_cors_configurations : k => v.cors_rule if v.cors_rule != null && length(v.cors_rule) > 0 }
}
output "s3_bucket_cors_configurations_expected_bucket_owner" {
  description = "Map of expected_bucket_owner values across all s3_bucket_cors_configurations, keyed the same as var.s3_bucket_cors_configurations"
  value       = { for k, v in aws_s3_bucket_cors_configuration.s3_bucket_cors_configurations : k => v.expected_bucket_owner if v.expected_bucket_owner != null && length(v.expected_bucket_owner) > 0 }
}
output "s3_bucket_cors_configurations_region" {
  description = "Map of region values across all s3_bucket_cors_configurations, keyed the same as var.s3_bucket_cors_configurations"
  value       = { for k, v in aws_s3_bucket_cors_configuration.s3_bucket_cors_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

