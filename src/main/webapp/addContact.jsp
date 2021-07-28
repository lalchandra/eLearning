<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.ContactDao"%>
<%@page import="pojo.Contact"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">

<title>Contact</title>
</head>
<body>
	
	<%@ include file="userHeader.jsp" %>

	<div align="center">
		<form action="processAddContact.jsp" method="post">
			<table class="courseTable">
				<thead>
					<tr>
						<th colspan="2">
							Contact Us
						</th>
					</tr>
				</thead>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="id" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><input type="text" name="phone" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Message</td>
					<td><input type="text" name="msg" size="40"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Contact Id</td>
					<td><input type="text" name="cId" size="20"
						class="courseTextField" /></td>
				</tr>
				
				
				
				
			</table>
			<button class="actionBtn" style="margin-top:10px">Submit</button>
		</form>
	</div>
</body>
</html>