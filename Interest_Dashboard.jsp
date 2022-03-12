<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background=images/backimage.jpg>
<div class="panel-body">
<div class="container">
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		<br/><br/><br/><br/>
		<center><h1 style="font-family:times new roman;color:#ffffff;">PREDICTION SKILLS</h1></center>
			<table class="table table-bordered" style="font-family:times new roman;color:#ffffff;">
			<tr>
			<th>NAME</th>
			<th>CONTACT</th>
			<th>EMAIL</th>
			<th>CITY</th>
			<th>SKILL</th>
			</tr>

<%
String str=request.getParameter("skill").toLowerCase();
try
{
	 Class.forName("com.mysql.jdbc.Driver");
	 
Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
PreparedStatement stm=conn.prepareStatement("Select * from skills where skill=? ");
stm.setString(1, str);
ResultSet rs=stm.executeQuery();
while(rs.next()){
	%>

	<tr>
	<td><%out.print(rs.getString(2));%></td>
	<td><%out.print(rs.getString(3));%></td>
	<td><%out.print(rs.getString(4));%></td>
	<td><%out.print(rs.getString(5));%></td>
	<td><%out.print(rs.getString(6));%></td>
	</tr>

	<%
	
}


}catch(Exception ex){
	out.print(""+ex);
}
%>
	</table>

		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>

</body>
</html>