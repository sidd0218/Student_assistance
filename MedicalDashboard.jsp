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
<body background="images/backimage.jpg">
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
		<center><h2 style="font-family:times new roman; color:#ffffff;">Select Course Here</h2></center>
		<form method="post">
		
		<div class="form-group">
       <select class="form-control" name="cource">
       <option>MBBS</Option>
       <option>MD</Option>
       <option>BHMS</Option>
       <option>BAMS</Option>
       <option>D.PHARM</Option>
       <option>B.PHARM</Option>
       </select>
		</div>
    
				<center><input type="submit" value="Search by College" name="name"></center>
		</form>
         <center>
               
  <%
  		String clickCityButton=request.getParameter("name");
  		
		if(clickCityButton!=null){
%>

<form>
<input type="hidden" name="cource1" value="<%out.println(request.getParameter("cource")); %>">
<div class="row">
<div class="col-md-4">
<h3 style="font-family:times new roman; color:#ffffff;">Fliter By Fees</h3>
<select class="form-control" name="order">
<option value="asc">Ascending</option>
<option value="dsc">Descending</option>
</select>


</div>
<div class="col-md-4">
<h3 style="font-family:times new roman; color:#ffffff;">Fliter By City</h3>
<input type="text" class="form-control" placeholder="Enter City" name="city">

</div>
<div class="col-md-4">
<input type="submit" name="sub">
</div>
</div>


</form>
<%} %>
<% 			
		String substr11=request.getParameter("sub");
		
	if(substr11!=null){
		
	  String city=request.getParameter("city").trim();
		 String query="";
	String str12=request.getParameter("cource1").trim();
	
	String order=request.getParameter("order").trim();
	if(order.contentEquals("asc")){
		query="select * from college_info where criteria =? and  city like ? order by fees asc";
	}else{
		
		query="select * from college_info where criteria =? and city like ? order by fees desc";
	}
   //out.println(query);
try{
	
	
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
//out.println(query);
PreparedStatement stm=conn.prepareStatement(query);
stm.setString(1,str12);
stm.setString(2,"%"+city+"%");
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