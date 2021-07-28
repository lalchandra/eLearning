<%@page import="dao.UserDao"%>
<%@page import="pojo.User"%>

<%

	String userId = request.getParameter("uId");
	int status = UserDao.deleteUser(userId);
	if(status == 1)
	{
		response.sendRedirect("viewUser.jsp"); 
	}
	else
	{
		response.sendRedirect("error.jsp"); 
	}

%>