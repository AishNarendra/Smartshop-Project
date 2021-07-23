<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String pname=request.getParameter("productname");
String numberofitems=request.getParameter("numberofitems");
String mdate=request.getParameter("manufacturingdate");
out.println(mdate);
String edate=request.getParameter("expirydate");
out.println(edate);

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Aishu7");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into stocks(productname,numberofitems,manufacturingdate,expirydate)values('"+pname+"','"+numberofitems+"','"+mdate+"','"+edate+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>