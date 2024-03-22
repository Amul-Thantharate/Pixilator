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
4. Navigate to the terraform directory
```bash
    cd terraform
```
5. Change S3 bucket name and account_id  in terraform.tfvars 
```bash
    bucket_name = "your-bucket-name"
    account_id = "your-account-id"
```
6. Login Or Create Terraform Cloud Account (https://app.terraform.io/)
7. Create a workspace in Terraform Cloud
8. Create a new API token in Terraform Cloud
9. Set the Terraform Cloud API token as an environment variable
```bash
    export TERRAFORM_TOKEN="your-api-token"
```
10. Initialize the Terraform workspace
```bash
    change the backend configuration in backend.tf file
    terraform init
```
11. Apply the Terraform configuration
```bash
    terraform apply
```
12. Go to lambda function in AWS Console select the lambda function and add the trigger to the S3 bucket named "your-source-bucket-name".
13. Upload the image to the S3 bucket and check the optimized images in the optimized folder.
14. There will be 3 optimized images in the optimized folder with the following dimensions:
    16x16
    32x32
    48x48
    64x64
    8x8
15. You have successfully implemented the serverless event-driven architecture.
16. To destroy the resources run the following command
```bash
    terraform destroy --auto-approve
```

# Conclusion
In this project, we have implemented a serverless event-driven architecture using AWS Lambda and S3. Whenever a new file is uploaded to the S3 bucket, the Lambda function is triggered, and it generates optimized versions of the image in different sizes. This architecture is scalable, cost-effective, and easy to maintain. You can further enhance this project by adding more features and functionalities as per your requirements.

# References
- AWS Lambda: https://aws.amazon.com/lambda/
- AWS S3: https://aws.amazon.com/s3/
- Terraform: https://www.terraform.io/
- Boto3: https://boto3.amazonaws.com/v1/documentation/api/latest/index.html

# Author
- Amul Thantharate

## Happy Coding 😊😊😊😊