 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import= "java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>   
 

<html>
<head>
	<title></title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/table.css">
</head>
<body background="images/careerbg.jpg" height="1200px">
<script>
    $(document).ready(function(){
       $(".dropdown-toggle").dropdown();
    });
</script>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		<form action="" method="post">

		<center><h1 style="color:#ffffff;">ADMIN LOGIN</h1></center>
		<div class="form-group">
        <input type="text" class="form-control" name="uname" placeholder="Enter User Name">
		</div>
			<div class="form-group">
        <input type="password" class="form-control" name="pwd" placeholder="Enter Password">
		</div>
	<center><input type="submit" value="LOGIN" name="btnadmin"></center>
		</form>
        <%
        String str=request.getParameter("btnadmin");
        String struname=request.getParameter("uname");
        String strpwd=request.getParameter("pwd");
        if(str!=null){
        	
        	if(struname.contentEquals("admin")&&strpwd.contentEquals("admin")){
        	%>
				<script>
                     window.location="AdminDashboard.jsp"
                 </script>
                 
        	<%
        	}
        }
        %>
                
      </script>

       &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        <div class="col-sm-2"></div>  
	</div>
</div>
</div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="script.js"></script>

        <!-- Only used for the demos ads. Please ignore and remove. --> 
        <script src="https://cdn.tutorialzine.com/misc/enhance/v3.js" async></script>
</body>
</html>