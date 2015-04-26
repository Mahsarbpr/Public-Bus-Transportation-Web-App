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
<form method="post" action="adddriver2.jsp">
<center><h2 style="color:green">Add driver information</h2></center>
<table border="1" align="center">
<tr>
<td>Enter Driver Id :</td>
<td><input type="text" name="driveid"/></td>
</tr>
<tr>
<td>Enter Driver name :</td>
<td><input type="text" name="drivername"/></td>
</tr>
<tr>
<tr>
<td>Enter Bus ID :</td>
<td><input type="text" name="driverbusid"/></td>
</tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>
</form>
</body>
</html>