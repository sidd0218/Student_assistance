<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html lang="en">
<head>
	<title>Student Placement</title>
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
<body background=images/about.jpg>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
			<form method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Add Placed Students</center></h1>

            <div class="form-group"> 
                <input type="text"class="form-control" name="name" placeholder="Enter Full Name" required> 
            </div>

            <div class="form-group"> 
                <input type="text" class="form-control"name="company" placeholder="Enter Company" required> 
            </div> 
            Select Branch :
            <div class="form-group">
            <select class="form-control" name="branch">
            <option>CSE</option>
            <option>IT</option>
            </select>
            </div>
            <div class="form-group"> 
                <input type="text" class="form-control" name="batch" placeholder="Enter Batch Year" required> 
            </div> 
           
   <center><input style="background-color:#ffffff;color:#000000;
   width:100px; height:60px"
    type="submit"  name="sub" value="Add"/> </center>
            

            </form>
 <%
String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
String name=request.getParameter("name");
String company=request.getParameter("company");
String branch=request.getParameter("branch");
String batch=request.getParameter("batch");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");

PreparedStatement prst=conn.prepareStatement("insert into placed(name,company,branch,batch)values(?,?,?,?)");
prst.setString(1,name.toUpperCase());    
prst.setString(2,company.toUpperCase());
prst.setString(3,branch);
prst.setString(4,batch);
prst.executeUpdate();
%>
<script>
alert("Placed Student Added Successfully");

</script>
<%

}
catch(Exception ex)
{
out.print(ex);
ex.printStackTrace();
}
}
%>          
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<center><button onclick="goBack()">Go Back</button></center>

<script>
function goBack() {
	window.location="index.jsp";
}
</script>
</body>
</html>