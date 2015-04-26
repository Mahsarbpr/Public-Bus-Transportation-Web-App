<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<p>Welcome, <%=session.getAttribute("name")%></p>
<form action="addbus.jsp" method="Post">
    <input type="submit" value="add bus">
<br><br>
</form>
<form action="delbus.jsp" method="Post">
    <input type="submit" value="delete bus">
<br><br>
</form>
<br><br>
<form action="addcard.jsp" method="Post">
 <input type="submit" value="add card">
<br><br>
</form>
<form action="editinfo.jsp" method="Post">
 <input type="submit" value="edit Info">
<br><br>
</form>
<br><br>
<form action="addroute.jsp" method="Post">
    <input type="submit" value="add Route">
<br><br>
</form>
<form action="delroute.jsp" method="Post">
    <input type="submit" value="delete route">
<br><br>
</form>
<br><br>
<form action="addstation.jsp" method="Post">
 <input type="submit" value="add station">
<br><br>
</form>
<form action="delstation.jsp" method="Post">
    <input type="submit" value="delete station">
<br><br>
</form>
<br><br>
<form action="adddriver.jsp" method="Post">
 <input type="submit" value="add driver">
<br><br>
</form>
<form action="deldriver.jsp" method="Post">
    <input type="submit" value="delete driver">
<br><br>
</form>
<p><a href="logout.jsp">Logout</a>
</body>
</html>