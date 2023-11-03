<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
int ownerId=(Integer)session.getAttribute("ownerId");
String name=request.getParameter("name");
String uname=request.getParameter("uname");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String phone=request.getParameter("phone");
Random randomno = new Random();
int key_=randomno.nextInt(10000);
int a;String url=null;

	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	a=st.executeUpdate("update owner set name='"+name+"',uname='"+uname+"',pass='"+pass+"',email='"+email+"',phone='"+phone+"' where ownerId='"+ownerId+"'");
	if(a!=0)
	{
		url="omessage.jsp?msg=Owner Profile Updated Successfully&color=green";
	    response.sendRedirect(url);
	}else
	{
		url="omessage.jsp?msg=Fails to Update Profile&color=red";
	    response.sendRedirect(url);
	}
	

%>