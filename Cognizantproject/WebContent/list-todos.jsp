<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<title>Todo's for ${name}</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
 body{
    background-image:url("https://wallpaperaccess.com/full/2910375.jpg");
 }
 table, td, th {
  border: 1px solid black;
}
th{
    height: 70px;
     padding: 8px;
}
td {
  height: 50px;
  vertical-align: bottom;
   padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
th {
  background-color: #04AA6D;
  color: white;
}
table.center {
  margin-top:140;
  margin-bottom:auto;
  margin-left: auto;
  margin-right: auto;
}
table {
  width: 50%;
  border-collapse: collapse;
  
}
</style>
</head>

<body>
	<div class="container">
		<table class="center">
			<caption style="color:green;font-size:50">Your products are</caption>
			<thead>
				<tr>
					<th>ProductName</th>
					<th>NumberOfItemsAvailable</th>
					<th>DateOfManufacturing</th>
					<th>DateOfExpiry</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.productName}</td>
						<td>${todo.numberOfItemsAvailable}</td>
						<td>${todo.dateOfManufacturing}</td>
						<td>${todo.dateOfExpiry}</td>
						<td><a type="button" class="btn btn-warning" href="/delete-todo?productName=${todo.productName}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div style="font-size:30"> <a class="button" href="/add-todo" >Add your products...</a></div>
		
        <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
	</div>
</body>

</html>