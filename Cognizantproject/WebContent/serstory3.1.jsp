<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ page language="java" import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
  <head>
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
  <h1><center>Search For Products</center></h1>
  <form action=""method=post name=form>
     Sort query:
     <br><input type="radio" name="orderType"value="productname">Sort by Name
     <br>
     <input type="radio" name="orderType"value="quantity">Sort by Availability
     <br>
     <input type="radio" name="orderType"value="rateperquantity">Sort by Price
     <br>
     <input type="radio" name="orderType"value="popularity">Sort by Popularity
     <br>
     <br><input type=submit name="g" value="Submit">
  </form>
  <% String orderType=request.getParameter("orderType");
  if(orderType==null)
  orderType=""; %>
    <h2> According to the sorting method: <%=orderType %>, sorted records:</h2> 
     
  <br/>
  <%
String id = request.getParameter("orderType");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "Aishu7";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
  <table border="1">
<tr>
<td> productid</td>
<td> productname</td>
<td>brand</td>
<td>producttype</td>
<td>quantity</td>
<td>rateperquantity</td>
<td>count</td>
</tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from SmartProductPage1 order by "+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("productid") %></td>
<td><%=resultSet.getString("productname") %></td>
<td><%=resultSet.getString("brand") %></td>
<td><%=resultSet.getString("producttype") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("rateperquantity") %></td>
<td><%=resultSet.getString("count") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
  </body>
</html>