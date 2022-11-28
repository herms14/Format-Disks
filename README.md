# Initialize Disks inside a Azure Windows VM using Terraform

This is a simple terraform module to initialize and format disks in a Azure VM using a powershell/bash script deployed through a custom script extension

> Disclaimer: Only Windows VM works for now

Required Parameters:
    
    rg_name 
        (string) 
        name of the resource group
    vm_name
        (list)
        list of vms within the resource group
    os 
        (string)
        perating system of the VM (Windows/Linux)

## Usage
```
module "format-disks"{
    source = ""
    rg_name = <resource_group>
    vm_name =["vm_name"]
    os = "Windows"
}