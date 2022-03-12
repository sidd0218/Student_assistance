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
<body background=images/backimage.jpg>
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
	
			<form method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Student Registration</center></h1>
		   
	         <h4 style="font-family:times new roman; color:#ffffff;">Enter Name :</h4>
            <div class="form-group"> 
                <input type="text"class="form-control" name="name" placeholder="*Enter Full Name" required> 
            </div>
	       <h4 style="font-family:times new roman; color:#ffffff;">Enter Email-Id:</h4>
            <div class="form-group"> 
                <input type="email" class="form-control" name="email" placeholder="*Enter Email" required> 
            </div> 
          <h4 style="font-family:times new roman; color:#ffffff;">Enter Contact Number :</h4>
                        <div class="form-group"> 
                <input type="text"class="form-control" name="contact" pattern="[0-9]{10}" placeholder="*Enter Contact Number" required> 
            </div>
            <h4 style="font-family:times new roman;color:#ffffff">Select Area Of Interest :</h4>
            <div class="form-group">
            <select class="form-control" name="intr">
            <option>Dance</option>
            <option>Music</option>
            <option>Drama</option>
            <option>Painting</option>
            <option>Arts</option>
            <option>Design</option>
            <option>Fashion</option>
            <option>Sport</option>
            </select>
            </div>
            <h4 style="font-family:times new roman; color:#ffffff;">Enter SSC Percentage :</h4>
             <div class="form-group"> 
                <input type="text" value="0" class="form-control"name="ssc" placeholder="*Enter SSC Percentage" required> 
            </div> 
                        <h4 style="font-family:times new roman; color:#ffffff;">Enter HSC Percentage :</h4>
             <div class="form-group"> 
                <input type="text" value="0" class="form-control"name="hsc" placeholder="Enter HSC Percentage"> 
            </div> 
                        <h4 style="font-family:times new roman; color:#ffffff;">Enter DIPLOMA Percentage :</h4>
             <div class="form-group"> 
                <input type="text" value="0" class="form-control"name="diploma" placeholder="Enter Diploma Percentage"> 
            </div> 
                        <h4 style="font-family:times new roman; color:#ffffff;">Enter JEE SCORE :</h4>
             <div class="form-group"> 
                <input type="text" value="0" class="form-control"name="jee" placeholder="Enter JEE Score"> 
            </div> 
	<h4 style="font-family:times new roman; color:#ffffff;">Enter NEET SCORE :</h4>
             <div class="form-group"> 
                <input type="text" value="0" class="form-control"name="neet" placeholder="Enter NEET Score"> 
            </div> 
        <h4 style="font-family:times new roman; color:#ffffff;">Enter MHTCET SCORE :</h4>
             <div class="form-group"> 
                <input type="text" value="0" class="form-control"name="mhcet" placeholder="Enter MHTCET Score"> 
            </div> 
     <h4 style="font-family:times new roman; color:#ffffff;">Enter AIIMS SCORE :</h4>
            <div class="form-group"> 
                <input type="text" value="0" class="form-control"name="aims" placeholder="Enter AIMS Score"> 
            </div> 
    <h4 style="font-family:times new roman; color:#ffffff;">Enter ALET SCORE :</h4>
                         <div class="form-group"> 
                <input type="text" value="0" class="form-control"name="alet" placeholder="Enter ALET Score"> 
            </div> 
                             <h4 style="font-family:times new roman; color:#ffffff;">Enter CA-CPT SCORE :</h4>
                        <div class="form-group"> 
                <input type="text" value="0" class="form-control" name="cacpt" placeholder="Enter CA-CPT Score"> 
            </div>
                         <h4 style="font-family:times new roman; color:#ffffff;">Enter NATA SCORE :</h4>
                  <div class="form-group"> 
                <input type="text" value="0" class="form-control" name="nata" placeholder="Enter NATA Score"> 
            </div>
                                    <h4 style="font-family:times new roman; color:#ffffff;">Enter Password :</h4>
             <div class="form-group"> 
                <input type="password" class="form-control" name="password" name="password" placeholder="*Enter your Password" title="1 Uppercase ,1 Lower Case,1 Digit,1 Special Character,Minimum 8 Characters" placeholder="Enter your Password" required> 
            </div> 
                <center><input type="submit"  name="sub" value="Register"/> </center>
            
             <div class="form-group"> 
                <a style="color:#ffffff;" href="Login.jsp"><b><center>Already a Member ? Login Here</center></b></a> 
            </div> 

            </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>

<%
String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String interest=request.getParameter("intr");
String ssc=request.getParameter("ssc");
String hsc=request.getParameter("hsc");
String diploma=request.getParameter("diploma");
String jee=request.getParameter("jee");
String neet=request.getParameter("neet");
String mhcet=request.getParameter("mhcet");
String aims=request.getParameter("aims");
String alet=request.getParameter("alet");
String cacpt=request.getParameter("cacpt");
String nata=request.getParameter("nata");
String password=request.getParameter("password");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
PreparedStatement prst=conn.prepareStatement("insert into profile(Name,Email,Contact,SSC,HSC,Diploma,JEE,NEET,MHCET,AIMS,ALET,CACPT,NATA,Password,Interest)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
prst.setString(1,name);
prst.setString(2,email);
prst.setString(3,contact);
prst.setString(4,ssc);
prst.setString(5,hsc);
prst.setString(6,diploma);
prst.setString(7,jee);
prst.setString(8,neet);
prst.setString(9,mhcet);
prst.setString(10,aims);
prst.setString(11,alet);
prst.setString(12,cacpt);
prst.setString(13,nata);
prst.setString(14,password);
prst.setString(15,interest);
prst.executeUpdate();
%>
<script>
alert("Registered Successfully");
<% response.sendRedirect("Login.jsp"); %>
</script>
<%

}
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}
}
%>


</body>
</html>