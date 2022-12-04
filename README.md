# Initialize Disks inside a Azure Windows VM using Terraform

This is a simple terraform module to initialize and format disks in a existing Windows Azure VM using a powershell script deployed through a custom script extension



Required Parameters:
    
    rg_name 
        (string) 
        name of the resource group
    vm_name
        (list)
        list of vms within the resource group


## Usage
```
module "format-disks"{
    source = ""
    rg_name = <resource_group>
    vm_name =["vm_name"]
}
