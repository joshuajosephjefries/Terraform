<!DOCTYPE=html>
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
   
