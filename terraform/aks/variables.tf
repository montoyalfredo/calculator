variable "client_id" {
    default = "2402bcac-4145-4077-8699-1edf1d3750d5"
}

variable "client_secret" {
    default = "YGGRpQnpXdWk1_e4doxRNYvioo~TQygGd0"
}

variable "agent_count" {
    default = 3
}

variable "ssh_public_key" {
    default = "../../id.pub"
}

variable "dns_prefix" {
    default = "k8stest"
}

variable cluster_name {
    default = "k8stest"
}

variable resource_group_name {
    default = "azure-k8stest"
}

variable location {
    default = "southcentralus"
}

variable log_analytics_workspace_name {
    default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "southcentralus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}

