<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.PreparedStatement" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Route</title>
</head>
<body>

<%! String drivid;
String drivname;
String driverbus;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/busop";
String user = "root";
String dbpsw = "";

String sql = "INSERT INTO `busop`.`driver` (`DriverID`, `Name`,`BusID`) VALUES (?, ?, ?);";
//ps= con.prepareStatement(sql); 
drivid=request.getParameter("driveid");
drivname=request.getParameter("drivername");
driverbus=request.getParameter("driverbusid");
//if((!(bid.equals(null) || bid.equals("")) && !(sh.equals(null) || sh.equals(""))&& !(eh.equals(null) || eh.equals(""))
//	&& !(sd.equals(null) || sd.equals(""))&& !(ed.equals(null) || ed.equals(""))&& !(f.equals(null) || f.equals(""))
//	&& !(did.equals(null) || did.equals("")) && !(rid.equals(null) || rid.equals(""))))
//{
//Integer ibid=new Integer(bid);
//Integer ish=new Integer(sh);
//Integer ieh=new Integer(eh);
//Integer ifu=new Integer(f);
//Integer idid=new Integer(did);
//Integer irid=new Integer(rid);

try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, drivid);
ps.setString(2, drivname);
ps.setString(3, driverbus);
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