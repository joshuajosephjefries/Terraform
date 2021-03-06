<!doctype html>
<html lang="en" xml:lang="en">
<head>
        <title>Users </title>
        <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background: #484848;
}
.topnav {
  overflow: hidden;
  background-color:rgba(44, 130, 201, 1);
  height: 70px;
  border: 3px solid #3333ff
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 35px;
  font-weight: bold;
}

.topnav-right {
  float: right;
}
fieldset { 
	background: #FAFAFA;
	padding: 10px;
   margin:auto;
   max-width:450px;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 6px solid  rgba(44, 130, 201, 1);


}



 </style>
</head>
<body>
<div class="topnav">
            <a href="index.php">User inventory</a>
          </div>

<form>
    <button type="submit" formaction="index.php" style="margin:15px;height: 30px;width: 100px;cursor:pointer;border-radius:15px;
border: 3px solid #3333ff;background-color:rgba(44, 130, 201, 1);color:#f2f2f2;font-size:17px;">Back</button>
</form>  
<form method="post" action="addUser.php">  
<fieldset>
  <legend>User details</legend>
  <input type="text" name="firstName" placeholder="First name" style="width:100%;height:30px;
   border: 2px solid  rgba(44, 130, 201, 1); border-radius:3px;  background:transparent;"  required>
  <br><br>
   <input type="text" name="lastName" placeholder="Last name"  style="width:100%;height:30px;
   border: 2px solid  rgba(44, 130, 201, 1); border-radius:3px;  background:transparent;"  required>
  <br><br>
   <input type="text" name="email" placeholder="Email"  style="width:100%;height:30px;
   border: 2px solid  rgba(44, 130, 201, 1); border-radius:3px;  background:transparent;"  required>
  <br><br>
  <input type="text" name="city" placeholder="City"  style="width:100%;height:30px;
   border: 2px solid  rgba(44, 130, 201, 1); border-radius:3px;  background:transparent;"  required>
  <br><br>
  <input type="text" name="country" placeholder="Country"  style="width:100%;height:30px;
   border: 2px solid  rgba(44, 130, 201, 1); border-radius:3px;  background:transparent;"  min="0" required>
  <br><br>
  <input type="submit" name="submit" value="save" style="width:100%;height:30px;
   border: 2px solid  rgba(44, 130, 201, 1); border-radius:3px; cursor:pointer;background-color:rgba(44, 130, 201, 1)">&ensp; 
  </fieldset> 
</form> 
</body>
</html>
<?php
if(isset($_POST["submit"]))
{
 // define variables and set to empty values
$servername = "localhost";
$username = "user_manager";
$pass = getPassword(); #Qwerty123
$dbname = "user_inventory";

// Create connection
$conn = new mysqli($servername, $username, $pass, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$firstName = $_POST["firstName"];
$safefirstName = htmlspecialchars($firstName);
$lastName = $_POST["lastName"];
$safelastName = htmlspecialchars($lastName);
$email= $_POST["email"];
$safeemail = htmlspecialchars($email);
$city = $_POST["city"];
$safecity = htmlspecialchars($city);
$country = $_POST["country"];
$safecountry = htmlspecialchars($country);


$sql = "INSERT INTO users(firstName,lastName,email,city,country)
VALUES ('$safefirstName','$safelastName','$safeemail','$safecity','$safecountry')";
if ($conn->multi_query($sql)) {
  echo'<div>
  <h1 style="color:#f2f2f2;font-size:20px; font-family: "Roboto", sans-serif;margin:auto;">New record inserted successfully</h1>
     </div>';
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
doSomething(true);

$conn->close();
}

?>
