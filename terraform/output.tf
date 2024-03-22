output "role_arn" {
    value = aws_iam_role.pixilator-role.arn
}

output "bucket_arn" {
    value = aws_s3_bucket.s3-bucket-2.arn
}

output "bucket_name" {
    value = aws_s3_bucket.s3-bucket-1.arn 
}

output "policy_arn" {
    value = aws_iam_policy.pixilator.arn
}