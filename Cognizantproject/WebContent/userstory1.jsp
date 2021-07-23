<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart Shop</title>
<style>
* {
  box-sizing: border-box;
}

#grad1 {
  height: 700px;
  background-image: linear-gradient(to right, rgba(255,0,0,0), rgba(255,0,0,1));
}
h1 {
  text-shadow: 2px 2px 5px red;
  color : white;
   display: block;
  font-size: 3em;
  margin-top: 0.67em;
  margin-bottom: 0.67em;
  margin-left: 0;
  margin-right: 0;
  font-weight: bold;
}
input[type=text], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=Gender], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=DoB], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=cn], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=Email], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=Uid], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=Password], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=ConfirmPassword], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=Uc], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=radio], select, textarea {
  width: 27%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  color: white;
}


label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=radio]: checked ~ label {
  color: yellow;
}
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
body {
  background-image: url('https://wallpaperaccess.com/full/2910375.jpg');
  background-repeat: no-repeat;
    background-attachment: fixed;  
  background-size: cover;

}

@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>

</head>
<body class="main">

<table class="table">
<tr>
<th></th>

<th class="logout"></th>
</tr>
</table>
<br>
<br>
<h1><center>Smart Shop</center></h1>
<br>
<div id = grad1  >
<center>
<form action="1gehelper.jsp" method="POST">
<input class="input" type="text" name="firstName"
Placeholder="First Name"  pattern="[A-Za-z]*.{3,}" title="please enter min 3 alphabets"  required>*
<br> <br>
<input class="input" type="text" name="lastName" Placeholder="last Name"   pattern="[A-Za-z]*.{3,}" title="please enter min 3 alphabets" 
required>*
<br> <br>
<input class="input" type="text" name="DoB" Placeholder="YYYY/MM/DD" pattern="[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9]" title="Please provide valid DoB" required>*
<br> <br>

<input name="Gender" type="radio" value="Male" checked><p style="color: #FFFFFF">Male</p>
   <input name="Gender" type="radio" value="Female" checked><p style="color: #FFFFFF">Female</p>
<br><br>
 
<input class="input" type = "cn" name="ContactNumber" Placeholder="Contact Number" maxlength= "10"  pattern="[0-9]*" title="Please provide valid phone number" required>*
<br> <br>
   <input class="input" name="Email" type="Email" placeholder="Email" pattern =  "[a-zA-Z0-9]*@[A-Za-z.]*" title="Please provide valid Email" required>* <br> <br>
<input class="input" name="UserId" type="Uid" placeholder="User Id" required>* <br> <br>
<input class="input" type="Password" name="Password" Placeholder="Password"
required>* <br> <br>
<input class="input" type="Password" name="ConfirmPassword" Placeholder="ConfirmPassword" 
required>* <br> <br>

<input name="User Category" type="radio" value="customer" checked><p style="color: #FFFFFF">Customer</p>
   <input name="User Category" type="radio" value="manager"><p style="color: #FFFFFF">Manager</p>
<br> <br> <input class="input" name="submit" value="Submit"type="submit"> <br> <br>
</form>

</center>
<script>
var password = document.getElementByName("password")
  , confirm_password = document.getElementByName("ConfirmPassword");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
    document.getElementById('a').innerHTML="enter the same password";
  } else {
    confirm_password.setCustomValidity("Registered Successfully");
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
</div>
</body>
</html>

