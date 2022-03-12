
 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
 <%@include file="Header.jsp" %>

<html lang="en">
<head>

	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.welcome{
		color:#6666ff;
		background-color:#ffffff;
		font-family:Times New Roman;
		font-size:30px;
		border-width: 10;
		width: 280;
		
		border-style:ridge double groove solid;
}
thead,td{
color:#6666ff;
background-color:#ffffff;
font-family:Times New Roman;
font-size:20px;
border-width: 10;
width: 280;
border-style:ridge double groove solid;
}
</style>
</head>
<body background=images/bg.jpg>
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

			<script>
			
			</script>
			
		    <center><input type="submit" name="btnId" value="See History"></center>
		    </form>
		    <br/>
		    <center>
		     <table class="table table-bordered">
		     <thead style="border-width: 10; width: 250; border-color: red green blue yellow;  border-style: ridge">
            <tr>
                 
                 <th>NAME</th>
                 <th>CONTACT</th>
             
             </tr>
             </thead>
             <tbody>
         <tr>
         <%


    try{

    	String btnGetId=request.getParameter("btnId");
    	    	if(btnGetId!=null){
    	
    	 Class.forName("com.mysql.jdbc.Driver");
         Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");

        Statement stm=conn.createStatement();
        String joinQuery="select * from college_info , profile where college_info.uid=profile.uid;";
        ResultSet rs=stm.executeQuery(joinQuery);
        rs.next();
       //String strname=rs.getString("name");
       //String strdob=rs.getString("DOB");
       %>
      
       <%
       
        while(rs.next())
        {
      		%>

      <tr>
      
    	<td><%rs.getString("name");%></td>
    	<td><%rs.getString("DOB");%></td>
    
	</tr>
        <%
        
        }
    }
    }
    catch(Exception ex){
    out.println(""+ex);
    ex.printStackTrace();
    }

    %>
    </tbody>
         </table> 
		<input type="button" value="Clear" onClick="rref();">
				<script>
						function rref(){
                     window.location="S"
						}
                 </script>
         </center>         
            
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>



</body>
</html>