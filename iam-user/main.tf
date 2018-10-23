provider "aws" {
  region = "eu-west-1"
}

#########################################
# IAM user, login profile and access key
#########################################
module "iam_user" {
  source = "../../iam-user"

  name          = "vasya.pupkin"
  force_destroy = true

  password_reset_required = false

  # SSH public key
  upload_iam_user_ssh_key = true

  ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAhfAP2cfZznzrV+2VMamMtfiAiWR39yZ4+vhR2IVhZMe4D+g8FmhCfw1+zZhgl8vQBgsRZIcYqpYux59FcPv0lP1EhYahoRsUt1SEU2Gj+jvgyZpe15lnWk2VzfIpIsZ++AeUqyHoJHV0RVOK4MLRssqGHye6XkA3A+dMm2Mjgi8hxoL5uuwtkIsAll0kSfL5O2G26nsxm/Fpcl+SKSO4gs01d9V83xiOwviyOxmoXzwKy4qaUGtgq1hWncDNIVG/aQ=="
}
