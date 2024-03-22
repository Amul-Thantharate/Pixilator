# Serverless Event Driven Architecture 

## Introduction
This Lambda function will be triggered whenever a new file is uploaded to the specified S3 bucket. It will download the file, generate optimized versions of the image in different sizes, and upload them back to the S3 bucket under the optimized folder. Make sure to adjust the permissions and roles associated with the Lambda function to allow it to access S3 and perform necessary operations.

## Prerequisites
- AWS Account (https://aws.amazon.com/)
- AWS CLI (https://aws.amazon.com/cli/)
- Terraform (https://www.terraform.io/)
- Python 3.12 (https://www.python.org/downloads/)
- Boto3 (https://boto3.amazonaws.com/v1/documentation/api/latest/index.html)
- AWS Cli Configure (https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)

# Project Structure
```bash
.
├── README.md
├── my-app.zip
└── terraform
    ├── lambda-function.tf
    ├── outputs.tf
    └── variables.tf
    ├── s3_bucket.tf
    ├── terraform.tfvars
    └── project-role.tf
```

# Steps to run this project
1. Clone the repository
```bash
    git clone https://github.com/Amul-Thantharate/Pixilator.git
```
2. Navigate to the project directory
```bash
    cd Pixilator
```
3. Create a zip file of the lambda function
```bash
    zip -r my-app.zip my-app
```