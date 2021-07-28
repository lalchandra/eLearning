<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.ContactDao"%>
<%@page import="pojo.Contact"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Contact</title>
</head>
<body>
<%@ include file="header.jsp" %>  

	<table align="center" class="courseTable">
		<thead>
			<tr>
				<th>User Id</th>
				<th>User Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Message</th>
				<th>ContactId</th>
			
			</tr> 
		</thead>
		<%
			List<Contact> contactList = ContactDao.getAllContact();
			for (Contact c : contactList) {
		%>
		<tr>
			<td><%=c.getContactId()%></td>
			<td><%=c.getName()%></td>
			<td><%=c.getEmail()%></td>
			<td><%=c.getPhone()%></td>
			<td><%=c.getMessage()%></td>
			<td><%=c.getContactId()%></td>
			
		</tr>

		<%
}
%>
	</table>

</body>
</html>