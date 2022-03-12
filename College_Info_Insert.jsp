 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html lang="en">
<head>
	<title></title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

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
		
			<img style="background-color:#ffffff;" align="center" width="80px" height="80px" class="img-responsive" src="images/logo.png"/>
		   
			<form method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Add Product</center></h1>
		    <div class="form-group"> 
                <input type="text" class="form-control" name="title" placeholder="Enter Product Title" required> 
            </div> 

            <div class="form-group"> 
                <input type="text"class="form-control" pattern="^(([0-9]*)|(([0-9]*)\.([0-9]*)))$" name="cost" placeholder="Enter Product Cost in Rupees" required> 
            </div> 

            <div class="form-group"> 
                <input type="text" class="form-control" name="desc" placeholder="Enter Product Description" required> 
            </div> 
            
             <div class="form-group"> 
                <input type="text" class="form-control"  name="cname" placeholder="Enter Company Name" required> 
            </div> 
            
                <div class="form-group">

    <label style="color:#ffffff;" for="name" class="cols-sm-2 control-label">Category</label>
		<div class="cols-md-6">
		<div>
		
           <select  class="form-control" name="category">
			  <option>Jwellery</option>
			  <option>Electronics</option>

		  </select>         	
		</div> 
           <br/>
                <center><input type="submit"  name="sub" value="Submit"/> </center>
            
          
            </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<%
String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
String title=request.getParameter("title");
String cost=request.getParameter("cost");
String desc=request.getParameter("desc");
String cname=request.getParameter("cname");
String category=request.getParameter("category");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into (title,cost,description,company_name,category)values('"+title+"','"+cost+"','"+desc+"','"+cname+"','"+category+"')");
%>
<script>
alert("Product Added Successfully");
<% response.sendRedirect("Login.jsp"); %>
</script>
<%

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
%>


</body>
</html>