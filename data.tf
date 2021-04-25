data "aws_caller_identity" "current" {}
  
data "template_file" "hourly" {
  template = file("${path.module}/templates/policy.json")

  vars = {
    bucket_name = module.s3_hourly_label.id
    permission = "private"
    account_id = data.aws_caller_identity.current.account_id
    user_name = "lmoreira"
  }
}

data "template_file" "daily" {
  template = file("${path.module}/templates/policy.json")

  vars = {
    bucket_name = module.s3_daily_label.id
    permission = "private"
    account_id = data.aws_caller_identity.current.account_id
    user_name = "lmoreira"
  }
}

data "template_file" "weekely" {
  template = file("${path.module}/templates/policy.json")

  vars = {
    bucket_name = module.s3_weekely_label.id
    permission = "private"
    account_id = data.aws_caller_identity.current.account_id
    user_name = "lmoreira"
  }
}
