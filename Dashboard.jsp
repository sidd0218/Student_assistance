 <%
 HttpSession hs=request.getSession();
 String uid= hs.getAttribute("uid").toString();
 String strname=hs.getAttribute("hsname").toString();
 
 %>
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

<style>
* {
  box-sizing: border-box;
}

/* Add a gray background color with some padding */
body {
  font-family: Arial;
  padding: 20px;
  background: #f1f1f1;
}

/* Header/Blog Title */
.header {
  padding: 30px;
  font-size: 40px;
  text-align: center;
  background: white;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 75%;
}

/* Right column */
.rightcolumn {
  float: left;
  width: 25%;
  padding-left: 20px;
}

/* Fake image */
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}

/* Add a card effect for articles */
.card {
   background-color: white;
   padding: 20px;
   margin-top: 20px;
   height:700px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}

</style>
  <link rel="stylesheet" href="css/dash.css">
</head>
<body background=images/cg1.jpg>
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


  <div style="text-align:right"><a href="index.jsp">Log Out</a></div>
<div class="header">
  <h2>CAREER PREDICTION</h2>

</div>
 
<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2>Hello <%out.print(strname);%></h2>

      <div class="fakeimg" style="height:400px;">
      	<div class="row">
    <a href="Search_By_City.jsp">
  <div class="column">
<img class="img-responsive" src="images/city.jpeg" width="250px" height="200px">
<p>SEARCH BY CITY</p>
  </div></a>
  
  <a href="Search_By_College.jsp">
  <div class="column">
<img class="img-responsive" src="images/college.jpg" width="250px" height="200px">
<p>SEARCH BY COLLEGE</p>
  </div></a>
  
  <a href="Search_By_Cutoff.jsp">
  <div class="column">
<img class="img-responsive" src="images/cutoff.jpeg" width="250px" height="200px">
<p>SEARCH BY CUT OFF</p>
  </div></a>
  
</div>
<br/><br/><br/><br/>
<!-- Second Row Starts -->
      	<div class="row">
      	<a href="Search_By_Fees.jsp">
  <div class="column" style="background-color:#aaa;">
<img class="img-responsive" src="images/fees.jpg" width="250px" height="200px">
<p>SEARCH BY FEES</p>
  </div></a>
  
  <a href="Search_By_Intake.jsp">
  <div class="column">
<img class="img-responsive" src="images/intake.jpg" width="250px" height="200px">
<p>SEARCH BY INTAKE</p>
  </div></a>
  <div class="column">

  </div>
</div>	
      
            </div>

      <p></p>
    </div>

  </div>
  
  <div class="rightcolumn">
    <div class="card">
      <h2>About Me</h2>
      
     <table class="table table-hover">
     <tr><td>Name: <%out.print(name); %></td></tr>
     <tr><td>Email : <%out.print(email);%></td></tr>
     <tr><td>Contact : <%out.print(contact);%></td></tr>
     <tr><td>Clas : <%out.print(clas);%></td></tr>
     <tr><td>Stream : <%out.print(stream);%></td></tr>
     <tr><td>SSC : <%out.print(ssc);%>%</td></tr>
     <tr><td>HSC : <%out.print(hsc);%></td></tr>
     <tr><td>POLYTECHNIQUE : <%out.print(diploma);%>%</td></tr>
     <tr><td>OTHER : <%out.print(other);%></td></tr>
     <tr><td>GRADUATION : <%out.print(grad);%>%</td></tr>
     <tr><td>POST GRADUATION : <%out.print(pgrad);%>%</td></tr>
     
     </table>
     
     
     
     </table>
	
	        

    </div>

 
  </div>
</div>


</body>
</html>
