<%@page import="dao.UserLogin"%>
<%@page import="pojo.UserInfo"%>
<%

String name = request.getParameter("name");
String password = request.getParameter("password");

if(UserLogin.isUserValid(new UserInfo(name,password)))
{
	session.setAttribute("name",name);
	
	response.sendRedirect("userHome.jsp"); 
}
else 
{
	response.sendRedirect("userLoginFailed.jsp"); 
}
%>