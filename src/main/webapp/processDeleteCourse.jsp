<%@page import="dao.CourseDao"%>
<%@page import="pojo.Course"%>

<%

String courseId = request.getParameter("cId");

int status = CourseDao.deleteCourse(courseId);
if(status == 1)
{
	response.sendRedirect("viewCourse.jsp"); 
}
else
{
	response.sendRedirect("error.jsp"); 
}

%>