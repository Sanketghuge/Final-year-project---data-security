<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
String task=request.getParameter("task");
int ownerId=Integer.parseInt(request.getParameter("ownerId"));
int a;String url=null;

	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	if(task.equals("act"))
	{
		st.executeUpdate("update owner set status='yes',count=0 where ownerId='"+ownerId+"'");
		url="viewowners.jsp";
		response.sendRedirect(url);
	}else{
		st.executeUpdate("update owner set status='no' where ownerId='"+ownerId+"'");
		url="viewowners.jsp";
		response.sendRedirect(url);
	}

%>