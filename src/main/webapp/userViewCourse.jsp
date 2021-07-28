<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.CourseDao"%>
<%@page import="pojo.Course"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Course</title>
</head>
<body>
<%@ include file="userHeader.jsp" %>  

	<table align="center" class="courseTable">
		<thead>
			<tr>
				<th>Course ID</th>
				<th>Course Name</th>
				<th>Course Desp</th>
				<th>Course Fees</th>
				<th>Course Resource</th>
				<th colspan="1">Actions</th>
			</tr> 
		</thead>
		<%
			List<Course> courseList = CourseDao.getAllCourse();
			for (Course c : courseList) {
		%>
		<tr>
			<td><%=c.getCourseId()%></td>
			<td><%=c.getCourseName()%></td>
			<td><%=c.getCourseDesp()%></td>
			<td><%=c.getCourseFee()%></td>
			<td><%=c.getCourseResource()%></td>
			
			<td><button class="actionBtn" onclick="location.href = 'enroll.jsp'">ENROLL</button></td>
			
		</tr>

		<%
}
%>
	</table>

</body>
</html>