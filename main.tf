resource "aws_iam_user" "user" {
  count = "${var.create_user}"

  name          = "${var.name}"
  path          = "${var.path}"
  force_destroy = "${var.force_destroy}"
}

resource "aws_iam_user_login_profile" "profile" {
  count = "${var.create_user && var.create_iam_user_login_profile ? 1 : 0}"

  user                    = "${aws_iam_user.user.name}"
  pgp_key                 = false
  password_length         = "${var.password_length}"
  password_reset_required = "${var.password_reset_required}"
}

resource "aws_iam_access_key" "key" {
  count = "${var.create_user && var.create_iam_access_key ? 1 : 0}"

  user = "${aws_iam_user.user.name}"
}

resource "aws_iam_user_ssh_key" "ssh" {
  count = "${var.create_user && var.upload_iam_user_ssh_key ? 1 : 0}"

  username   = "${aws_iam_user.user.name}"
  encoding   = "${var.ssh_key_encoding}"
  public_key = "${var.ssh_public_key}"
}
