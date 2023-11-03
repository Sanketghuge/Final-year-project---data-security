<%@include file="hback.jsp"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
int ownerId=Integer.parseInt(request.getParameter("ownerId"));
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
	session.setAttribute("ouname",uname);
	session.setAttribute("ownerId",ownerId);
    url="owner.jsp";
    response.sendRedirect(url);
}else
{
	rs=st.executeQuery("select count from owner where ownerId='"+ownerId+"'");
	if(rs.next())
	{
		if(rs.getInt("count")>=3)
		{
			st2.executeUpdate("update owner set status='block' where ownerId='"+ownerId+"'");
		}else
		{
		st2.executeUpdate("update owner set count='"+(rs.getInt("count")+1)+"' where ownerId='"+ownerId+"'");
		}
		} 
	url="message.jsp?msg=Wrong Private Key&color=red";
	response.sendRedirect(url);
}

%>