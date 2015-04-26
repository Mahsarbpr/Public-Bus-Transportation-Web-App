<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddBus</title>
</head>
<body>
<form method="post" action="addbus2.jsp">
<center><h2 style="color:green">Add bus information</h2></center>
<table border="1" align="center">
<tr>
<td>Enter Bus Id :</td>
<td><input type="text" name="busid"/></td>
</tr>
<tr>
<td>Enter Starting operation hour :</td>
<td><input type="text" name="starthour"/></td>
</tr>
<tr>
<td>Enter ending operation hour :</td>
<td><input type="text" name="endhour"/></td>
</tr>
<tr>
<td>Enter starting day of operation :</td>
<td><input type="text" name="startday"/></td>
</tr>
<tr>
<td>Enter ending day of operation :</td>
<td><input type="text" name="endday"/></td>
</tr>
<tr>
<td>Enter fuel usage :</td>
<td><input type="text" name="fuel"/></td>
</tr>
<tr>
<td>Enter Driver ID :</td>
<td><input type="text" name="driverid"/></td>
</tr>
<tr>
<td>Enter Route ID :</td>
<td><input type="text" name="routeid"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>
</form>
</body>
</html>