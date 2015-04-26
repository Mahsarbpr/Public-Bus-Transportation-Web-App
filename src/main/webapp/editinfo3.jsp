<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.PreparedStatement" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Route</title>
</head>
<body>

<%! String uroid;
String uroname;
String uorigin;
String udestination;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/busop";
String user = "root";
String dbpsw = "";

String sql = "update rout set RoutName=?, Origin=?, Destination=? where RoutID=?; ";
//ps= con.prepareStatement(sql); 
uroid=request.getParameter("erouteid");
uroname=request.getParameter("eroutename");
uorigin=request.getParameter("erouteorigin");
udestination=request.getParameter("eroutedestination");


try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(4, uroid);
ps.setString(1, uroname);
ps.setString(2, uorigin);
ps.setString(3, udestination);
ps.executeUpdate();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
//}
//else
//{
	//       System.out.println("blablabla"); 
	  // } 	
%>
</body>
</html>