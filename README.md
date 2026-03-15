# terraform-automation
Terraform configurations and automation for cloud infrastructure and K3s cluster environments.

## Project Structure

- **[environments](./environments)**: Contains infrastructure configurations organized by cloud providers (DigitalOcean, GCP, Linode). This is the entry point for executing Terraform plans for specific environments.
- **[modules](./modules)**: Contains reusable, provider-specific Terraform modules for compute and networking resources used across different environments.
