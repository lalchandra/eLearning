<%@page import="dao.UserDao"%>
<%@page import="pojo.User"%>

<%

	Integer userId = Integer.parseInt(request.getParameter("uId"));
	String  userName = request.getParameter("uName");
	Long phone = Long.parseLong(request.getParameter("uPhone"));
	String  email = request.getParameter("uMail");
	String  address = request.getParameter("uAddress");
	String  pass = request.getParameter("uPass");
	String  photo = request.getParameter("uPhoto");
	
	User user = new User(userId, userName, phone, email, address, pass, photo);
	
	int status = UserDao.addUser(user);
	
	if(status == 1)
	{
		response.sendRedirect("registerSuccess.jsp"); 
	}
	else
	{
		response.sendRedirect("error.jsp"); 
	}

%>