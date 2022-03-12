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
		<center><h2 style="color:#ffffff;">SEARCH BY CUT OFF</h2>
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
 <h2>Filter By Cut Off</h2>
		<form method="post" >
		
		<div class="row">
		<input type="hidden" name="uniname" value="<%out.println(request.getParameter("uni"));%>">
		<div class="col-md-4">
        <input type="number" class="form-control" name="cutoffssc" placeholder="Enter SSC MARKS to get Cut Off">
		</div>

		<div class="col-md-4">
        <input type="number" class="form-control" name="cutoffhsc" placeholder="Enter HSC MARKS to get Cut Off">
		</div>
		<div class="col-md-4">
        <input type="number" class="form-control" name="cutoffdiploma" placeholder="Enter DIPLOMA MARKS to get Cut Off">
		</div>
		</div>
		<br/>
		<div class="row">
	    <div class="col-md-4">
			
        <input type="number" class="form-control" name="cutoffother" placeholder="Enter OTHER MARKS to get Cut Off">
		</div>
		
	    <div class="col-md-4">
        <input type="number" class="form-control" name="cutoffgrad" placeholder="Enter GRADUATION MARKS to get Cut Off">
		</div>
		
		<div class="col-md-4">
        <input type="text" class="form-control" name="cutoffpgrad" placeholder="Enter POST GRADUATION MARKS to get Cut Off">
		</div>
		</div><br/>
				<center><input type="submit" value="Search by Cut Off" name="cutoff"></center>
		
		
		</form>
 
<%} %>
<%
String str45=request.getParameter("cutoff");

if(str45!=null){
	
	boolean isfound=true;
	  String strSSC=request.getParameter("cutoffssc");
	 
	  String strHSC=request.getParameter("cutoffhsc");
	 
	  String strDiploma=request.getParameter("cutoffdiploma");
	  String strOther=request.getParameter("cutoffother");
	  String strGrad=request.getParameter("cutoffgrad");
	  String strPGrad=request.getParameter("cutoffpgrad");
	  String clickCity=request.getParameter("name");
	
	String extracted=request.getParameter("uniname");
	String strAsc=request.getParameter("intake");

	//String uni=request.getParameter("uni");
 // out.print(extracted);
    String query="";
try{

	
	query="select * from cutoff where  ssc<= ? or hsc<? or diploma<? or grad<? or pgrad<?";
	out.println(strSSC);
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
PreparedStatement stm=conn.prepareStatement(query);
stm.setString(1,strSSC.trim());
stm.setString(2,strHSC.trim());
stm.setString(3,strDiploma.trim());
stm.setString(4,strGrad.trim());
stm.setString(5,strPGrad.trim());
ResultSet rs=null;
rs=stm.executeQuery();
 
 while(rs.next())
 {
	 isfound=false;
  
	 String clid=rs.getString(9);
	 PreparedStatement prstm=conn.prepareStatement("select * from college_info where cid=?");
	 prstm.setString(1, clid);
	 ResultSet rs67=prstm.executeQuery();
	 while(rs67.next()){
	
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
		<td><%=rs67.getString(2)%></td>
	<td><%=rs67.getString(3)%></td>
	<td><%=rs67.getString(4)%></td>
	<td><%=rs67.getString(5)%></td>
	<td><%=rs67.getString(6)%></td>
	<td><%=rs67.getString(7)%></td>
	<td><%=rs67.getString(8)%></td>
</tr></b>
<%
	 }
	 } %>
</tbody>
 </table>
                          
<% 
if(isfound){
	out.println("<h1>No Results Found</h1>");
}

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