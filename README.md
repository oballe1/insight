# insight Vault project

# Centralized Secrets Management (CSM)
A Centralized and Dynamic secrets management system that seeks to replace the manual process of creating and managing sensivitive credentials by developers on the local computers, also to avoid the common issue of committing hard-coded credentials to public spaces which can have huge impact on the security of the organization.  aws secrets engine and identity authentication to provide role-based access with granular permission to generate new resource on cloud to developers in an organization.


## CSM Architecture



## Getting Started

There are 2 different personals involved in this guide, the "Administrator" and the "Developer". 

**Administrator**

The "Administrator" is the operator responsible for launching, configuring, and managing Vault using Terraform. They configure [AWS Secrets Engine](https://www.vaultproject.io/docs/secrets/aws/index.html) in Vault and defining the policy scope for the AWS credentials dynamically generated. They generate new user in system with their varying capacity of usage.

The "Administrator" is generally concerned about managing the static and long lived AWS IAM credentials with varying scope required for developers to provision infrastructure in AWS.

Things to follow as administrator:

* Vault_cluster folder - for deployment of cluster and managing it. (Follow Readme under the folder)
* admin_workspace - for managing the admin workspace. (Follow Readme under the folder)

**Developer**

The "Developer" is the developer looking to safely provision infrastructure using Terraform without having to worry about managing sensitive AWS credentials locally.

Things to follow as developer:

* Developer-workspace - for developer usage (Follow Readme under the folder)

## Built With

* Packer - Used to build AMIs on AWS
* Terraform - Used to provision the infrastructure
* Vault - Secrets & identity management


## Author

Managed by [Loveth Oballe](https://github.com/oballe1)
