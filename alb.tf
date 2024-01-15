resource "aws_lb" "alb" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  enable_deletion_protection = false

  enable_cross_zone_load_balancing = true

  security_groups = ["sg-081fd19395804c16e"]

  subnets = ["subnet-067e5a5ce15225e34", "subnet-05ecc7dea93ff1875"]

  enable_http2 = true
}