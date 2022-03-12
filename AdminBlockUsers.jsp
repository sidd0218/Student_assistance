 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<html lang="en">
<head>
	<title>Career Guidance Portal|Block Users</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.bg {
  /* The image used */
  background-image: url("images/bgb.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
thead,td{
color:#6666ff;
background-color:#ffffff;
font-family:Times New Roman;
font-size:20px;
}
</style>
</head>
<body background=images/bgb.jpg>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
			<form>
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Block Users</center></h1>
	
  <%
String tit=request.getParameter("title");
String buttonclick=request.getParameter("sub");


try
{
%>
	<center>
    <table class="table table-bordered">
    <thead style="border-width: 10; width: 250; border-color: red green blue yellow;  border-style: ridge">
   <tr>
        <th>NAME</th>
        <th>CONTACT</th>
        <th>EMAIL</th>
        <th>ACTION</th>
      
    </tr>
    </thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
Statement st=conn.createStatement();

ResultSet rs=st.executeQuery("Select * from register");
int i=0;
while(rs.next()){
%>
<tr>
        <td height="50"><%=rs.getString("name")%></td>
       <td><%=rs.getString("contact")%></td>
    <td><%=rs.getString("email")%></td>
   
<td><a href="block_user.jsp?uid=<%=rs.getString("uid")%>">
<button type="button" class="delete">BLOCK</button></a></td>
</tr>

<%
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
           </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>

</body>
</html>