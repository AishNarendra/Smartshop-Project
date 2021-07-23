<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Accept User Page</title>
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
        <h1>Verifying Details</h1>
        <%-- Include the ValidateUser.java class whose method 
             boolean validate(String, String) we will be using
        --%>
        <%-- Create and instantiate a bean and assign an id to 
             uniquely identify the action element throughout the jsp
        --%>
        <jsp:useBean id="snr" class="user.ValidateUser"/>
          
        <%-- Set the value of the created bean using form data --%>
        <jsp:setProperty name="snr" property="user"/>
        <jsp:setProperty name="snr" property="pass"/>
          
        <%-- Display the form data --%>
        The Details Entered Are as Under<br/>
        <p>User Id : <jsp:getProperty name="snr" property="user"/></p>
        <p>Password : <jsp:getProperty name="snr" property="pass"/></p>
          
        <%-- Validate the user using the validate() of 
             ValidateUser.java class
        --%>
        <%if(snr.validate("Aishwarya", "123")||(snr.validate("Neha", "456")||(snr.validate("Venkatesh", "789")||(snr.validate("Ankesh", "135")||(snr.validate("Sudarshan", "246")))))){%>
            Welcome! You are a VALID USER<br/>
           <% response.sendRedirect("serstory3.1.jsp");%>
           <%}else if( snr.validate("aman","dummy")){%>
           Welcome Aman<br/>
           <% response.sendRedirect("2.jsp");%>
        <%}else{%>
            Error! Invalid User ID (or) Incorrect Password<br/>
            <a href="login.jsp">Click Here.</a>
        <%}%>  
           
        
    </body>
</html>