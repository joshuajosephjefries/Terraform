<DOCTYPE!=HTML>
<body>
  <h3> STEPS FOR ANSIBLE SETUP </h3>
  <h4>
    The following steps are to be followed:

    - Go to /etc/ansible/hosts and enter the localhost details. 
    - Localhost details are the server details
    - These details have to contain name, ansible_host (Server private IP address), ansible_user, ansible_connection, ansible_port
  </h4>
  <p>
  :
    - [localhost]
    - local ansible_host=172.31.88.148 ansible_user=ec2-user ansible_connection=ssh ansible_port=22
  </p>
</body>
  