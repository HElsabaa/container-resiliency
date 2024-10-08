output "vpc_id" {
  description = "Amazon EKS VPC ID"
  value       = module.vpc.vpc_id
}

output "subnet_id_az1" {
  description = "Amazon EKS Cell1 Cluster Subnet ID"
  value       = module.vpc.private_subnets[0]
}

output "subnet_id_az2" {
  description = "Amazon EKS Cell2 Cluster Subnet ID"
  value       = module.vpc.private_subnets[1]
}

output "subnet_id_az3" {
  description = "Amazon EKS Cell3 Cluster Subnet ID"
  value       = module.vpc.private_subnets[2]
}

output "configure_kubectl_cell1" {
  description = "Configure kubectl for AZ1 Cluster: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks --region ${local.region} update-kubeconfig --name ${module.eks_cell1.cluster_name}"
}

output "configure_kubectl_cell2" {
  description = "Configure kubectl for AZ2 Cluster: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks --region ${local.region} update-kubeconfig --name ${module.eks_cell2.cluster_name}"
}

output "configure_kubectl_cell3" {
  description = "Configure kubectl for AZ3 Cluster: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks --region ${local.region} update-kubeconfig --name ${module.eks_cell3.cluster_name}"
}
