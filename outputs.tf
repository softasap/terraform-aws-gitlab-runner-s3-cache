output "cache_bucket_arn" {
  value = aws_s3_bucket.build_cache.arn
}

output "cache_iam_user" {
  value = aws_iam_user.runner.arn
}
