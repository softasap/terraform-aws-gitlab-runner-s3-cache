output "cache_bucket_arn" {
  value       = aws_s3_bucket.build_cache.arn
  description = "Arn of the created gitlab cache bucket"
}

output "cache_iam_user" {
  value       = aws_iam_user.runner.arn
  description = "Arn of the created iam user with rights to manage cache bucket"
}
