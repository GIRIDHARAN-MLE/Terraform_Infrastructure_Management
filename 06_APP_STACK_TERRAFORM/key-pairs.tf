resource "aws_key_pair" "techprofilekey" {
    key_name = "techkey"
    public_key = file(var.PUBLIC_KEYS)
}

