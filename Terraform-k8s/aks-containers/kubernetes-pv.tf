resource "kubernetes_persistent_volume" "example" {
  metadata {
    name = "azure-pv"
  }
  spec {
    capacity = {
      storage = "1Gi"
    }
    access_modes = ["ReadWriteOnce"]
    persistent_volume_source {
      azure_disk {
        caching_mode  = "None"
        data_disk_uri = azurerm_managed_disk.azuremanageddisk.id
        disk_name     = "k8s-pv001"
        kind          = "Managed"
      }
    }
  }
}

resource "azurerm_managed_disk" "azuremanageddisk" {
  name                 = "azuremanageddisk"
  location             = data.azurerm_kubernetes_cluster.cluster.location
  resource_group_name  = data.azurerm_kubernetes_cluster.cluster.resource_group_name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"
  tags = {
    environment = "Development"
  }
}