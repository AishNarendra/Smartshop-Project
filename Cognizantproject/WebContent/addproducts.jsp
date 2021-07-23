<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock management</title>
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
input[type=number], select, textarea {
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

<body>
<form action="4gehelper.jsp" method="POST">
<input class="input" type="text" name="productname"
Placeholder="ProductName" pattern="[A-Za-z]*" title="please enter only alphabets"  required>
<br> <br>
<input class="input" type="text" name="numberofitems" Placeholder="quantity" title="enter quantity" required>

<br> <br>
<input class="input" type="DoB" name="manufacturingdate" Placeholder="YYYY/MM/DD" pattern="[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9]" title="Please provide valid manufacturing date" required>*
<br> <br>
<input class="input" type="DoB" name="expirydate" Placeholder="YYYY/MM/DD" pattern="[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9]" title="Please provide valid expiry" required>*
<br> <br>
<br> <br> <input class="input" name="submit" value="Submit"type="submit"> <br> <br>

</body>
</html>