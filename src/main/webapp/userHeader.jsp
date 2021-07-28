<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%
	if(session.getAttribute("name") == null)
	{
		response.sendRedirect("userlogin.jsp"); 
	}
	%>
	<nav class="navbar">
		<ul class="navbar-nav">
			<li><a href="userHome.jsp">Home</a></li>
			<li><a href="addContact.jsp">Contact</a></li>
			<li><a href="userViewCourse.jsp">View Course</a></li>
			<li><a href="addFeedback.jsp">Feedback</a></li>
			<li style="float:right;margin-right:10px"><a href="userLogout.jsp">Logout</a></li>
		</ul>
	</nav>
</body>
</html>