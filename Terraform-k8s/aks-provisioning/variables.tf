variable "client_id" {
    default = "c19d253c-16b5-4534-9104-c4390b2f6931"
}
variable "client_secret" {
    default = "amA4Dga2UTL0Hw~B-kqHj_yr3-xJ.hnKZ_"
}
variable "agent_count" {
    default = 3
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "terraformlab"
}

variable cluster_name {
    default = "aks-lab01"
}

variable resource_group_name {
    default = "terraform-aks-lab"
}

variable location {
    default = "Central US"
}

variable log_analytics_workspace_name {
    default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "eastus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}
