 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body background=images/backimage.jpg>
 <div class="panel-body">
<div class="container">
<br/><br/>

	<div class="row" style="border: solid 1px #c3c3c3;border-color:#ffffff;">
	<div class="col-sm-2"></div>
	
		<div class="col-sm-8">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"></div>
		 <br/>
		    
			<form method="post">

			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>Log In Here</center></h1>
		    <div class="form-group"> 
                <input type="text" class="form-control" id="nm" name="email" placeholder="Enter Your Email" required> 
            </div> 

            <div class="form-group"> 
                <input type="password"class="form-control" id="ps" name="pass" placeholder="Enter Your Password" required> 
            </div> 
            <div align="right">
            <a href="Forget_Password.jsp" style="color:#ffffff;"><b>Forget Password</b></a>
            </div>
			               <center> <input class="btn active" type="submit" name="login" value="Log In"/> </center>
			<div class="form-group"> 
               <center> <a style="color:#ffffff;" href="Registration.jsp"><b>Not Registered ? Register Here</b></a> </center>
            </div> 

          
                       </form>
		</div>
		
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<%
				HttpSession hs=request.getSession();
				String isclick=request.getParameter("login");
				String myData=null;
				if(isclick!=null){

             try{
                 String usname=request.getParameter("email");
                 String pwd=request.getParameter("pass");
                 boolean status=false;
                 boolean isfound=false;
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
                 Statement stm=conn.createStatement();
                 ResultSet rs=stm.executeQuery("Select * from profile");
		           while(rs.next())
                 {

                     if(usname.contentEquals(rs.getString(3))&&pwd.contentEquals(rs.getString(15)))
                     {

                    	 isfound=true;   
                         hs.setAttribute("hsname",rs.getString("Name"));
                         hs.setAttribute("uid", rs.getString(1));
                         hs.setAttribute("hsssc",rs.getString(5));
                         hs.setAttribute("hshsc",rs.getString(6));
                         hs.setAttribute("hsdiploma",rs.getString(7));
                         hs.setAttribute("hsjee",rs.getString(8));
                         hs.setAttribute("hsneet",rs.getString(9));
                         hs.setAttribute("hsmhcet",rs.getString(10));
                         hs.setAttribute("hsaims",rs.getString(11));
                         hs.setAttribute("hsalet",rs.getString(12));
                         hs.setAttribute("hscacpt",rs.getString(12));
                         hs.setAttribute("hsnata",rs.getString(14));
                     }else{
                     }
                 %>
          		<%
                 }
                 if(isfound){

                %>
                 <script>
                     window.location="Dashboard3.jsp"
                 </script>
                 <%
  
                 }else{
                  %>
                 <script>
                    alert("Incorrect Credentials... Please Try Again !");
                 </script>
                <%  
               
                 }
             }

             catch(Exception ex){
            out.println(""+ex);
             ex.printStackTrace();
             }
				}           
             %>

</body>
</html>