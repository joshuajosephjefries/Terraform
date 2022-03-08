<DOCTYPE!=HTML>
<body>
  <h3> PREREQUISITES BEFORE RUNNING TERRAFORM FILES </h3>
  <h4>
    Packages to be installed on server:

    - Terraform
      Commands: 
        1. sudo yum install -y yum-utils
        2. sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
        3. sudo yum -y install terraform
        4. terraform -v

    - Ansible
      Command: sudo amazon-linux-extras install -y ansible2
    
    - Git
      Command: sudo yum install git

    Infrastructure can be built using the following terraform commands:
      1. Terraform init: This downloads all the modules and plugins associated to our terraform code.
      2. Terraform plan: This plans the infrastructure ahead of time. It shows the details components that would be installed
      3. Terraform apply: This applies all the changes as per the code and builds infra.
  </h4>
</body>
