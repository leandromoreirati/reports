module "s3_hourly_label" {
  source         = "git@github.com:leandromoreirati/terraform-terraform-label.git?ref=v0"
  application    = var.application
  environment    = var.environment
  namespace      = "report-hourly"
  business_owner = var.business_owner
}

module "s3_daily_label" {
  source         = "git@github.com:leandromoreirati/terraform-terraform-label.git?ref=v0"
  application    = var.application
  environment    = var.environment
  namespace      = "report-daily"
  business_owner = var.business_owner
}

module "s3_weekely_label" {
  source         = "git@github.com:leandromoreirati/terraform-terraform-label.git?ref=v0"
  application    = var.application
  environment    = var.environment
  namespace      = "report-weekely"
  business_owner = var.business_owner
}