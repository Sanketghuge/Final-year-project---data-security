<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
int userId=(Integer)session.getAttribute("userId");
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
	a=st.executeUpdate("update user set name='"+name+"',uname='"+uname+"',pass='"+pass+"',email='"+email+"',phone='"+phone+"' where userId='"+userId+"'");
	if(a!=0)
	{
		url="umessage.jsp?msg=User Profile Updated Successfully&color=green";
	    response.sendRedirect(url);
	}else
	{
		url="umessage.jsp?msg=Fails to Update Profile&color=red";
	    response.sendRedirect(url);
	}
	

%>