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
    TERRAFORM INFRASTRUCTURE DEPLOYMENT
    This project involves provisioning of infrastructure using Terraform that involves the following steps:

        - Creating a VPC
        - Creating a subnet for the created VPC
        - Creating a security group
        - Creating an EC2 instance with a static IP provisioned within the subnet range and security group
        - Creating an Internet gateway attached to the VPC to enable internet access from EC2 instance.
  </h4>
  <h4>
    ANSIBLE DEPLOYMENT
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

<body>
  <h3> MOVE FILES FROM LOCAL TO NEW AWS EC2 INSTANCE </h3>
  <h4>
    Moving the files from local machine to the newly created AWS EC2 Instance needs an extension on the VSCode
    Extension Name: ftp-simple
  </h4>
  
  <h3> STEPS TO MOVE FILES </h3>
  <h4>
    Step 1: In VSCODE, go to File -> Preferences -> Extensions and install ftp-simple
    Step 2: After the installation is done, press F1 or Ctrl+Shift+P and search for ftp-simple: Config - FTP connection setting
    Step 3: It creates a file named ftp-sync.json. 
    Step 4: Enter the host details, port number, username and key path in the configuration file. (Example file in .vscode)
    Step 5: Select the file you want to upload and do a right click
    Step 6: Select ftp-simple: Save.
    Step 7: The following are the list of commands for ftp-simple
            ftp-simple: SAVE     ->  Upload to FTP server
            ftp-simple: DELETE   ->  Deletes file or directory in FTP server (recursive)
            ftp-simple: RENAME   ->  Change the filename from FTP server
            ftp-simple: DIFF     ->  Local file and FTP server file
            ftp-simple: DOWNLOAD ->  Download in working directory from FTP server 
    
  </h4>

  <h3> DOCUMENTATION OF FTP-SIMPLE EXTENSION </h3>
  <h4>
    For more information about this extension, check out https://marketplace.visualstudio.com/items?itemName=humy2833.ftp-simple 
    Enjoy!!!
  <h4>
</body>