<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String pid=request.getParameter("productid");
String pname=request.getParameter("productname");
String brand=request.getParameter("brand");
String type=request.getParameter("producttype");
String quantity=request.getParameter("quantity");
String rateperquantity=request.getParameter("rateperquantity");
String count=request.getParameter("total");

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Aishu7");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into SmartProductPage1(productid,productname,brand,producttype,quantity,rateperquantity,count)values('"+pid+"','"+pname+"','"+brand+"','"+type+"','"+quantity+"','"+rateperquantity+"','"+count+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
