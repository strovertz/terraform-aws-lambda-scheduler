variable "schedule_expression" {
  default     = "cron(5 * * * ? *)"
  description = "the aws cloudwatch event rule scheule expression that specifies when the scheduler runs. Default is 5 minuts past the hour. for debugging use 'rate(5 minutes)'. See https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html"
}

variable "tag" {
  default     = "schedule"
  description = "the tag name used on the EC2 or RDS instance to contain the schedule json string for the instance."
}

variable "time" {
  default     = "local"
  description = "timezone to use for scheduler. Can be 'local', 'gmt' or an Olson timezone from https://gist.github.com/ykessler/3349954. default is 'gmt'. local time is for the AWS region."
}

variable "ec2_schedule" {
  type        = string
  default     = "true"
  description = "Whether to do scheduling for EC2 instances."
}

variable "rds_schedule" {
  type        = string
  default     = "false"
  description = "Whether to do scheduling for RDS instances."
}

variable "security_group_ids" {
  type        = list(string)
  default     = []
  description = "list of the vpc security groups to run lambda scheduler in."
}

variable "subnet_ids" {
  type        = list(string)
  default     = []
  description = "list of subnet_ids that the scheduler runs in."
}

variable "resource_name_prefix" {
  default     = ""
  description = "a prefix to apply to resource names created by this module."
}

variable "aws_profile" {
  type        = string
  description = "Informar o profile configurado no aws cli"
  default     = "rbm-dimensa"
}

variable "aws_region" {
  type        = string
  description = "Preecha a região a ser usada."
  default     = "sa-east-1"
}