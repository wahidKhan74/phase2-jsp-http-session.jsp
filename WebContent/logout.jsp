<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout Session</title>
</head>
<body>
	<%
	// get http session
	HttpSession httpSession = request.getSession(false);
	session.invalidate();
	
	response.sendRedirect("index.jsp");
	%>
</body>
</html>