resource "aws_iam_user" "runner" {
  name = "${var.environment}-gitlabrunner"
  tags = var.tags
}

resource "aws_iam_user_policy" "runner_policy" {
  name   = "grant_${var.environment}_gitlab_cache_bucket_access"
  user   = aws_iam_user.runner.name
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:DeleteObject",
                "s3:Put*",
                "s3:Get*",
                "s3:List*"
            ],
            "Resource": [
                "arn:aws:s3:::${aws_s3_bucket.build_cache.bucket}",
                "arn:aws:s3:::${aws_s3_bucket.build_cache.bucket}/*"

            ]
        }
    ]
}
EOF
}
