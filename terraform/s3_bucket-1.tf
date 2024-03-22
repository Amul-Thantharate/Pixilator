resource "aws_s3_bucket" "s3-bucket-1" {
    bucket = var.s3-bucket-processed
    lifecycle {
        prevent_destroy = false
    }

    force_destroy = true
}

resource "aws_s3_bucket_versioning" "s3-bucket-versioning-1" {
    bucket = aws_s3_bucket.s3-bucket-1.bucket
    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket" "s3-bucket-2" {
    bucket = var.s3-bucket-source
    lifecycle {
        prevent_destroy = false
    }

    force_destroy = true
}

resource "aws_s3_bucket_versioning" "s3-bucket-versioning-2" {
    bucket = aws_s3_bucket.s3-bucket-2.bucket
    versioning_configuration {
        status = "Enabled"
    }
}

