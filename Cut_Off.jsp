<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
 
<html lang="en">
<head>
	<title>CAREER|Registration</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body background=images/cg1.jpg>
<script>
    $(document).ready(function(){
       $(".dropdown-toggle").dropdown();
    });
</script>
<%
String id=request.getParameter("cid");
%>
<div class="panel-body">
<div class="container">
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
	
			<form method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>COLLEGE CUT OFF</center></h1>
		   <div class="form-group"> 
                <input type="hidden" class="form-control"name="id" value="<%out.println(id); %>" required> 
            </div> 

             <div class="form-group"> 
                <input type="number" class="form-control"name="ssc" placeholder="Enter SSC Cut Off" required> 
            </div> 
             <div class="form-group"> 
                <input type="number" class="form-control"name="hsc" placeholder="Enter HSC Cut Off"> 
            </div> 
            
             <div class="form-group"> 
                <input type="number" class="form-control"name="diploma" placeholder="Enter Diploma Cut Off"> 
            </div> 
            
             <div class="form-group"> 
                <input type="number" class="form-control"name="other" placeholder="Enter Other Cut Off"> 
            </div> 
             <div class="form-group"> 
                <input type="number" class="form-control"name="grad" placeholder="Enter Graduation Cut Off"> 
            </div> 
             <div class="form-group"> 
                <input type="number" class="form-control"name="pgrad" placeholder="Enter Post Graduation Cut Off"> 
            </div> 
                         <div class="form-group"> 
                <input type="text" class="form-control"name="interest" placeholder="Enter Interest"> 
            </div> 
                <center><input type="submit"  name="sub" value="ADD CUT OFF INFO"/> </center>

            </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>

<%
String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
String college_id=request.getParameter("id");
String ssc=request.getParameter("ssc");
String hsc=request.getParameter("hsc");
String diploma=request.getParameter("diploma");
String other=request.getParameter("other");
String grad=request.getParameter("grad");
String pgrad=request.getParameter("pgrad");
String interest=request.getParameter("interest");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
PreparedStatement prst=conn.prepareStatement("insert into cutoff(ssc,hsc,diploma,grad,pgrad,interest,other,college_id)values(?,?,?,?,?,?,?,?)");

prst.setString(1,ssc);
prst.setString(2,hsc);
prst.setString(3,diploma);
prst.setString(4,grad);
prst.setString(5,pgrad);
prst.setString(6,interest);
prst.setString(7,other);
prst.setString(8,college_id);
prst.executeUpdate();


}
catch(Exception e)
{
out.print(e);

}
}
%>
</body>
</html>