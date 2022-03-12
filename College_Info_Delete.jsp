 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<html lang="en">
<head>
	<title>CAREER|DELETE</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

thead,td{
color:#6666ff;
background-color:#ffffff;
font-family:Times New Roman;
font-size:20px;
}
</style>
</head>
<body background=images/cg1.jpg>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
	
			<form>
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>DELETE COLLEGE INFORMATION</center></h1>
	
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
        <th>ADDRESS</th>
        <th>CITY</th>
        <th>INTAKE</th>
        <th>FEES</th>
        
        <th>Action</th> 
    </tr>
    </thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
Statement st=conn.createStatement();

ResultSet rs=st.executeQuery("Select * from college_info");
int i=0;
while(rs.next()){
%>
<tr>
        <td height="50"><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
    <td><%=rs.getString(7)%></td>
    <td><%=rs.getString(8)%></td>
  
<td><a href="College_Info_Delete_Process.jsp?uid=<%=rs.getString("cid")%>">
<button type="button" class="delete">Delete</button></a></td>
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