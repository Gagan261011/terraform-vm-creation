# Azure Two VMs Provisioning with Terraform and GitHub Actions

This project automates the provisioning of two Ubuntu VMs in an existing Azure resource group using Terraform and GitHub Actions. This version uses Service Principal credentials for authentication.

## How to Use

### Prerequisites

You will need the following four credentials from your Azure account:
*   Application (Client) ID
*   Client Secret
*   Subscription ID
*   Tenant ID

You can find your Subscription and Tenant IDs by logging into the Azure CLI and running `az account show`.

### Trigger the Workflow

1.  Navigate to the **Actions** tab of your GitHub repository.
2.  In the left sidebar, click on the **Azure - Create Two VMs** workflow.
3.  Above the list of workflow runs, click the **Run workflow** dropdown.
4.  Enter your Azure **Client ID**, **Client Secret**, **Subscription ID**, and **Tenant ID**.
5.  Click the **Run workflow** button.

### Find the Outputs

Once the workflow is complete:

1.  Go to the summary page of the workflow run.
2.  The public IP addresses of the two VMs will be printed in the logs under the "Show Terraform Outputs" step.
3.  An artifact named **ssh-private-key** will be available for download. This artifact contains the SSH private key required to connect to the VMs.

### How to SSH

1.  Download and unzip the `ssh-private-key` artifact.
2.  The private key file will be named `id_rsa_jules`.
3.  Use the following command to connect to your VMs, replacing `<PUBLIC_IP>` with one of the IPs from the workflow output:

```bash
ssh -i id_rsa_jules azureuser@<PUBLIC_IP>
```
