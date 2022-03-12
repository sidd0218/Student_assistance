 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body background=images/cg1.jpg>
<%
String uid=request.getParameter("cid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM college_info WHERE cid="+uid);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
</body>
<script>
alert("Data Deleted Sucessfully")
window.location="College_Info_Delete.jsp"
</script>
</html>
