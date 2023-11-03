<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
String task=request.getParameter("task");
int userId=Integer.parseInt(request.getParameter("userId"));
int a;String url=null;

	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	if(task.equals("act"))
	{
		st.executeUpdate("update user set status='yes',count=0 where userId='"+userId+"'");
		url="viewusers.jsp";
		response.sendRedirect(url);
	}else{
		st.executeUpdate("update user set status='no' where userId='"+userId+"'");
		url="viewusers.jsp";
		response.sendRedirect(url);
	}

%>