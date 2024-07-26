/*
******************* DO NOT EDIT THIS NOTICE *****************
This legal notice is added to every supported source code
file at every commit. See the README for more info!                          
*************************************************************
*/

###############################################################################
# Create S3 state bucket at the key account assigned to Terraform state.
###############################################################################
resource "aws_s3_bucket" "terraform_state" {
  provider = aws.key_account_terraform_state
  bucket   = module.global.config.terraform.state.bucket
}

###############################################################################
# Enable versioning on the S3 state bucket at the key account assigned to 
# Terraform state.
###############################################################################
resource "aws_s3_bucket_versioning" "terraform_state" {
  provider = aws.key_account_terraform_state
  bucket   = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

###############################################################################
# Enable logging on the S3 state bucket at the key account assigned to 
# Terraform state.
###############################################################################
resource "aws_s3_bucket_logging" "terraform_state" {
  provider      = aws.key_account_terraform_state
  bucket        = aws_s3_bucket.terraform_state.id
  target_bucket = aws_s3_bucket.s3_access_log_shared_services.id
  target_prefix = "${module.global.config.terraform.state.bucket}/"
}

###############################################################################
# Create DynamoDB state lock table at the key account assigned to Terraform 
# state.
###############################################################################
resource "aws_dynamodb_table" "terraform_state_lock" {
  provider     = aws.key_account_terraform_state
  name         = module.global.config.terraform.state.lock_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
