resource "aws_lambda_function" "Image-Resize-Function-12" {
    filename = "my-app.zip"
    function_name = var.function_name
    role = aws_iam_role.pixilator-role.arn
    handler = "lambda_function.lambda_handler"
    runtime = "python3.12"
    timeout = 60 # 1 min
    memory_size = 128
    source_code_hash = filebase64sha256("my-app.zip")
    environment {
        variables = {
            processed_bucket =  aws_s3_bucket.s3-bucket-1.id
        }
    }
}

resource "aws_lambda_permission" "Image-Resize-Function-13" {
    statement_id = "AllowS3Invoke"
    action = "lambda:InvokeFunction"
    function_name = aws_lambda_function.Image-Resize-Function-12.id
    principal = "s3.amazonaws.com"
    source_arn = aws_s3_bucket.s3-bucket-1.arn
}

resource "aws_cloudwatch_log_group" "Image-Resize-Function-14" {
    name = "/aws/lambda/${aws_lambda_function.Image-Resize-Function-12.function_name}"
    retention_in_days = 30
}