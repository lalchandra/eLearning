<%@page import="dao.ContactDao"%>
<%@page import="pojo.Contact"%>

<%

	Integer id = Integer.parseInt(request.getParameter("id"));
	String  name = request.getParameter("name");
	String  email = request.getParameter("email");
	Long  phone = Long.parseLong(request.getParameter("phone"));
	String  msg = request.getParameter("msg");
	Integer cId  = Integer.parseInt(request.getParameter("cId"));
	
	Contact contact = new Contact(id, name, email,phone, msg,cId);
	
	int status = ContactDao.addContact(contact);
	
	if(status == 1)
	{
		response.sendRedirect("successContact.jsp"); 
	}
	else
	{
		response.sendRedirect("error.jsp"); 
	}

%>