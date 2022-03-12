 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html>
<head>
	<title></title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		<center><h2 style="color:#ffffff;">SEARCH BY FEES</h2></center>
		<form action="" method="post">
		
		<div class="form-group">
        <input type="text" class="form-control" name="query" placeholder="Enter City Name">
		</div>

				<center><input type="submit" value="Search by City" name="name"></center>
		</form>
         <center>
               
  <%
  		String clickCityButton=request.getParameter("name");
  		String str=request.getParameter("query");
		if(clickCityButton!=null){

		%>
	
		<% 
         try{
 		
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
        
         PreparedStatement stm=conn.prepareStatement("select * from college_info where name >=50000"+
         "ORDER BY fees DESC");
        // stm.setString(1, "%" + str + "%");
        ResultSet rs=null;
        rs=stm.executeQuery();
        %>
       
        <% 
         while(rs.next())
         {
        
            %>
             <table class="table table-bordered" style="color:#ffffff;">

           <tr>
                 
                 <th>CITY</th>
                 <th>CONTACT</th>
                 <th>EMAIL</th>
                 <th>ADDRESS</th>
                 <th>COLLEGE NAME</th>
                 <th>INTAKE</th>
                 <th>FEES</th>
             </tr>
        <tr>
       		<td><%=rs.getString(6)%></td>
    		<td><%=rs.getString(3)%></td>
    		<td><%=rs.getString(4)%></td>
    		<td><%=rs.getString(5)%></td>
    		<td><%=rs.getString(2)%></td>
    		<td><%=rs.getString(7)%></td>
    		<td><%=rs.getString(8)%></td>
		</tr></b>
	</tbody>
         </table>
                                    <%
		
}
         }catch(Exception e){
             out.println(e);
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