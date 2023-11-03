<%@include file="hback.jsp"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
int userId=Integer.parseInt(request.getParameter("userId"));
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String key_=request.getParameter("key_");
String key2_=request.getParameter("key2_");
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
ResultSet rs=null,rs2=null;
String url=null;
if(key_.equals(key2_))
{
	session.setAttribute("uuname",uname);
	session.setAttribute("userId",userId);
    url="user.jsp";
    response.sendRedirect(url);
}else
{
	rs=st.executeQuery("select count from user where userId='"+userId+"'");
	if(rs.next())
	{
		if(rs.getInt("count")>=3)
		{
			st2.executeUpdate("update user set status='block' where userId='"+userId+"'");
		}else
		{
		st2.executeUpdate("update user set count='"+(rs.getInt("count")+1)+"' where userId='"+userId+"'");
		}
		} 
	url="message.jsp?msg=Wrong Private Key&color=red";
	response.sendRedirect(url);
}

%>