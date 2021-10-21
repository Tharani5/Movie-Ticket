<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.getAttribute("username")==null)
		{
		response.sendRedirect("Login.jsp");
		}
	%>
Movies available <br>
 <form action="Logout" method="post">
 <input type="submit" value="Logout">
 </form>
</body>
</html>