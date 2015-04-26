<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Driver</title>
</head>
<body>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/busop";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String ddid = request.getParameter("deldriverid");
if(ddid != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "DELETE FROM driver WHERE DriverID= ?";
ps = con.prepareStatement(sql);
ps.setString(1, ddid);
int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<jsp:forward page="/success.jsp"/>
	<% 
}
else
	%>
	<jsp:forward page="/failure.jsp"/>
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