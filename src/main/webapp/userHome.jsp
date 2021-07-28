<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<%@ include file="userHeader.jsp" %>

<%
String userName = (String)session.getAttribute("name");
%>

<div align="center">
<h2>Welcome to E-Learning Portal</h2>
<label>Welcome back! <%= userName %></label>
</div>

</body>
</html>