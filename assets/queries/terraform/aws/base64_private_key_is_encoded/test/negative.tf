resource "aws_launch_configuration" "as_conf" {
  image_id      = data.aws_ami.ubuntu.id
  instance_type = "m4.large"
  spot_price    = "0.001"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_configuration" "as_conf2" {
  image_id      = data.aws_ami.ubuntu.id
  instance_type = "m4.large"
  spot_price    = "0.001"
  user_data_base64 = ""

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_configuration" "as_conf3" {
  image_id      = data.aws_ami.ubuntu.id
  instance_type = "m4.large"
  spot_price    = "0.001"
  user_data_base64 = "dGVzdA=="
  
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_configuration" "as_conf4" {
  image_id      = data.aws_ami.ubuntu.id
  instance_type = "m4.large"
  spot_price    = "0.001"
  user_data_base64 = null
  
  lifecycle {
    create_before_destroy = true
  }
}