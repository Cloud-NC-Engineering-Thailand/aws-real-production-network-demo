# Terraform Configuration for AWS Real Production Network Demo

This repository contains a Terraform configuration for provisioning an AWS Real Production Networking. The configuration is split across multiple files for better organization and separation of concerns.

## Prerequisites
- Terraform v1.5.7 or newer.
- AWS CLI configured with the necessary credentials.
- Appropriate IAM permissions to create and manage the specified resources.

## Structure

- `main.tf`: Contains the configuration for the VPC.
- `s3.tf`: Contains the configuration for the S3 bucket that is used for a Terraform remote state storage.
- `providers.tf`: Specifies the required providers and backend configuration for Terraform.
- `variables.tf`: Defines the variables used across the configuration.
- `dev.tfvars`: Contains variable values for the `dev` environment.

## Usage
1. Clone the repository to your local machine.
2. Navigate to the directory containing the Terraform configuration such as "aws-real-production-network-demo".
3. Initialize the Terraform configuration by running:

```bash
$ terraform init
```

4. Apply the Terraform configuration to AWS by running:

```bash
$ terraform apply -var-file=dev.tfvars
```