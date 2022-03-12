 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
String pid=request.getParameter("pid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root", "root");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("Select * from profile where pid="+pid);
while(rs.next()){
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
  <div class="form-group"> 
                <input type="text"class="form-control" name="name"value="<%out.println(rs.getString(2));%>"> 
            </div>
            <div class="form-group"> 
                <input type="text" class="form-control"name="email"value="<%out.println(rs.getString(3));%>"> 
            </div> 
            <div class="form-group"> 
                <input type="text" class="form-control"name="contact"value="<%out.println(rs.getString(4));%>"> 
            </div> 
            
            
                        <div class="form-group"> 
                <input type="text" class="form-control"name="clas"value="<%out.println(rs.getString(5));%>"> 
            </div> 
              
              <div class="form-group"> 
                <input type="text" class="form-control"name="stream" value="<%out.println(rs.getString(6));%>"> 
            </div> 
                        <div class="form-group"> 
                <input type="text" class="form-control"name="ssc" value="<%out.println(rs.getString(7));%>"> 
            </div> 

            <div class="form-group"> 
                <input type="text" class="form-control" name="hsc" value="<%out.println(rs.getString(8));%>"> 
            </div> 
            <div class="form-group"> 
                <input type="text" class="form-control" name="hsc" value="<%out.println(rs.getString(9));%>"> 
            </div> 
                        <div class="form-group"> 
                <input type="text" class="form-control" name="diploma" value="<%out.println(rs.getString(10));%>"> 
            </div> 
                        <div class="form-group"> 
                <input type="text" class="form-control" name="other" value="<%out.println(rs.getString(11));%>"> 
            </div> 
                        <div class="form-group"> 
                <input type="text" class="form-control" name="grad" value="<%out.println(rs.getString(12));%>"> 
            </div> 
                        <div class="form-group"> 
                <input type="text" class="form-control" name="pgrad" value="<%out.println(rs.getString(13));%>"> 
            </div> 

		<center><input type="submit" name="sub" value="UPDATE"/></center>
    </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<% 

}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
<%
String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String clas=request.getParameter("clas");
String stream=request.getParameter("stream");
String ssc=request.getParameter("ssc");
String hsc=request.getParameter("hsc");
String diploma=request.getParameter("diploma");
String other=request.getParameter("other");
String grad=request.getParameter("grad");
String pgrad=request.getParameter("pgrad");

try
{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
 
     PreparedStatement ps=(PreparedStatement) conn.prepareStatement
   ("update profile set Name=?,Email=?,Contact=?,Class=?,Stream=?,SSC=?,HSC=?,Diploma=?,Other=?,Graduation=?,PGrad=? where pid="+pid);
     ps.setString(1,name);
     ps.setString(2,email);
     ps.setString(3,contact);
     ps.setString(4,clas);
     ps.setString(5,stream);
     ps.setString(6,ssc);
     ps.setString(7,hsc);
     ps.setString(8,diploma);
     ps.setString(9,other);
     ps.setString(10,grad);
     ps.setString(11,pgrad);
  
int i =ps.executeUpdate();
if(i>0)
{

response.sendRedirect("Dashboard.jsp");	
}
}catch(Exception e){
	out.print(e);
	e.printStackTrace();
	
}
}
%>
</body>
<script>

</script>
</html>