<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.PreparedStatement" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add bus</title>
</head>
<body>

<%! String bid;
String sh;
String eh;
String sd;
String ed;
String f;
String did;
String rid;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/busop";
String user = "root";
String dbpsw = "";

String sql = "INSERT INTO `busop`.`bus` (`BusID`, `StartOpHour`, `EndOpHour`, `StartDay`, `EndDay`, `FuelUsage`, `DriverID`, `RoutID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
//ps= con.prepareStatement(sql); 
bid=request.getParameter("busid");
sh=request.getParameter("starthour");
eh=request.getParameter("endhour");
sd=request.getParameter("startday");
ed=request.getParameter("endday");
f=request.getParameter("fuel");
did=request.getParameter("driverid");
rid=request.getParameter("routeid");
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
ps.setString(1, bid);
ps.setString(2, sh);
ps.setString(3, eh);
ps.setString(4, sd);
ps.setString(5, ed);
ps.setString(6, f);
ps.setString(7, did);
ps.setString(8, rid);
//ps.executeUpdate();
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