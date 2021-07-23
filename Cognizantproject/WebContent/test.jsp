<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String DOB=request.getParameter("DoB");
String Gender=request.getParameter("Gender");
String ContactNumber=request.getParameter("ContactNumber");
String Email=request.getParameter("Email");
String UserId=request.getParameter("UserId");
String Password=request.getParameter("Password");
String ConfirmPassword=request.getParameter("ConfirmPassword");

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Aishu7");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into smartlogin(firstName,lastName,DOB,Gender,Contactnumber,Email,UserId,Password,ConfirmPassword)values('"+firstName+"','"+lastName+"','"+DOB+"','"+Gender+"','"+ContactNumber+"','"+Email+"','"+UserId+"','"+Password+"','"+ConfirmPassword+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("login1.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


