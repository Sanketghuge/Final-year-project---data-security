<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
String name=request.getParameter("name");
String uname=request.getParameter("uname");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String utype=request.getParameter("utype");
String phone=request.getParameter("phone");
Random randomno = new Random();
int key_=randomno.nextInt(10000);
int a;String url=null;
try{
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	if(utype.equalsIgnoreCase("owner")){
	a=st.executeUpdate("insert into owner(name,uname,pass,email,phone,key_,count,status) values('"+name+"','"+uname+"','"+pass+"','"+email+"','"+phone+"','"+key_+"',0,'no')");
	url="message.jsp?msg=Owner Added Successfully&color=green";
	}else
	{
		a=st.executeUpdate("insert into user(name,uname,pass,email,phone,key_,count,status) values('"+name+"','"+uname+"','"+pass+"','"+email+"','"+phone+"','"+key_+"',0,'no')");	
		url="message.jsp?msg=User Added Successfully&color=green";
	}    
	Email.sendMail("Your Private Key", "Hello Your Private Key IS "+key_, email, email);
		     response.sendRedirect(url);
}catch(Exception e){System.out.println(e);
url="message.jsp?msg=Registration Fails&color=red";
response.sendRedirect(url);
}
%>