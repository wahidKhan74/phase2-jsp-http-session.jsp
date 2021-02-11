<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate Session based Access</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include> <br><br><br>
	<%
		// get http session
		HttpSession httpSession = request.getSession(false);
		String userId =(String)httpSession.getAttribute("X-userId");
		String userEmail =(String)httpSession.getAttribute("X-useremail");	
		
		
	    if(userId == null || userId.equals("") || userEmail ==null || userEmail.equals("") ){
	    	throw new ServletException(" :: Session is not valid, please login to app ! :: ");
	    } else{
	    	out.print("<h2>Session is active with user profile : "+ userEmail+ "</h2>");
	    }
	
	%>
</body>
</html>