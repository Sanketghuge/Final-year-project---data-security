<%@include file="hback.jsp"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

int a;String url=null;
try{
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from owner where uname='"+uname+"' and pass='"+pass+"'");
	if(rs.next())
	{ 
	if(rs.getString("status").equals("no"))
	{
		url="message.jsp?msg=Your Details Under Verification&color=red";
		response.sendRedirect(url);
	}else if(rs.getString("status").equals("block")){
		url="message.jsp?msg=You Account has Blocked for Malicious Activities.Contact Proxy&color=red";
		response.sendRedirect(url);
	}
	else
	{
		%>
		
		<div class="container">
		<h3>Public Key verification</h3>
		<%
		Email.sendMail("Key", rs.getString("key_"), "fratellodrivehq@gmail.com", rs.getString("email"));
		%>
	    <form action="olog2.jsp" name="ds" method=post onsubmit="">
	    <input type=hidden name="uname" value="<%=uname%>">
	    <input type=hidden name="ownerId" value="<%=rs.getInt("ownerId")%>">
	    <input type=hidden name="pass" value="<%=pass%>">
	    <input type=hidden name="key_" value="<%=rs.getString("key_")%>">
	    <div class="form-group has-feedback">
	    <label class="label-control">Enter Public Key</label>
	    <input type="text" name="key2_" placeholder="Enter Public Key" title="Enter Public Key" class="form-control">
	    <span class="form-control-feedback"></span>
	   </div>
	   <input type="submit" value="VERIFY" class="btn btn-primary btn-block btn-responsive">
			</form>
			</div>
	 <%	
	}
	}else
	{
		url="message.jsp?msg=Invalid Login Details&color=red";
		response.sendRedirect(url);
	}
	
}catch(Exception e){System.out.println(e);
url="message.jsp?msg=Registration Fails&color=red";
response.sendRedirect(url);
}
%>