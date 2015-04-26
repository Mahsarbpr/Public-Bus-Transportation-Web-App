<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Route information</title>
</head>
<body>

<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/busop";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String erid = request.getParameter("erouteid");
if(erid != null)
{
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "SELECT * FROM rout WHERE RoutID= ?";
ps = con.prepareStatement(sql);
ps.setString(1, erid);
rs=ps.executeQuery();
while(rs.next())
{ 
	%>
<form method="post" action="editinfo3.jsp">
<center><h2 style="color:green"></h2></center>
<table border="1" align="center">
<tr>
<td>Route Id :</td>
<td><input type="text" name="erouteid" value=<%= rs.getString("RoutID") %> ></td>
</tr>
<tr>
<td>Route Name :</td>
<td><input type="text" name="eroutename" value=<%= rs.getString("RoutName") %> ></td>
</tr>
<tr>
<td>Route Origin :</td>
<td><input type="text" name="erouteorigin" value=<%= rs.getString("Origin") %> ></td>
</tr>
<tr>
<td>Route Destination :</td>
<td><input type="text" name="eroutedestination" value=<%= rs.getString("Destination") %> ></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Update"/></td>
</table>
</form>
        <%
}
%>
</table>
<%
}
catch(SQLException sqe)
{
request.setAttribute("error", sqe);
out.println(sqe);
}
}
%>
</body>
</html>