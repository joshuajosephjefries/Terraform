<DOCTYPE!=HTML>
<body>
  <h3> RULE: Make sure that the server and the appec2instance are on the same vpc and subnet </h3>
  <h3> STEPS FOR ESTABLISHING SSH CONNECTION </h3>
  <h4>

    Step 1: For communication between two instances, generate ssh key on the server
            Command: ssh-keygen
            Hit Enter three times (You can change the path to save the key)
    Step 2: On the server, go to cd /root/.ssh and copy the id_rsa.pub key
    Step 3: On the App_EC2_Instance go to cd /home/ec2-user/.ssh and open authorized_keys file
    Step 4: Paste the id_rsa.pub key 
    Step 5: Try checking the connection for ssh
            Command: ssh ec2-user@IP_address_of_AppEC2Instance
  </h4>
  <h3> RUNNING THE CODE </h3>
  <h4>

    
    Step 1: Install Ansible on AWS instance 
            sudo amazon-linux-extras install -y ansible2
    Step 2: Install Lynx
            yum install lynx
    Step 3: Git clone the repository
            git clone https://github.com/joshuajosephjefries/Terraform.git
    Step 4: Go to /home/ec2-instance/My_Project_WebPage/Ansible_WebPage_Deployment
    Step 5: Run the ansible playbook 
            ansible-playbook -i inventory.yaml main.yaml
    Step 6: After running playbook, go to App-EC2_Instance and check webpage
            lynx http://172.48.15.15
  </h4>
</body>
  
