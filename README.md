# AWS Terraform Project Assignment by Jomacs. 

Author: NANA AKOSUA KONADU OWUSU-ANSAH

Date Created: 28th October 2023
Date Modified: 31st October 2023

Github link : https://github.com/konaydu
LinkedIn Profile Link: https://www.linkedin.com/in/nana-akosua-owusu-ansah-msc-65b1274b/

The Assignment : This work involved the provisioning of AWS infrastructure using Terraform Commands. 


As per the Instructions given I created the following Infrastructure: 
- VPC with appropriate CIDR Blocks, two public subnets and one Private Subnet. A natgateway was set up in the public subnet. 

- An EC2 instance was created in the private subnet with nginx installed and ran in it. 

- An application load balancer which routes traffic to the EC2 with  nginx

- Traffic from the load balancer to the EC2 instance is routed through the Nat Gateway

- Secure Infrasructure with only necesary ports, and the EC2 instance can  reach the outside world for updates. 

- To Deploy this Infrastructure, you can fork into by git repository, git clone into your local environment, and run terraform init, terraform plan and terraform apply . When done you can run the terraform destroy command . 
- I have a bash script file with commands detailing how to install nginx and other configurations. 