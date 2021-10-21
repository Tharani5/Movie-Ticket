<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function checkpassword() 
{
	var p=f.password.value;	
	var cp=f.confirmpassword.value;
	if(p==cp)
		
	else
		alert("password mismatch");
}
</script>
<body>

<form action="Register" method="post" name="f">
   <table>
   <tr><td>UserName: </td><td><input type="text" name="uname"></td></tr>
   <tr><td>Password: </td><td><input type="password" name="password"></td></tr>
   <tr><td>Confirm Password: </td><td><input type="password" name="confirmpassword"></td></tr>
   <tr><td>Email ID: </td><td><input type="email" name="email"></td></tr>
   <tr><td>Mobile Number: </td><td><input type="text" name="phone"></td></tr>   
   <tr><td></td><td><input type="submit" value="Register" onclick="checkpassword()"></td></tr>
   </table>
   </form> 
</body>
</html>