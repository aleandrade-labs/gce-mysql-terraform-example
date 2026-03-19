# Terraform Google Compute Engine with MySQL

This Terraform module creates a Google Compute Engine (GCE) instance and installs MySQL on it using a startup script.

## Prerequisites

*   [Terraform](https://www.terraform.io/downloads.html) installed.
*   A Google Cloud Platform (GCP) project.
*   [gcloud CLI](https://cloud.google.com/sdk/gcloud) authenticated with your GCP account.

## Deployment

1.  **Clone this repository.**
2.  **Create a `terraform.tfvars` file** in the root of the project and add the following, replacing `<YOUR_PROJECT_ID>` with your GCP project ID:

    ```hcl
    project_id = "<YOUR_PROJECT_ID>"
    ```
3.  **Initialize Terraform:**
    ```bash
    terraform init
    ```
4.  **Apply the Terraform configuration:**
    ```bash
    terraform apply
    ```

    Terraform will show you a plan of the resources to be created. Type `yes` to approve.

5.  **Access your instance:** Once the apply is complete, the public IP of the instance will be in the outputs. You can SSH into the instance to verify the MySQL installation.

## Cleanup

To destroy the infrastructure, run:
```bash
terraform destroy
```