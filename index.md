(![image](https://user-images.githubusercontent.com/79646955/164878496-d2eb3d18-7681-407e-a317-4dd067e0a4f1.png))

# Terraform

/* Terraform is an IaC software that we used to use to write, plan and apply the code for configuration and deployment of applications.

You can deploy, release, scale, and monitor the applications in real time across multiple cloud providers.

Developed by Hashicorp Inc, used to develop config files to create, manage and destroy resources or infrastructure

Provision and manage all the infrastructure throughout it's lifecycle.

Manages low level components like compute, storage and networking resources

Also Manages high level components like DNS entries and SaaS features

Terraform works through the APIs. Providers enables to work with any platform using an API.

**_3 steps how Terraform works:_**

   -  Write the infrastructure code that defines your resources
   -  Plan your execution
   -  Apply the execution plan. This provides the provisioning or the deployment of the infrastructure written in terraform code.

**_Types of IaC Tools:_**

1. Configuration Management: Ansible, Puppet, Saltstack -> Maintains configuration, version control, Idempotent: Run code multiple times, everytime you run it, it will only make changes to bring environment to a defined state.

2. Server Templating: Docker, Packer, Vagrant Pre installed software and dependencies, provides immutable infrastructure (If any changes are made, they are not updated on running instance, rather, they will create a new image and redeploy new instance using updated image)

3. Provisioning Tools: Terraform, CloudFormation Provision using declarative code

**_Features of Terraform:_**

- MANAGE ANY INFRASTRUCTURE: 

You can use different platforms and services for your infrastructure modification. Various platforms are in Terraform Registry.

- TRACK YOUR INFRASTRUCTURE: 

Terraform creates a plan -> Asks for your approval -> Makes the necessary changes. The real infrastructure is saved in the state file. Terraform keeps track of your real infrastructure in a state file, which acts as a source of truth for your environment. Terraform uses the state file to determine the changes to make to your infrastructure so that it will match your configuration.

- AUTOMATE CHANGES: 

By using terraform we can create different configuration files that automate the deployment of infrastructures, changes and modifications. You don't have to write step by step code for each feature, terraform handles the underlying logic.

- STANDARDIZE SOLUTIONS: 

Reusable configurations are scripted that uses modules. These modules are readily available in Terraform registry or we can write our own modules.

- COLLABORATE: 

Write script, track it through version control and manage it using Terraform cloud. You can collaborate infrastructure using remote state backends using Terraform Cloud Terraform Cloud is free for 5 users and if these users want to make changes all at once, terraform would track these changes and provides stable environment. You can also connect Terraform Cloud to different VCS such as Github, Gitlab etc.

Terraform cloud has a reliable environment and provides secure access to shared state and secret data, role-based access controls, a private registry for sharing both modules and providers, and more.

- MULTI CLOUD DEPLOYMENT:

Terraform is can be provisioned across MULTI CLOUD environment. This increases fault tolerance and faster recovery from outages. Uses same workflow for different providers to handle cross cloud dependencies.

Terraform Registry has thousands of providers for multi cloud deployment.

- SELF SERVICE CLUSTERS:

Terraform is used to build a "self-serve" infrastructure model that lets product teams manage their own infrastructure independently. Efficiently deploy services in compliance with your organization’s practices

- POLICY AND COMPLIANCE MANAGEMENT:

Enforce policies on the types of resources teams can provision and use. Ticket-based review processes are a bottleneck that can slow down development. Instead, you can use Sentinel, a policy-as-code framework, to automatically enforce compliance and governance policies before Terraform makes infrastructure changes.

- DEPLOYMENT, SCALING AND MONITORING TOOLS:

Deploy, release, scale, and monitor infrastructure for multi-tier applications Scale application components independently Manage the resources in each tier together, and automatically handles dependencies between tiers.

- PARALLEL ENVIRONMENTS:

Create disposable environments as needed is more cost-efficient than maintaining each one indefinitely.

**_Using Terraform has several advantages over manually managing your infrastructure:_**

Terraform can manage infrastructure on multiple cloud platforms.
The human-readable configuration language helps you write infrastructure code quickly.
Terraform's state allows you to track resource changes throughout your deployments.
You can commit your configurations to version control to safely collaborate on infrastructure.

## To deploy infrastructure with Terraform:

Scope - Identify the infrastructure for your project.
Author - Write the configuration for your infrastructure.
Initialize - Install the plugins Terraform needs to manage the infrastructure.
Plan - Preview the changes Terraform will make to match your configuration.
Apply - Make the planned changes.

You can track your infrastructure using the state files.

**_TERRAFORM vs ANSIBLE:_**

Terraform's configuration language is declarative, meaning that it describes the desired end-state for your infrastructure In contrast, Ansible is a procedural programming language that require step-by-step instructions to perform tasks. Terraform providers automatically calculate dependencies between resources to create or destroy them in the correct order. Declarative means it initializes, plans and then applies changes to infrastructure Terraform can provision, configure and decommission the resources. Resources can be an instance, database or a bucket.

STATE:

Terraform records the state of the infrastructure as it is seen in the real world. This can determine the actions to take when updating resources for a particular platform. Terraform defines infrastructure always in state at all times. The state is a blueprint of infrastructure. Terraform can also import other resources Terraform cloud and enterprise makes it easy for terraform for cross function between different teams to work for a cause.

## ************ INSTALLATION OF TERRAFORM ***********

WINDOWS:

    Install chocolatey on windows Open Powershell in admin mode -> Run below command to install chocolatey Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    Install terraform: choco install terraform
    Verify: terraform -v (or) terraform --version
    For help: terraform -help

AMAZON LINUX:

    sudo yum install -y yum-utils
    sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
    sudo yum -y install terraform
    terraform -v

## PROVIDERS:

Terraform plugins (providers) --> interact with cloud platforms using API's These providers are in already is use in Terraform Registry. Providers define individual parts of infrastructure through which we can create modules. These modules perform different actions such as creating an EC2 instance, deploying instances on multi-cloud environment etc. Hashicorp Configuration Language (HCL) is declarative, meaning that it will define what the end state of infrastructure would be. It automatically calculates the dependencies for the infra to be built. Ansible language is procedural, meaning it follows step by step execution and would not know the end state of infrastructure, before being executed.

Official Providers: Maintained by hashicorp - AWS, Azure, GCP Verified Providers: Maintained by thirdparty that partners with hashicorp - Heroku, Big IP, Digital Ocean Community Providers: Maintained by individual contributors - Active Directory, Netapp GCP

Provider plugins install latest version of plugins when terraform init is done.

Different files can be created: main.tf -> contains multiple blocks of providers and resources variables.tf -> contains different variables that can be used or included in main.tf outputs.tf -> contains outputs from resources provider.tf -> contains list of providers

RESOURCE:

Resouce is an object. Ex: S3 bucket, virtual machine, instance, azure active directory etc.

HCL BASICS:

Hcl file contains blocks and arguments. A block is defined within curly braces. Contains information on the infrastructure platform, also contains arguments.

resource "local_file" "patriot" { filename = "/root/patriot.txt" content = "I love my country" }

In the above example, resource is the block name, local_file is the resource type. local is the provider and the file is the resource. patriot is the resource name. Resource name can be anything. We give arguments inside the curly braces.

Step1: Write the configuration file Step2: Terraform init: It installs the dependencies. For the above example, it would install hashicorp/local v2.1.0 Step3: Terraform validate Step4: Terraform plan Step4: Terraform apply Step5: Terraform show Step6: Terraform destroy

Plugins for Atom:

    Terraform-fmt
    Terminus- https://atom.io/packages/terminus
    FTP */
