name  = "coffee-prod"
region = "us-east-1"

tags = {
  project = "coffee-shop"
  env     = "production"
}

vpc_cidr             = "10.30.0.0/16"
public_subnet_cidrs  = ["10.30.0.0/20", "10.30.16.0/20"]
private_subnet_cidrs = ["10.30.32.0/20", "10.30.48.0/20"]
db_subnet_cidrs      = ["10.30.64.0/24", "10.30.65.0/24"]

enable_nat_per_az    = true
enable_vpc_flow_logs = true

alb_create_https          = true
alb_enable_http_redirect  = true
alb_certificate_arn       = "<acm-cert-arn>"

app_image     = "<account>.dkr.ecr.us-east-1.amazonaws.com/coffee-shop:prod"
app_port      = 8080
ecs_cpu       = 1024
ecs_memory    = 2048
desired_count = 3

db_name            = "coffeeshop"
db_instance_class  = "db.t3.medium"
db_multi_az        = true

notification_emails = ["alerts@example.com"]
