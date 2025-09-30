name   = "coffee-dev"
region = "us-east-1"

tags = {
  project = "coffee-shop"
  env     = "dev"
}

vpc_cidr             = "10.10.0.0/16"
public_subnet_cidrs  = ["10.10.0.0/20", "10.10.16.0/20"]
private_subnet_cidrs = ["10.10.32.0/20", "10.10.48.0/20"]
db_subnet_cidrs      = ["10.10.64.0/24", "10.10.65.0/24"]

enable_nat_per_az    = true
enable_vpc_flow_logs = true

alb_create_https         = false
alb_enable_http_redirect = true
alb_certificate_arn      = null

app_image     = "444925161889.dkr.ecr.us-east-1.amazonaws.com/coffee-shop:latest"
app_port      = 8080
ecs_cpu       = 512
ecs_memory    = 1024
desired_count = 2

db_name           = "coffeeshop"
db_instance_class = "db.t3.micro"
db_multi_az       = false

notification_emails = []
