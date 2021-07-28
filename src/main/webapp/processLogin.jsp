<%@page import="dao.AdminLogIn"%>
<%@page import="pojo.AdminInfo"%>
<%

String name = request.getParameter("name");
String password = request.getParameter("password");

if(AdminLogIn.isUserValid(new AdminInfo(name,password)))
{
	session.setAttribute("name",name);
	
	response.sendRedirect("home.jsp"); 
}
else 
{
	response.sendRedirect("loginFailed.jsp"); 
}
%>