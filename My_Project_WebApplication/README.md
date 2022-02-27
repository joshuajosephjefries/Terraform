<!DOCTYPE=html>

<h2> WEBAPPLICATION </h2>


<body>
  <h3> AIM </h3>
  <h4>
    Our aim in this project is to create a web application and host it using Amazon Web Services. This web application will enable us to access the website, fill the details, and store the details in the database in the backend. 
  </h4>

  <h3> PROJECT OVERVIEW </h3>
  <h4>
    This project involves in designing a web application with AWS and host it using the various tools listed as follows:
        - AWS: To setup infrastructure on cloud
        - Terraform: To create the infrastructure
        - Ansible: To deploy the configuration
        - MariaDB: To store the values of the website
  </h4>

  <h3> HOW? </h3>
  <h4>
    This project involves provisioning of infrastructure using Terraform that involves the following steps:

        - Creating a VPC
        - Creating a subnet for the created VPC
        - Creating a security group
        - Creating an EC2 instance with an elastic IP provisioned within the created subnet and security group
        - Creating an Internet gateway attached to the VPC to enable internet access from EC2 instance.
  </h4>
  <h4>
    This project also involves installation of the following within the EC2 instance:

        - webserver (nginx)
        - PHP (for server side scripting)
        - MariaDB (for storage purposes)
  </h4>

  <h3> END RESULT </h3>
  <h4>
    Creates a web application that takes in the input details of the end-user and stores the data in the backend in Maria database.
  </h4>
</body>