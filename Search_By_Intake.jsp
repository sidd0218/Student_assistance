 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html>
<head>
	<title></title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/table.css">
</head>
<body background="images/cg1.jpg">
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
		<center><h2 style="color:#ffffff;">SEARCH BY INTAKE</h2>
		<form method="post">
		
	  <div class="col-md-6">
	   <b><p style="color:#ffffff;">Choose University :</p></b>
 <select name="uni" class="form-control">

<option>AUTONOMOUS</option>
<option>SGBAU</option>
<option>RTMNU</option>
<option>BAMU</option>
<option>IIT DELHI</option>
<option>IIT ROORKEE</option>
<option>IIT MUMBAI</option>
<option>IIT KHARAGPUR</option>
<option>IIT KANPUR</option>
<option>IIT KOTA</option>
<option>NIT PUNE</option>
<option>NIT MUMBAI</option>
 </select>
 </div><br/>
 <input type="submit" value="Search" name="name"></center>
		</form>
         <center>
               
  <%
  		String clickCityButton=request.getParameter("name");
  		
		if(clickCityButton!=null){
			
 %>
 <h2>Filter By Intake</h2>
 <form method="post">
 <input type="hidden" name="uniname" value="<%out.println(request.getParameter("uni")); %>">
 <div class="row">
 <!-- 1st column starts -->
 <div class="col-md-6">
 <select name="intake" class="form-control">
 <option value="asc">Ascending</option>
  <option value="desc">Descending</option>
 </select>
 </div>
  <!-- 1st column ends -->
 
  <!-- 2nd column starts -->
  <div class="col-md-6">
  
 </div>
   <!-- 2nd column ends -->
 </div>
<br/>
<input type="submit" value="Show Results" name="results">
 </form>
 
<%} %>
<%
String str45=request.getParameter("results");

if(str45!=null){
	
	String extracted=request.getParameter("uniname");
	String strAsc=request.getParameter("intake");
	//String uni=request.getParameter("uni");
out.print(extracted);
    String query="";
try{
	
	if(strAsc.trim().contentEquals("asc")){
		
		query="select * from college_info where university = ? ORDER BY intake ASC ";
	}else{
		query="select * from college_info where university = ? ORDER BY intake DESC";
	}
	//out.println(query);
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
PreparedStatement stm=conn.prepareStatement(query);
stm.setString(1,extracted.trim());
ResultSet rs=null;
rs=stm.executeQuery();
 
 while(rs.next())
 {

    %>
     <table class="table table-bordered" style="color:#ffffff;">

   <tr>
         
         <th>COLLEGE NAME</th>
         <th>CONTACT</th>
         <th>EMAIL</th>
         <th>ADDRESS</th>
         <th>CITY</th>
         <th>INTAKE</th>
         <th>FEES</th>
     </tr>
<tr>
		<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	<td><%=rs.getString(7)%></td>
	<td><%=rs.getString(8)%></td>
</tr></b>
<%} %>
</tbody>
 </table>
                          
<% 

}catch(Exception e){
	
	out.println(""+e);
}

}
%>





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