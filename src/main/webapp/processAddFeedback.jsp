<%@page import="dao.FeedbackDao"%>
<%@page import="pojo.Feedback"%>

<%

	Integer id = Integer.parseInt(request.getParameter("id"));
	String  name = request.getParameter("name");
	String  email = request.getParameter("email");
	Integer fId  = Integer.parseInt(request.getParameter("fId"));
	String  msg = request.getParameter("msg");
	
	
	Feedback feedback = new Feedback(id, name, email,fId, msg);
	
	int status = FeedbackDao.addFeedback(feedback);
	
	if(status == 1)
	{
		response.sendRedirect("successFeedback.jsp"); 
	}
	else
	{
		response.sendRedirect("error.jsp"); 
	}

%>