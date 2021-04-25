# Report Bucket
This is a use example to the terraform module [tf-module-s3](https://github.com/leandromoreirati/tf-module-s3).

## Use

### Init Terraform Project
```hcl
$ terrform init
```

### Validade Terraform
```hcl
$ terrform validade
```

### Apply Terraform 
```hcl
$ terraform apply -var-file=environments/staging.tfvars -auto-approve  
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |

## Providers

| Name | Version |
|------|---------|
| aws | ~ 2.0 |
| template | ~ 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| acl | n/a | `string` | `"private"` | no |
| application | n/a | `string` | `"manhattan"` | no |
| bucket | The name of the bucket to which to apply the policy. | `string` | `""` | no |
| business\_owner | n/a | `string` | `"leandromoreirati"` | no |
| create\_bucket\_policy | n/a | `string` | `"false"` | no |
| environment | n/a | `string` | `""` | no |
| lifecycle\_rules | Enable or disable lifecycle bucket policy, could be create\_before\_destroy, prevent\_destroy or ignore\_changes. | `map` | `{}` | no |
| logging\_rules | S3 Logging dynamic configuration block. | `list` | `[]` | no |
| policy | The text of the policy. | `string` | `""` | no |
| profile | n/a | `string` | `"lmoreira"` | no |
| region | n/a | `string` | `"us-east-1"` | no |
| versioning | n/a | `string` | `"false"` | no |

## Outputs
| Name | Description |
|------|-------------|
| manhattan\_daily\_arn | ARN of the bucket. |
| manhattan\_daily\_id | Name of the bucket. |
| manhattan\_daily\_name | ARN of the bucket. |
| manhattan\_hourly\_arn | ARN of the bucket. |
| manhattan\_hourly\_id | Name of the bucket. |
| manhattan\_hourly\_name | ARN of the bucket. |
| manhattan\_weekely\_arn | ARN of the bucket. |
| manhattan\_weekely\_id | Name of the bucket. |
| manhattan\_weekely\_name | ARN of the bucket. |

## Configured Resources:

* [S3 Bucket](https://www.terraform.io/docs/providers/aws/r/s3_bucket.html)
* [S3 Bucket Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)
* [S3 Bucket Server Side Encryption](hhttps://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html)
* [S3 Bucket Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html)
* [S3 Bucket Policy](https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html)
