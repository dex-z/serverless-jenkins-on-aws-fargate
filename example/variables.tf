variable route53_domain_name {
  type        = string
  description = "The domain"
}

variable route53_zone_id {
  type        = string
  description = <<EOF
The route53 zone id where DNS entries will be created. Should be the zone id
for the domain in the var route53_domain_name.
EOF
}

variable jenkins_dns_alias {
  type        = string
  description = <<EOF
The DNS alias to be associated with the deployed jenkins instance. Alias will
be created in the given route53 zone
EOF
  default     = "jenkins-controller"
}

variable vpc_id {
  type        = string
  description = "The vpc id for where jenkins will be deployed"
}

variable efs_subnet_ids {
  type        = list(string)
  description = "A list of subnets to attach to the EFS mountpoint. Should be private"
  # default = ["subnet-0647b44e6eddb78f4","subnet-08ab580b88ca2f484"]
}

variable jenkins_controller_subnet_ids {
  type        = list(string)
  description = "A list of subnets for the jenkins controller fargate service. Should be private"
  # default = ["subnet-0647b44e6eddb78f4","subnet-08ab580b88ca2f484"] 
}

variable alb_subnet_ids {
  type        = list(string)
  description = "A list of subnets for the Application Load Balancer"
  # default = ["subnet-02f823730ba712af4","subnet-076782d535960e13e"]
}