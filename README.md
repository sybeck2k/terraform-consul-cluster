# terraform-consul-cluster

This code deploys a dual-AZ highly available Nomad cluster. More details are available on my blog post [Deploying a highly available, dual AZ Consul cluster on AWS](https://blog.mywebofthings.com/blog/deploying-a-highly-available-dual-az-consul-cluster-on-aws/).

This code is based on: '[Creating a Resilient Consul Cluster for Docker Microservice Discovery with Terraform and AWS](http://www.dwmkerr.com/creating-a-resilient-consul-cluster-for-docker-microservice-discovery-with-terraform-and-aws/)'.

## Prerequisites

* AWS CLI configured with sufficient rights
* Terraform 