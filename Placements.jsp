<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String company="TCS";
%>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
    	  var value = "<%=company%>";
        var data = google.visualization.arrayToDataTable([
          ['Company', 'Placed Students'],
          [value,60],
          ['CTS',40],
          ['WIPRO',10],
          ['ATOS SYNTEL',20],
          ['NEML',20]
        ]);

        var options = {
          title: 'Placed Students in IT Companies'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
    <form>

    </form>
    <%
    try
    {
    	String btn=request.getParameter("place");
    	if(btn!=null){
    	

    	String count="";
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/career", "root","root");
    	String tcs="SELECT COUNT(*) FROM placed where company ?";
    	PreparedStatement stm = conn.prepareStatement(tcs);

    	stm.setString(1, "TCS");
        ResultSet rs=stm.executeQuery(tcs);

    
        String Countrow="";
        while(rs.next()){

        rs.getString(3);
           
        }
        out.print(Countrow);
    }}catch(Exception ex){
    	out.print(""+ex);
    }
 %>    
    
     </body>
</html>
