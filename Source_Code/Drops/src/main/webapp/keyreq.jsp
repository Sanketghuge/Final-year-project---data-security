<%@include file="oback.jsp"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
int userId=(Integer)session.getAttribute("userId");
int fileId=Integer.parseInt(request.getParameter("fileId"));   
    Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	Statement st2=con.createStatement();
	ResultSet rs2=null;String msg=null;
	ResultSet rs=st.executeQuery("select * from user where userId='"+userId+"'");
    if(rs.next())
    { 
    	rs2=st2.executeQuery("select * from files where fileId='"+fileId+"'");
    	if(rs2.next())
    	{   msg="Your Key Request Processed for a file "+rs2.getString("fname");
    		msg=msg+"  The The composite key is "+rs2.getString("key3");
    			Email.sendMail("Request_Composite_key",msg,rs.getString("uname"), rs.getString("email"));
    	response.sendRedirect("uviewfiles.jsp");
    	}
    }
%>