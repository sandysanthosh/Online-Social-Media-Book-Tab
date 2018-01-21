
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">`
<title>Insert title here</title>
</head>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
<div class="container">
  <h2>Books Catelog</h2>
                   
  <ul class="breadcrumb">
    <li><a href="Main.jsp">Home</a></li>
    <li><a href="BOOK1.jsp">ALL Books</a></li>
    <li><a href="table1.html">Search books</a></li>     
  </ul>
</div>

	<table class="table table-hover">
    <thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Author</th>
</tr>
		</thead>
		 
<%
 
try{
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sandy","root","sandy");  
PreparedStatement ps=con.prepareStatement("select * from library");   
ResultSet rs=ps.executeQuery();  
while(rs.next())
{
	%>
	 <tbody>
<tr class="table-active">
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
</tr>
</tbody>
	<% 
	}  
}
catch(Exception e){e.printStackTrace();}  
%>  


</form>
<div class="container">                 
  <ul class="pager">
    <li><a href="Main.jsp">Home</a></li>
    <li><a href="book.jsp">Back</a></li>
  </ul>
</div> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>

</html>
