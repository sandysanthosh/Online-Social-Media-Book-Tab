<HTML> 
<HEAD><TITLE>Welcome</TITLE></HEAD>  
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<BODY>
<div class="btn-group">
<div class="left">
<a href="Main.jsp">  <button type="button" class="btn btn-primary">HOME</button></a>
  </div>
</div>
<br><br><br><br>
<table align="center" style="border:1px solid #000000;">
<%
if(session.getAttribute("username")!=null && session.getAttribute("username")!="")
{
String user = session.getAttribute("username").toString();
%>
<h3>Welcome <b><%= user%></b></h3>
<%
}
%>
<div class="embed-responsive embed-responsive-16by9" align="center" >
  <iframe  class="embed-responsive-item" src="https://www.youtube.com/embed/zpOULjyy-n8?rel=0" allowfullscreen></iframe>
</div>
</table>
</body>
<html>