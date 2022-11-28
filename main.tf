data "azurerm_virtual_machine" "get-vm" {
  count               = length(var.vm_name)
  resource_group_name = var.rg_name
  name                = var.vm_name[count.index]
}


resource "azurerm_virtual_machine_extension" "format-disk" {
  count                      = !contains(tolist([var.os]), "linux") ? length(var.vm_name) : 0
  name                       = "CustomScriptExtension-FormatDisk"
  virtual_machine_id         = data.azurerm_virtual_machine.get-vm[count.index].id
  publisher                  = "Microsoft.Compute"
  type                       = "CustomScriptExtension"
  type_handler_version       = "1.10"
  auto_upgrade_minor_version = true

  protected_settings = <<PROTECTED_SETTINGS
    {
      "commandToExecute": "powershell -ExecutionPolicy Unrestricted -File \"Attach-Disk.ps1\""
    }
  PROTECTED_SETTINGS

  settings = <<SETTINGS
    {
        "fileUris": [
          "https://raw.githubusercontent.com/herms14/Powershellscripts/master/Attach-Disk.ps1"
        ]
    }
      SETTINGS
}
