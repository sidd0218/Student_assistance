 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html lang="en">
<head>
	<title>CAREER|COLLEGE INFORMATION VIEW</title>
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
border-width: 10;
width: 280;
border-style:ridge double groove solid;
}
</style>
</head>
<body background=images/backimage.jpg>
<script>
    $(document).ready(function(){
       $(".dropdown-toggle").dropdown();
    });
</script>
<div class="panel-body">
<div class="container">
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
		<form method="post">
<center>		<h1 style="font-family:times new roman; color:#ffffff;"><u>SKILLS</u></h1></center>
<div class="form-group">
<input type="text" class="form-control" placeholder="Enter College Name" name="name">
</div>

<div class="form-group">
<input type="text" class="form-control" pattern="[0-9]{10}" placeholder="Enter College Contact" name="contact">
</div>

<div class="form-group">
<input type="text" class="form-control" placeholder="Enter College Email" name="email">
</div>

<div class="form-group">
<input type="text" class="form-control" placeholder="Enter College City" name="city">
</div>

<div class="form-group">
<select class="form-control" name="skil">
 
            <option>Dance</option>
            <option>Music</option>
            <option>Drama</option>
            <option>Painting</option>
            <option>Arts</option>
            <option>Design</option>
            <option>Fashion</option>
            <option>Sports</option>
</select>
</div>
<center><input type="submit" name="addskills" value="ADD SKILL"></center>
</form>	
<%
String skillButton=request.getParameter("addskills");

if(skillButton!=null){
	String strName=request.getParameter("name");
	String strContact=request.getParameter("contact");
	String strEmail=request.getParameter("email");
	String strCity=request.getParameter("city");
	String strSkil=request.getParameter("skil");
	

	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
		PreparedStatement prst=con.prepareStatement("insert into skills(name,contact,email,city,skill)values(?,?,?,?,?)");
		prst.setString(1,strName.toUpperCase());
		prst.setString(2,strContact);
		prst.setString(3,strEmail.toLowerCase());
		prst.setString(4,strCity.toUpperCase());
		prst.setString(5,strSkil.toLowerCase());
		
		prst.executeUpdate();
		%>
		<script>
		alert("Skills Added Successfully !");
		</script>
		<%
	}catch(Exception ex){
		out.print(ex);
	}
}
%>
    
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>



</body>
</html>