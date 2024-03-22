resource "aws_iam_role" "pixilator-role" {
    name = "pixilator-role-tf"
    assume_role_policy = file("${path.module}/lambda_role.json")
}

resource "aws_iam_policy" "pixilator" {
    name = "pixilator"
    description = "Policy for pixilator"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*"
            ],
            "Resource": [
                "arn:aws:s3:::${var.s3-bucket-processed}/",
                "arn:aws:s3:::${var.s3-bucket-processed}/*",
                "arn:aws:s3:::${var.s3-bucket-source}/*",
                "arn:aws:s3:::${var.s3-bucket-source}/"

            ]
        },
        {
            "Effect": "Allow",
            "Action": "logs:CreateLogGroup",
            "Resource": "arn:aws:logs:us-east-1:${var.account_id}:*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": [
                "arn:aws:logs:us-east-1:${var.account_id}:log-group:/aws/lambda/${var.function_name}:*"
            ]
        }
    ]
}
EOF
}


resource "aws_iam_role_policy_attachment" "pixilator-attach" {
    role = aws_iam_role.pixilator-role.name
    policy_arn = aws_iam_policy.pixilator.arn
}