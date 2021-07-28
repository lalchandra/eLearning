<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.UserDao"%>
<%@page import="pojo.User"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">

<title>Register</title>
</head>
<body>
	

	<div align="center">
		<form action="processAddUser.jsp" method="post">
			<table class="courseTable">
				<thead>
					<tr>
						<th colspan="2">
							User Registration
						</th>
					</tr>
				</thead>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="uId" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="uName" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><input type="text" name="uPhone" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="uMail" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="uAddress" size="20"
						class="courseTextField" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text" name="uPass" size="20"
						class="courseTextField" /></td>
				</tr>
				
				<tr>
					<td>Photo</td>
					<td><input type="file" name="uPhoto" size="20"
						class="courseTextField" /></td>
				</tr>
				
				
			</table>
			<button class="actionBtn" style="margin-top:10px">Register</button>
		</form>
	</div>
</body>
</html>