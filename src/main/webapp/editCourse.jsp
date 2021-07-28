<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.CourseDao"%>
<%@page import="pojo.Course"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Course</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%
		String courseId = request.getParameter("cId");
	    Course course = CourseDao.getCourseById(courseId);
		
	%>
	<div align="center">
		<form action="processEditCourse.jsp" method="post">
			<table class="courseTable">
				<thead>
					<tr>
						<th colspan="2">
							Update Course
						</th>
					</tr>
				</thead>
				<tr>
					<td>Product ID</td>
					<td><input type="text" name="cId" size="20"
						value="<%=courseId%>" class="courseTextField" readonly/></td>
				</tr>
				<tr>
					<td>Product Name</td>
					<td><input type="text" name="cName" size="20"
						value="<%=course.getCourseName()%>" class="courseTextField"/></td>
				</tr>
				<tr>
					<td>Course Desp</td>
					<td><input type="text" name="cDesp" size="20"
						value="<%=course.getCourseDesp()%>" class="courseTextField"/></td>
				</tr>
				<tr>
					<td>Course Fees</td>
					<td><input type="text" name="cFees" size="20"
						value="<%=course.getCourseFee()%>" class="courseTextField"/></td>
				</tr>
				<tr>
					<td>Course Resource</td>
					<td><input type="text" name="cResource" size="20"
						value="<%=course.getCourseResource()%>" class="courseTextField"/></td>
				</tr>
			</table>
			<button class="actionBtn" style="margin-top:10px">Update</button>
		</form>
	</div>
</body>
</html>