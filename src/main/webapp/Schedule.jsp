<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule</title>
</head>
<body>
<form method="post">

<table border="2">
<tr>
<td>RouteName</td>
<td>Origin</td>
<td>Destination</td>
<td>Starting Hour</td>
<td>Ending Hour</td>
<td>Start Day</td>
<td>End Day</td>
</tr>

<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/busop";
String user = "root";
String dbpsw = "";

String sql = "SELECT Distinct RoutName, Origin, Destination, StartOpHour, EndOpHour,StartDay,EndDay From rout JOIN bus WHERE rout.RoutID=bus.RoutID";

try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
rs = ps.executeQuery();
while(rs.next())
{ 
	%>
    <tr>
    <td><%= rs.getString("RoutName") %></td>
    <td><%= rs.getString("Origin") %></td>
    <td><%= rs.getString("Destination") %></td>
    <td><%= rs.getString("StartOpHour") %></td>
    <td><%= rs.getString("EndOpHour") %></td>
    <td><%= rs.getString("StartDay") %></td>
    <td><%= rs.getString("EndDay") %></td>
    </tr>
        <%
}
%>
</table>
<%
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
%>
</body>
</html>