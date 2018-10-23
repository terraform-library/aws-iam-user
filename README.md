# iam-user

Creates IAM user, IAM login profile, IAM access key and uploads IAM SSH user public key. All of these are optional resources.

## Usage

`iam-user`:
```hcl
module "iam_user" {
  source = "./../iam-user"

  name          = "anmol.nagpal"
  force_destroy = true

  password_reset_required = false
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create_iam_access_key | Whether to create IAM access key | string | `true` | no |
| create_iam_user_login_profile | Whether to create IAM user login profile | string | `true` | no |
| create_user | Whether to create the IAM user | string | `true` | no |
| force_destroy | When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed. | string | `false` | no |
| name | Desired name for the IAM user | string | - | yes |
| password_length | The length of the generated password | string | `20` | no |
| password_reset_required | Whether the user should be forced to reset the generated password on first login. | string | `true` | no |
| path | Desired path for the IAM user | string | `/` | no |
| ssh_key_encoding | Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use SSH. To retrieve the public key in PEM format, use PEM | string | `SSH` | no |
| ssh_public_key | The SSH public key. The public key must be encoded in ssh-rsa format or PEM format | string | `` | no |
| upload_iam_user_ssh_key | Whether to upload a public ssh key to the IAM user | string | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_iam_access_key_encrypted_secret | The encrypted secret, base64 encoded |
| this_iam_access_key_id | The access key ID |
| this_iam_access_key_key_fingerprint | The fingerprint of the PGP key used to encrypt the secret |
| this_iam_access_key_ses_smtp_password | The secret access key converted into an SES SMTP password |
| this_iam_access_key_status | Active or Inactive. Keys are initially active, but can be made inactive by other means. |
| this_iam_user_arn | The ARN assigned by AWS for this user |
| this_iam_user_login_profile_encrypted_password | The encrypted password, base64 encoded |
| this_iam_user_login_profile_key_fingerprint | The fingerprint of the PGP key used to encrypt the password |
| this_iam_user_name | The user's name |
| this_iam_user_ssh_key_fingerprint | The MD5 message digest of the SSH public key |
| this_iam_user_ssh_key_ssh_public_key_id | The unique identifier for the SSH public key |
| this_iam_user_unique_id | The unique ID assigned by AWS |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
