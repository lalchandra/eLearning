<%@page import="dao.CourseDao"%>
<%@page import="pojo.Course"%>

<%

	Integer courseId = Integer.parseInt(request.getParameter("cId"));
	String  courseName = request.getParameter("cName");
	String  courseDesp = request.getParameter("cDesp");
	String  courseFees = request.getParameter("cFees");
	String  courseResource = request.getParameter("cResource");
	
	Course course = new Course(courseId,courseName,courseDesp,courseFees,courseResource);
	
	int status = CourseDao.addCourse(course);
	if(status == 1)
	{
		response.sendRedirect("viewCourse.jsp"); 
	}
	else
	{
		response.sendRedirect("error.jsp"); 
	}

%>