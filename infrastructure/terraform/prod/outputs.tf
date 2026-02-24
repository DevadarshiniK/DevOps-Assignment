output "ecs_service_url" {
  description = "ECS Service URL (via Load Balancer)"
  value       = "http://${aws_lb.main.dns_name}"
}

output "ecr_repository_url" {
  description = "ECR Repository URL for backend"
  value       = aws_ecr_repository.backend.repository_url
}

output "s3_bucket_name" {
  description = "Frontend S3 bucket name"
  value       = aws_s3_bucket.frontend.bucket
}

output "cloudfront_domain" {
  description = "CloudFront distribution domain name"
  value       = aws_cloudfront_distribution.frontend.domain_name
}

output "cdn_endpoint" {
  description = "CDN endpoint URL"
  value       = "https://${aws_cloudfront_distribution.frontend.domain_name}"
}

output "github_actions_role_arn" {
  description = "GitHub Actions IAM role ARN"
  value       = aws_iam_role.github_actions.arn
}

output "backend_bucket_name" {
  description = "Backend bucket name for CDN (S3 origin)"
  value       = aws_s3_bucket.frontend.bucket
}