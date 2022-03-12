 <%
 HttpSession hs=request.getSession();
 String uid= hs.getAttribute("uid").toString();
 String strname=hs.getAttribute("hsname").toString();
 String strnata=hs.getAttribute("hsnata").toString();
 int issc=0,ihsc=0,ijee=0,ineet=0,imhcet=0,iaims=0,ialet=0,icacpt=0,inata=0,idiploma=0;
 %>
 <%@page import="java.sql.*,java.util.*"%>
 
 <%
 String click=request.getParameter("predict");
 
 int ss=0;
String name="",email="",contact="",
intr="",ssc="",hsc="",diploma="",
jee="",neet="",mhcet="",aims="",alet="",cacpt="",nata="",interest="";
   	 Class.forName("com.mysql.jdbc.Driver");
      Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery("Select * from profile where pid="+uid);
       while(rs.next()){
		
    	   name=rs.getString(2);
    	   email=rs.getString(3);
    	   contact=rs.getString(4);
    	   intr=rs.getString(16);
    	   ssc=rs.getString(5);
    	   hsc=rs.getString(6);
    	   diploma=rs.getString(7);
    	   jee=rs.getString(8);
    	   neet=rs.getString(9);
    	   mhcet=rs.getString(10);
    	   aims=rs.getString(11);
    	   alet=rs.getString(12);
    	   cacpt=rs.getString(13);
    	   nata=rs.getString(14);
    	   interest=rs.getString(16);
}

issc=Integer.parseInt(ssc);
ihsc=Integer.parseInt(hsc);
idiploma=Integer.parseInt(diploma);
ineet=Integer.parseInt(neet);
ijee=Integer.parseInt(jee);
ialet=Integer.parseInt(alet);
iaims=Integer.parseInt(aims);
icacpt=Integer.parseInt(cacpt);
imhcet=Integer.parseInt(mhcet);
inata=Integer.parseInt(nata);
	 %>

<html>
<head>
 <link rel="stylesheet" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
</head>
<body background="images/backimage.jpg">
<div class="container">
<div style="text-align:right; color:#ffffff; font-family:times new roman;">
<a href="index.jsp">Log Out</a>
</div>
<center><h2 style="color:#ffffff;">Career Guidance</h2></center>
<hr color=#ffffff>
<h3 style="color:#ffffff; font-family:times new roman">Welcome <%out.print(strname); %> !</h3>
<center><h3 style="color:#ffffff;">Predicted Cource For You</h3></center>

<br/>
<div class="row">
<div class="col-md-8">
<div class="row">
<%
if(issc>40&&ihsc>50){

if(ineet!=0){
if(ineet>=ijee||iaims>=ijee||iaims>=ineet && ineet>0){
%>

<a href="MedicalDashboard.jsp"><input type="button" value="Medical" class="form-control"></a>
<% 
}
}
if(icacpt!=0){
if(icacpt>=ijee||icacpt>iaims||icacpt>imhcet||icacpt>inata){
%>

<a href="CommerceDashboard.jsp"><input type="button" value="Commerce" class="form-control"></a>
<% 
}
}

if(imhcet!=0){
if(imhcet>=ijee||imhcet>ineet||imhcet>iaims){
%>

<a href="AgriculturalDashboard.jsp"><input type="button" value="Agriculture" class="form-control"></a>
<% 
}
}
if(idiploma!=0){
	if(idiploma>=ijee||idiploma>=ineet||idiploma>=ihsc||idiploma>=iaims||idiploma>=imhcet||idiploma>=ialet||idiploma>=icacpt||idiploma>=inata){
		%>
		<a href="Engineering.jsp"><input type="submit" value="Engineering" class="form-control"></a>

		<% 	
	}
}
if(ijee!=0){
if(ijee>=ineet||imhcet>=ijee||imhcet>ineet||imhcet>iaims){
%>
<a href="Engineering.jsp"><input type="submit" value="Engineering" class="form-control"></a>

<% 
}
}
if(inata!=0){
if(inata>=ineet||inata>=ijee||inata>iaims){
%>
<a href="ArchitectureDashboard.jsp"><input type="submit" value="Architecture" class="form-control"></a>

<% 
}	
}
if(ialet!=0){

if(ialet>ineet||ialet>ijee){
%>
<a href="LawDashboard.jsp"><input type="submit" value="Law" class="form-control"></a>

<% 
}

}
}else{
	
%>
<h4 style="color:#ffffff;">No course found for your education Qualification. </h4>
<% 
}

%>

<hr><br/>


<% 
if(interest.contentEquals("Dance")){
%>
<a href="Interest_Dashboard.jsp?skill=Dance"><input type="submit" name="dance" value="DANCE"></a>
<% 
}else if(interest.contentEquals("Music"))
{
	%>
	<a href="Interest_Dashboard.jsp?skill=Music"><input type="submit" name="music" value="Music"></a>
	<% 	
}else if(interest.contentEquals("Drama"))
{
	%>
	<a href="Interest_Dashboard.jsp?skill=Drama"><input type="submit" name="drama" value="Drama"></a>
	<% 
}else if(interest.contentEquals("Painting"))
{
	%>
	<a href="Interest_Dashboard.jsp?skill=Painting"><input type="submit" name="Painting" value="Painting"></a>
	<% 	
}else if(interest.contentEquals("Arts"))
{
	%>
	<a href="Interest_Dashboard.jsp?skill=Arts"><input type="submit" name="Arts" value="Arts"></a>
	<% 
}else if(interest.contentEquals("Design"))
{
	%>
	<a href="Interest_Dashboard.jsp?skill=Design"><input type="submit" name="Design" value="Design"></a>
	<% 
}
else if(interest.contentEquals("Fashion"))
{
	%>
	<a href="Interest_Dashboard.jsp?skill=Fashion"><input type="submit" name="Fashion" value="Fashion"></a>
	<% 
}
else if(interest.contentEquals("Sports"))
{
	%>
	<a href="Interest_Dashboard.jsp?skill=Sport"><input type="submit" name="Sports" value="Sports"></a>
	<% 
}

					
			
				
%>
</div>

<div class="row">

<div class="col-md-4">

</div>

</div>




</div>
<div class="col-md-4">

 <h2 style="color:#ffffff;">About Me</h2>
      <b>
     <table class="table table-hover" style="color:#ffffff;">
     <tr><td>Name: <%out.print(name); %></td></tr>
     <tr><td>Email : <%out.print(email);%></td></tr>
     <tr><td>Contact : <%out.print(contact);%></td></tr>
     <tr><td>Interest : <%out.print(intr);%></td></tr>
     <tr><td>SSC : <%out.print(ssc);%>%</td></tr>
     <tr><td>HSC : <%out.print(hsc);%></td></tr>
     <tr><td>POLYTECHNIC: <%out.print(diploma);%>%</td></tr>
     <tr><td>JEE : <%out.print(jee);%></td></tr>
     <tr><td>NEET : <%out.print(neet);%>%</td></tr>
     <tr><td>MHCET : <%out.print(mhcet);%>%</td></tr>
     <tr><td>AIMS : <%out.print(aims);%>%</td></tr>
     <tr><td>ALET : <%out.print(alet);%>%</td></tr>
      <tr><td>CACPT : <%out.print(cacpt);%>%</td></tr>
     <tr><td>NATA : <%out.print(nata);%>%</td></tr>
     
     </table>
     </b>
     

</div>


</div>


</div>
</body>
</html>