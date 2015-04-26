<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add card</title>
</head>
<body>

<%! String cid;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/busop";
String user = "root";
String dbpsw = "";

String sql = "INSERT INTO `busop`.`buscard` (`CardID`) VALUES (?);";

cid=request.getParameter("cardid");

//int icid=Integer.parseInt(cid);

try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, cid);
ps.executeUpdate();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
%>
</body>
</html>