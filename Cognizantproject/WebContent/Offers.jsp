<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Type in Offer details</title>
<img src="image/Offer.png" align=right width="20%" height="20%">
<style>
* {
  box-sizing: border-box;
}

#grad1 {
  height: 700px;
  background-image: linear-gradient(to right, rgba(255,0,0,0), rgba(255,0,0,1));
}
body {
  background-image: url('https://wallpaperaccess.com/full/2910375.jpg');
  background-repeat: no-repeat;
    background-attachment: fixed;  
  background-size: cover;
  font-size:2em;

}
h1 {
  text-shadow: 2px 2px 5px red;
  color :darkpink;
   display: block;
  font-size: 1em;
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
<h1><center>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspFill up the offer details</center></h1>

<br>
<div id = grad1  >
<center>
<form action="" method="POST">
<input class="input" type="text" name="Offer Date" Placeholder="Offer Date" pattern="[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9]" title="Please provide valid Offer Date " required>*
<br> <br>
<input class="input" type="text" name="Product code"
Placeholder="Product code" pattern="[A-Za-z0-9]*" title="please enter alphabets and numbers"  required>*
<br> <br>
<input class="input" type="text" name="Discounted rate" Placeholder="Discounted rate" pattern="[0-9]*" title="please enter only digits"
required>*
<br> <br>
    <input class="input" type="text" name="Offer"
Placeholder="Offer" pattern="[A-Za-z]*" title="please enter only alphabets"  required>*
<br> <br>
<br> <br> <input class="input" name="submit" value="Submit"type="submit"> <br> <br>
</form>
</center>
</div>
</body>
</html>