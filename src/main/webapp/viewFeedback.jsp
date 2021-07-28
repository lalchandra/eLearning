<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.FeedbackDao"%>
<%@page import="pojo.Feedback"%>
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
				<th>F_Id</th>
				<th>Feedback</th>
				
			
			</tr> 
		</thead>
		<%
			List<Feedback> feedbackList = FeedbackDao.getAllFeedback();
			for (Feedback f : feedbackList) {
		%>
		<tr>
			<td><%=f.getUserId()%></td>
			<td><%=f.getName()%></td>
			<td><%=f.getEmail()%></td>
			<td><%=f.getfId()%></td>
			<td><%=f.getFeedback()%></td>
		
			
		</tr>

		<%
   }
  %>
</table>

</body>
</html>