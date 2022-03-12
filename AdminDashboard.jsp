<%
HttpSession hs=request.getSession();
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@include file="Header.jsp" %>
<html lang="en">
<head>
	<title>CAREER|ADMIN DASHBOARD</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
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
<br/><br/><br/><br/>
	<div class="row">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		
			
			<form method="post">
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>VIEW COLLEGE INFORMATION</center></h1>
		    <%
		    Class.forName("com.mysql.jdbc.Driver");
		      Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
		      Statement st=conn.createStatement();
		      ResultSet rs=st.executeQuery("Select * from college_info");
		    %>
		    <center>
		     <table class="table table-bordered" style="color:#ffffff;">
		     
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
             <tbody>
         <tr>
         <%
String buttonclick=request.getParameter("sub");

    try{

       rs=st.executeQuery("Select * from college_info");
       
        while(rs.next())
        {
        %>
        
        <tr>
   <td height="50"><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
    <td><%=rs.getString(7)%></td>
    <td><%=rs.getString(8)%></td>
    <td><a href="Cut_Off.jsp?cid=<%=rs.getString("cid")%>">
<button type="button">CUT OFF</button></a></td>	

</tr>
        <%
        }
    }
    catch(Exception ex){
    out.println(""+ex.getMessage());
    ex.printStackTrace();
    }

    %>
    </tbody>
         </table> 
         </center>         
            </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>



</body>
</html>