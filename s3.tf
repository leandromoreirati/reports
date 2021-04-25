module "manhattam_hourly" {
  source = "git@github.com:leandromoreirati/tf-module-s3.git"

  name = module.s3_hourly_label.id
  acl  = var.acl

  versioning = [
    {
    enabled = true
    }
  ]

  lifecycle_rule = [
    {
      id                                     = module.s3_hourly_label.id
      enabled                                = true
    }
  ]

  noncurrent_version_transition = [
    {
      days = 30
      storage_class = "STANDARD_IA"
    },
    {
      days = 60
      storage_class = "GLACIER"
    }
  ]

  server_side_encryption_configuration = [
    {
      sse_algorithm = "aws:kms"
    }
  ]

  create_bucket_policy =  true
  policy = data.template_file.hourly.rendered

  tags = module.s3_hourly_label.tags
}

module "manhattam_daily" {
  source = "git@github.com:leandromoreirati/tf-module-s3.git"

  name = module.s3_daily_label.id
  acl  = var.acl

  versioning = [
    {
    enabled = true
    }
  ]

  lifecycle_rule = [
    {
      id                                     = module.s3_daily_label.id
      enabled                                = true
    }
  ]

  noncurrent_version_transition = [
    {
      days = 30
      storage_class = "STANDARD_IA"
    },
    {
      days = 60
      storage_class = "GLACIER"
    }
  ]

  server_side_encryption_configuration = [
    {
      sse_algorithm = "aws:kms"
    }
  ]

  create_bucket_policy =  true
  policy = data.template_file.daily.rendered

  tags = module.s3_daily_label.tags
}

module "manhattam_weekely" {
  source = "git@github.com:leandromoreirati/tf-module-s3.git"

  name = module.s3_weekely_label.id
  acl  = var.acl

  versioning = [
    {
    enabled = true
    }
  ]

  lifecycle_rule = [
    {
      id                                     = module.s3_weekely_label.id
      enabled                                = true
    }
  ]

  noncurrent_version_transition = [
    {
      days = 30
      storage_class = "STANDARD_IA"
    },
    {
      days = 60
      storage_class = "GLACIER"
    }
  ]

  server_side_encryption_configuration = [
    {
      sse_algorithm = "aws:kms"
    }
  ]

  create_bucket_policy =  true
  policy = data.template_file.weekely.rendered

  tags = module.s3_weekely_label.tags
}