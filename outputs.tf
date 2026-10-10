output "cloudwatch_otel_enrichments_id" {
  description = "Map of id values across all cloudwatch_otel_enrichments, keyed the same as var.cloudwatch_otel_enrichments"
  value       = { for k, v in aws_cloudwatch_otel_enrichment.cloudwatch_otel_enrichments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_otel_enrichments_region" {
  description = "Map of region values across all cloudwatch_otel_enrichments, keyed the same as var.cloudwatch_otel_enrichments"
  value       = { for k, v in aws_cloudwatch_otel_enrichment.cloudwatch_otel_enrichments : k => v.region if v.region != null && length(v.region) > 0 }
}

