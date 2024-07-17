# module "s3_bucket_for_artifacts" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket = "java-artifact"
  

# }



module "s3_bucket_for_logs" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "java-s3-bucket-for-logs"

  # Allow deletion of non-empty bucket
  force_destroy = true

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  attach_elb_log_delivery_policy = true
}