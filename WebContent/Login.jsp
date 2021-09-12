<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<form action="Validate2.jsp" method="get">
<p>
<label for="uname"><b>Username</b></label>
<input type="text" placeholder="Enter Username" name="uname" required>
</p>
<p>
<label for="psw"><b>Password</b></label>
<input type="password" placeholder="Enter Password" name="psw" required>
</p>
<button type="submit">Login</button>
</form>
</body>
</html>