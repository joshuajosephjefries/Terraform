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
  <h3> STEPS FOR ADDING THE APP_EC2_INSTANCE HOST DETAILS ON SERVER </h3>
  <h4>
    The following steps are to be followed to add the host details on the server:

    - Go to /etc/ansible/hosts and enter the localhost details. 
    - Localhost details are the server details
    - These details have to contain name, ansible_host (Server private IP address), ansible_user, ansible_connection, ansible_port
    
  </h4>
  <p>
    [localhost]
  </p>
  <p>
    local ansible_host=172.31.88.148 ansible_user=ec2-user ansible_connection=ssh ansible_port=22
  </p>
</body>
  