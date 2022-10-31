resource "aws_iam_user" "timo_tomate" {
	name = "timo_tomate"
}

resource "aws_iam_user_policy" "art_devops_black_timo" {
  name  = "super-admin"
  user  = aws_iam_user.timo_tomate.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "*"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}
