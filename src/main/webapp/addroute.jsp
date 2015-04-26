<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Route</title>
</head>
<body>
<form method="post" action="addroute2.jsp">
<center><h2 style="color:green">Add Route</h2></center>
<table border="1" align="center">
<tr>
<td>Enter Route Id :</td>
<td><input type="text" name="routeid"/></td>
</tr>
<tr>
<td>Enter Route Name :</td>
<td><input type="text" name="routename"/></td>
</tr>
<tr>
<td>Enter Route Origin :</td>
<td><input type="text" name="routeorigin"/></td>
</tr>
<tr>
<td>Enter Route Destination :</td>
<td><input type="text" name="routedestination"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>
</form>
</body>
</html>