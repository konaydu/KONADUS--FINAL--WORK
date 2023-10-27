output "load_balancer" {
  value = module.vpc.load_balancer.dns_name
}


output "vpc_id" {
  value = module.vpc.vpc_id

}
output "public_subnet" {
  value = module.vpc.public_subnet
}


output "public_subnet2" {
  value = module.vpc.public_subnet2
}


output "private_subnet" {
  value = module.vpc.private_subnet
}


