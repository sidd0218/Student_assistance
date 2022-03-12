 	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html lang="en">
<head>
	<title>CAREER|COLLEGE INFO</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
			<h1 style="font-family:Times New Roman;color:#ffffff;"><center>COLLEGE INFO</center></h1>
<div class="form-group">
  <label for="Type">Select University:</label>
  <select class="form-control" name="university">
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
</div>

		    <div class="form-group"> 
                <input type="text" class="form-control" name="name" placeholder="Enter College Name" required> 
            </div> 

            <div class="form-group"> 
                <input type="text"class="form-control" name="contact" pattern="[0-9]{10}" placeholder="Enter College Contact"required> 
            </div> 
               <div class="form-group"> 
                <input type="email"class="form-control" name="email" placeholder="Enter College Email" required> 
            </div>  
            
            <div class="form-group"> 
                <input type="text"class="form-control" name="address" placeholder="Enter College Address" required> 
            </div>  
                   <div class="form-group"> 
                <input type="text"class="form-control" name="state" placeholder="Enter State" required> 
            </div>  
              <div class="form-group"> 
                <input type="text"class="form-control" name="city" placeholder="Enter City" required> 
            </div>  
            
            <div class="form-group"> 
                <input type="text"class="form-control" name="intake" placeholder="Enter College Intake" required> 
            </div>  
            
                           <div class="form-group"> 
                <input type="text"class="form-control" name="fees" placeholder="Enter College Fees" required> 
            </div>  
            <div class="form-group">
               <select class="form-control" name="crit">
       <option>ENGINEERING</Option>
         <option>MBBS</Option>
           <option>MD</Option>
           <option>BHMS</Option>
           <option>BAMS</Option>
           <option>DPHARM</Option>
           <option>BPHARM</Option>
           <option>LAW</Option>
           <option>ANIMATION</Option>
           <option>ARTS</Option>
          <option>BCOM</Option>
       <option>MCOM</Option>
       <option>BBA</Option>
       <option>MBA</Option>
       <option>CA</Option>
       <option>CS</Option>
        <option>BSC Agri</Option>
       <option>Msc Agri</Option>
       <option>Diploma in Agri</Option>
         <option>Diploma in Archi</Option>
       <option>B. Arch</Option>
       <option>M. Arch</Option>
        <option>BA+LLB</Option>
       <option>BBA+LLA</Option>
        <option>BBA+LLA(hons)</Option>
         <option>BSC+LLB</Option>
      <option>Mechanical Engineering</Option>
       <option>Civil Engineering</Option>
       <option>Electrical Engineering</Option>
       <option>Electronics and Telecommunication Communication</Option>
       <option>Computer Science and Engineering</Option>
       <option>Information Technology</Option>
       </select>
       </div>
                    
                     <br/>
                <center><input class="btn active" type="submit" name="sub" value="Submit"> </center>
            
          
            </form>
            
		</div>
		<div class="col-sm-2"></div>  
	</div>
</div>
</div>
<%

String buttonclick=request.getParameter("sub");
if(buttonclick!=null){
String university=request.getParameter("university");
String name=request.getParameter("name").toUpperCase();
String contact=request.getParameter("contact");
String email=request.getParameter("email").toLowerCase();
String address=request.getParameter("address");
String state=request.getParameter("state").toUpperCase();
String city=request.getParameter("city").toUpperCase();
String intake=request.getParameter("intake");
String fees=request.getParameter("fees");
String criteria=request.getParameter("crit");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
Statement st=conn.createStatement();

PreparedStatement prst=conn.prepareStatement("insert into college_info(name,contact,email,address,city,intake,fees,criteria,state,university)values(?,?,?,?,?,?,?,?,?,?)");
prst.setString(1,name.toLowerCase());
prst.setString(2,contact);
prst.setString(3,email.toLowerCase());
prst.setString(4,address.toLowerCase());
prst.setString(5,city.toLowerCase());
prst.setString(6,intake.toLowerCase());
prst.setString(7,fees.toLowerCase());
prst.setString(8,criteria);
prst.setString(9,state.toLowerCase());
prst.setString(10,university.toUpperCase());
prst.executeUpdate();
%>
<script>
alert("College Data Added Successfully");

</script>
<%

}
catch(Exception e)
{
out.print(e);
out.print(""+e);
e.printStackTrace();
}
}
%>
</body>
</html>