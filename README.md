# Home Lab Infrastructure Management

This repository contains the infrastructure as code (IaC) configurations for provisioning and managing the home lab environment using ProxMox, Terraform and Ansible. Terraform is used to provision the underlying infrastructure, while Ansible is utilized for configuration management to ensure the infrastructure is configured correctly and consistently.

## Structure

The repository is organized into two main directories:

- `terraform/`: Contains Terraform configurations for provisioning infrastructure across different environments (dev, prod, stage).
- `ansible/`: Contains Ansible playbooks and roles for configuring and managing the provisioned infrastructure.

### Terraform Structure

```
terraform/
├── environments/   # Terraform configurations for each environment
│   ├── dev/
│   ├── prod/
│   └── stage/
└── modules/        # Reusable Terraform modules
```

### Ansible Structure

```
ansible/
├── ansible.cfg         # Ansible configuration file
├── inventory/          # Inventory files for different environments
│   ├── dev/
│   ├── prod/
│   └── stage/
├── roles/              # Reusable Ansible roles
└── playbooks/          # Ansible playbooks
```

## Getting Started

### Prerequisites

- Terraform installed on your machine. [Download Terraform](https://www.terraform.io/downloads.html)
- Ansible installed on your machine. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

Here is the updated README content in Markdown, incorporating the instructions for setting the environment variables:

# Infrastructure Provisioning and Configuration

This guide outlines the steps to provision infrastructure with Terraform and configure it using Ansible. Before you begin, you need to set some environment variables for Terraform and Ansible.

## Setting Environment Variables

For Terraform, set the following environment variables:

```bash
export TF_VAR_proxmox_api_token_id='<proxmox_api_token_id>'
export TF_VAR_proxmox_api_url='<proxmox_api_url>'
export TF_VAR_proxmox_api_token_secret='<proxmox_api_token_secret>'
export TF_VAR_ci_user='<your_ci_username>'
export TF_VAR_ci_password='<your_ci_password>'
export TF_VAR_private_key_path='<path_to_your_private_ssh_key>'
export TF_VAR_public_key_path='<path_to_your_public_ssh_key>'
```

For Ansible, set the following environment variables:

```bash
export ANSIBLE_PRIVATE_KEY_FILE='<path_to_your_private_ssh_key>'
export ANSIBLE_USER='<your_ansible_username>'
```


Make sure to replace `<proxmox_api_token_id>`, `<proxmox_api_url>`, `<proxmox_api_token_secret>`, `<your_ci_username>`, `<your_ci_password>`, `<path_to_your_private_ssh_key>`, `<path_to_your_public_ssh_key>`, and `<your_ansible_username>` with actual values when setting the environment variables.

These environment variables must be set in the terminal before running Terraform or Ansible commands.

Remember that each time you start a new terminal session, you'll need to re-export these environment variables, or you can add them to your shell profile script (like `~/.bashrc` or `~/.zshrc`) to have them set automatically.

## Provisioning Infrastructure with Terraform

1. Navigate to the Terraform environment directory you wish to work on (e.g., `terraform/environments/dev`).
2. Initialize the Terraform environment:

   ```bash
   terraform init
   ```

3. Plan the Terraform execution:

   ```bash
   terraform plan
   ```

4. Apply the Terraform configuration:

   ```bash
   terraform apply
   ```

## Configuring Infrastructure with Ansible

1. Ensure your inventory files in `ansible/inventory/<environment>/INVENTORY` are updated with the provisioned infrastructure details.
2. Run an Ansible playbook:

   ```bash
   ansible-playbook -i ansible/inventory/<environment>/INVENTORY ansible/playbooks/<playbook_name>.yml
   ```

## Contributing

Contributions to improve the infrastructure configurations are welcome. Please follow the standard Git workflow - fork, branch, commit, push, and submit a pull request.

## License

This project is licensed under the [MIT License](./LICENSE)

## Acknowledgments

- Thanks to all the open-source tools and their communities that make managing home labs like this possible.