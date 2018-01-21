
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Books Catelog</h2>
                   
  <ul class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="BOOK1.jsp">ALL Books</a></li>
    <li><a href="table1.html">Search books</a></li>     
  </ul>
</div>

<table class="table">
    <thead>
<tr>
<th>id</th>
<th>Name</th>
<th>Author</th>
</tr>
		</thead>
		 
<%
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
}else{  
int bookid=Integer.parseInt(s);  
try{
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sandy","root","sandy");  
PreparedStatement ps=con.prepareStatement("select * from library where bookid=?");  
ps.setInt(1,bookid);  
ResultSet rs=ps.executeQuery();  
while(rs.next())
{
	%>
	 <tbody>
<tr class="table-active">

<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
</table>
<%
	}  
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  


</form> 

</body>


<div class="container">                 
  <ul class="pager">
    <li><a href="book.jsp">Previous</a></li>
    <li><a href="Main.jsp">Next</a></li>
  </ul>
</div>


</html>