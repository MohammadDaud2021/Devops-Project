This Terraform configuration creates:

- 1 Azure Resource Group
- 1 Linux VM (Ubuntu 18.04)
- VNet, Subnet, NIC, Public IP, and NSG allowing SSH

Usage

1. Create or provide an SSH public key (if you don't have one):

```powershell
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
``` 

2. Copy your public key content:

```powershell
cat ~/.ssh/id_rsa.pub
```

3. Initialize and apply Terraform (from this folder):

```powershell
terraform init
terraform apply -var "ssh_public_key=<PASTE_YOUR_PUBKEY>" -auto-approve
```

Notes

- Default `location` is `eastus`. Change variables in `variables.tf` or pass `-var` flags.
- The VM username default is `azureuser`.
- After `apply`, the public IP is printed in outputs.
