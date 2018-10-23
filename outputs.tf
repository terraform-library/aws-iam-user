output "this_iam_user_name" {
  description = "The user's name"
  value       = "${element(concat(aws_iam_user.this.*.name, list("")), 0)}"
}

output "this_iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = "${element(concat(aws_iam_user.this.*.arn, list("")), 0)}"
}

output "this_iam_user_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = "${element(concat(aws_iam_user.this.*.unique_id, list("")), 0)}"
}

output "this_iam_user_login_profile_encrypted_password" {
  description = "The encrypted password, base64 encoded"
  value       = "${element(concat(aws_iam_user_login_profile.this.*.encrypted_password, list("")), 0)}"
}

output "this_iam_access_key_id" {
  description = "The access key ID"
  value       = "${element(concat(aws_iam_access_key.this.*.id, list("")), 0)}"
}

output "this_iam_access_key_key_fingerprint" {
  description = "The fingerprint of the PGP key used to encrypt the secret"
  value       = "${element(concat(aws_iam_access_key.this.*.key_fingerprint, list("")), 0)}"
}

output "this_iam_access_key_encrypted_secret" {
  description = "The encrypted secret, base64 encoded"
  value       = "${element(concat(aws_iam_access_key.this.*.encrypted_secret, list("")), 0)}"
}

output "this_iam_access_key_ses_smtp_password" {
  description = "The secret access key converted into an SES SMTP password"
  value       = "${element(concat(aws_iam_access_key.this.*.ses_smtp_password, list("")), 0)}"
}

output "this_iam_access_key_status" {
  description = "Active or Inactive. Keys are initially active, but can be made inactive by other means."
  value       = "${element(concat(aws_iam_access_key.this.*.status, list("")), 0)}"
}

output "this_iam_user_ssh_key_ssh_public_key_id" {
  description = "The unique identifier for the SSH public key"
  value       = "${element(concat(aws_iam_user_ssh_key.this.*.ssh_public_key_id, list("")), 0)}"
}

output "this_iam_user_ssh_key_fingerprint" {
  description = "The MD5 message digest of the SSH public key"
  value       = "${element(concat(aws_iam_user_ssh_key.this.*.fingerprint, list("")), 0)}"
}
