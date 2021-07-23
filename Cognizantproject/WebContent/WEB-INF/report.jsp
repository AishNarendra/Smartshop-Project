<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>

<h4 class="title"> Report</h4>
<jsp:include page="msg.jsp" />
<table class="table" id="list">
	<thead>
		<tr>
			<th>Id</th>
			<th>Date</th>
			<th>Customer Name</th>
			<th>Category</th>
			<th>Vendor</th>
			<th>Id No</th>
			<th>Amount</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<%
	
		String userid=session.getAttribute("userid").toString();
		ResultSet rs=con.createStatement().executeQuery("SELECT b.*,concat(fname,' ',lname) as vname FROM billpayment b join vendor v on b.vid=v.userid order by id desc");
		while(rs.next()) { 
			%>
			<tr>
			<td><%= rs.getString("id") %></td>
			<td><%= rs.getString("tdate") %></td>
			<td><%= rs.getString("cname") %></td>
			<td><%= rs.getString("category") %></td>
			<td><%= rs.getString("vname") %></td>
			<td><%= rs.getString("idno") %></td>
			<td>&#8377; <%= rs.getString("amount") %></td>
			<td><%= rs.getString("status") %></td>
			</tr>
		<% }
		con.close();
		%>
	</tbody>
</table>
