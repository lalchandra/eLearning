<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.CourseDao"%>
<%@page import="dao.UserDao"%>
<%@page import="pojo.Course"%>
<%@page import="pojo.User"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View User</title>
</head>
<body>
<%@ include file="header.jsp" %>  

	<table align="center" class="courseTable">
		<thead>
			<tr>
				<th>UserID</th>
				<th>UserName</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Address</th>
				<th>Reg_Date</th>
				<th>Password</th>
				<th>photo</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			List<User> userList = UserDao.getAllUser();
			for (User u: userList) {
		%>
		<tr>
			<td><%=u.getUserId()%></td>
			<td><%=u.getName()%></td>
			<td><%=u.getPhone()%></td>
			<td><%=u.getEmail()%></td>
			<td><%=u.getAddress()%></td>
			<td><%=u.getDate()%></td>
			<td><%=u.getPassword()%></td>
			<td><%=u.getPhoto()%></td>
		
			<td><button class="actionBtn" onclick="location.href = 'processDeleteUser.jsp?uId=<%= u.getUserId()%>';">Delete</button></td>
		</tr>

		<%
}
%>
	</table>

</body>
</html>