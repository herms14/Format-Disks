# Initialize Disks inside a Azure Windows VM using Terraform

This is a simple terraform module to initialize and format a windows Azure VM using a powershell script deployed through custom script extension

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