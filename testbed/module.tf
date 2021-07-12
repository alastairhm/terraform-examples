module "central_zone_name" {
  #   source = "git:https://gitlab.com/williamhillplc/technical-services/public-cloud/terraform-modules/tf-domain-name.git?ref=feature/AWSPS-3737"
  source       = "/Users/amontgomery/gitrp/public_cloud/terraform_modules/tf-domain-name"
  channel_name = "central-product"
  environment  = "dev"
  region = "eu-west-1"
}
