# azure-aks-terraform
Deploys hub-and-spoke network topology to Azure via Terraform, network nodes orchestrated through Azure Kubernetes Service

The network mimics an organization comprised of seperate departments: IT, HR, and Accounting. The goal of the project is to deploy a lightweight ticketing/routing system. Any department can create a ticket and send it to another department for completion, while maintaining segmentation between resources. Here is the addressing scheme for the environment:

Hub                     10.0.0.0/16         Transit, jumpbox
Spoke 1 — AKS           10.1.0.0/16         Ticketing API
Spoke 2 — Data          10.2.0.0/16         SQL database
Spoke 3 — IT            10.3.0.0/16         IT department subnet
Spoke 4 — HR            10.4.0.0/16         HR department subnet
Spoke 5 — Accounting    10.5.0.0/16         Accounting department subnet

Each department is segmented and will utilize a REST API to submit requests to other departments via spoke 1.
