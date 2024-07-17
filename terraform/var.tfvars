region                        = "us-east-1"
project                       = "final-proj"
terraform                     = true
silo                          = "intern"
owner                         = "sujata.dahal"
name                          = "java"

cidr                           = "10.0.0.0/16"
azs                            = ["us-east-1a", "us-east-1b"]
private_subnets                = ["10.0.1.0/24","10.0.2.0/24"]
public_subnets                 = ["10.0.101.0/24", "10.0.102.0/24"]
database_subnets               = ["10.0.3.0/24","10.0.4.0/24"]
enable_nat_gateway             = true
iam_database_authentication_enabled = true
image_id                       = "ami-0e001c9271cf7f3b9"
launch_template_name           = "java-ec2"
instance_type                  = "t2.micro"
monitoring                     = true
create_iam_instance_profile    = true
ssm_policy                     = "arn:aws:iam::aws:policy/AmazonSSMManagedEC2InstanceDefaultPolicy"
codedeploy                     = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforAWSCodeDeploy"
# s3_policy                      = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
cloudwatch_logs               = "arn:aws:iam::aws:policy/CloudWatchFullAccess"

engine            = "mysql"
engine_version    = "8.0"
instance_class    = "db.t3.micro"
allocated_storage = 5
db_name           = "book"
username          = "root"
port              = "3306"
monitoring_interval = "30"
monitoring_role_name = "rds-monitoring-role-java"
create_monitoring_role = true
create_db_subnet_group = true
deletion_protection = false
family = "mysql8.0"
major_engine_version = "8.0"
manage_master_user_password= true
bucket_name = "java-artifact"
repo_branch = "java-app"
repo_name = "final-project"
repo_owner = "sujatadhl"
email = "sujata.dahal@adex.ltd"

# cloudwatch_event_rule_description = "This is event rule description."
# cloudwatch_event_rule_pattern = {
#   source = [
#     "aws.health"
#   ],
#   detail-type = [
#     "AWS Health Event"
#   ],
#   detail = {
#     service = [
#       "EC2"
#     ],
#     eventTypeCategory = [
#       "issue"
#     ]
#   }
# }