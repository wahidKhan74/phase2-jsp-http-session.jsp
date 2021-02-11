<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Submit</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include> <br><br><br>
	<%
		String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    
	    if(email == null || email.equals("") || password ==null || password.equals("") ){
	    	throw new ServletException(" :: Mandatory Parameters are missing ! :: ");
	    } else {
	    	if(email.equals("admin@gmail.com") && password.equals("admin@123")){
	    		// create expiry time 
	    		int HOUR_24 =60*60*24;
	    		
	    	    // create http session
	    		HttpSession httpSession = request.getSession(true);
	    	    
	    		httpSession.setAttribute("X-userId", UUID.randomUUID().toString());
	    		httpSession.setAttribute("X-useremail", email);
	    		httpSession.setMaxInactiveInterval(HOUR_24);
	    		
	    		out.print("<h2>Successfully logged In</h2>");
	    	} else{
	    		throw new ServletException(" :: Invalid Credentials ! :: ");
	    	}
	    }
	
	%>
</body>
</html>