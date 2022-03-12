 <%
 HttpSession hs=request.getSession();
 String uid= hs.getAttribute("uid").toString();
 String strname=hs.getAttribute("hsname").toString();
 
 %>
 <%@page import="java.sql.*,java.util.*"%>
 <%
String name="",email="",contact="",
clas="",stream="",ssc="",hsc="",diploma="",
other="",grad="",pgrad="";
   	 Class.forName("com.mysql.jdbc.Driver");
      Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery("Select * from profile");
       while(rs.next()){
    	   name=rs.getString(2);
    	   email=rs.getString(3);
    	   contact=rs.getString(4);
    	   clas=rs.getString(5);
    	   stream=rs.getString(6);
    	   ssc=rs.getString(7);
    	   hsc=rs.getString(8);
    	   diploma=rs.getString(9);
    	   other=rs.getString(10);
    	   grad=rs.getString(11);
    	   pgrad=rs.getString(12);

}

	 %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="images/cg1.jpg">
<div class="container">
<div style="text-align:right; color:#ffffff; font-family:times new roman;">
<a href="">Log Out</a>
</div>
<center><h2 style="color:#ffffff;">Career Guidance</h2></center>
<hr color=#ffffff>
<h3 style="color:#ffffff; font-family:times new roman">Welcome <%out.print(strname); %> !</h3>
<center><h3 style="color:#ffffff;">Find Your College Here</h3></center>
<br/>
<div class="row">
<div class="col-md-8">
<div class="row">

<div class="col-md-4">
<a href="Search_By_City.jsp"><img class="img-responsive" src="images/city.jpeg" width="250px" height="200px">
<p style="color:#ffffff;">SEARCH BY CITY</p></a>
</div>

<div class="col-md-4">
<a href="Search_By_College.jsp"><img class="img-responsive" src="images/college.jpg" width="250px" height="200px">
<p style="color:#ffffff;">SEARCH BY COLLEGE</p></a>
</div>

<div class="col-md-4">
<a href="Search_By_Cutoff.jsp"><img class="img-responsive" src="images/cutoff.jpeg" width="250px" height="200px">
<p style="color:#ffffff;">SEARCH BY CUT OFF</p></a>
</div>
</div>




<div class="row">

<div class="col-md-4">
<a href="Search_By_Fees.jsp"><img class="img-responsive" src="images/fees.jpg" width="250px" height="200px">
<p style="color:#ffffff;">SEARCH BY FEES</p></a>
</div>
</a>

<div class="col-md-4">
<a href="Search_By_Intake.jsp"><img class="img-responsive" src="images/intake.jpg" width="250px" height="200px">
<p style="color:#ffffff;">SEARCH BY INTAKE</p></a>
</div>

<div class="col-md-4">

</div>

</div>




</div>
<div class="col-md-4">

 <h2 style="color:#ffffff;">About Me</h2>
      <b>
     <table class="table table-hover" style="color:#ffffff;">
     <tr><td>Name: <%out.print(name); %></td></tr>
     <tr><td>Email : <%out.print(email);%></td></tr>
     <tr><td>Contact : <%out.print(contact);%></td></tr>
     <tr><td>Class : <%out.print(clas);%></td></tr>
     <tr><td>Stream : <%out.print(stream);%></td></tr>
     <tr><td>SSC : <%out.print(ssc);%>%</td></tr>
     <tr><td>HSC : <%out.print(hsc);%></td></tr>
     <tr><td>POLYTECHNIC: <%out.print(diploma);%>%</td></tr>
     <tr><td>OTHER : <%out.print(other);%></td></tr>
     <tr><td>GRADUATION : <%out.print(grad);%>%</td></tr>
     <tr><td>POST GRADUATION : <%out.print(pgrad);%>%</td></tr>
     
     </table>
     </b>
     

</div>


</div>


</div>
</body>
</html>