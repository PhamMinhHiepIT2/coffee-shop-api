name  = "coffee-staging"
region = "us-east-1"

tags = {
  project = "coffee-shop"
  env     = "staging"
}

vpc_cidr             = "10.20.0.0/16"
public_subnet_cidrs  = ["10.20.0.0/20", "10.20.16.0/20"]
private_subnet_cidrs = ["10.20.32.0/20", "10.20.48.0/20"]
db_subnet_cidrs      = ["10.20.64.0/24", "10.20.65.0/24"]

enable_nat_per_az    = true
enable_vpc_flow_logs = true

alb_create_https          = true
alb_enable_http_redirect  = true
alb_certificate_arn       = "<acm-cert-arn>"

app_image     = "<account>.dkr.ecr.us-east-1.amazonaws.com/coffee-shop:staging"
app_port      = 8080
ecs_cpu       = 512
ecs_memory    = 1024
desired_count = 2

db_name            = "coffeeshop"
db_instance_class  = "db.t3.small"
db_multi_az        = false

notification_emails = ["alerts@example.com"]
