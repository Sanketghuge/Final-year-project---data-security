<%@include file="pback.jsp"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>
<div class="container">
<%

int a;String url=null,url2=null;
   
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from notifications"); %>
	
	<div class="h3 text-center">NOTIFICATIONS</div>
	<table class="table table-bordered table-responsive table-hover">
    <tr><th>File Id</th><th>File Name</th><th>Action</th><th>Action By</th><th>ROLE</th><th>Date & Time</th></tr>
	<%while(rs.next())
	{  
	%>
		<tr><td><%=rs.getString("fileId")%></td><td><%=rs.getString("fname")%></td><td><%=rs.getString("action")%></td><td><%=rs.getString("actionby")%></td><td><%=rs.getString("utype")%></td><td><%=rs.getString("datee")%></td></tr>
	<%}
	
%></table>
</div>