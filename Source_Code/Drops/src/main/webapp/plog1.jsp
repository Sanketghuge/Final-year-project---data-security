ul<%@include file="hback.jsp"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

int a;String url=null;

	if(uname.equalsIgnoreCase("proxy") && pass.equalsIgnoreCase("proxy"))
	{ 
		url="proxy.jsp";
		response.sendRedirect(url);

	}else
	{
		url="message.jsp?msg=Invalid Login Details&color=red";
		response.sendRedirect(url);
	}
	

%>