<%@include file="pback.jsp"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from user");
	String url=null,url2=null;
	%>
	<div class="container">
	<div class="text-center h3">User Details</div>
	<table class="table table-responsive table-bordered">
      <tr><th>User Name</th><th>User Username</th><th>User Email</th><th>Phone</th><th>Status</th><th>Action</th></tr>
	<% while(rs.next())
	{ url="uverify.jsp?task=act&userId="+rs.getInt(1);
      url2="uverify.jsp?task=deact&userId="+rs.getInt(1);
	%>
		<tr><td><%=rs.getString("name")%></td><td><%=rs.getString("uname")%></td><td><%=rs.getString("email")%></td><td><%=rs.getString("phone")%></td>
		<%if(rs.getString("status").equals("no")){%>
			<td class="text-warning">Unauthorized</td>
			<td><a href="<%=url%>" ><button class="btn btn-primary btn-block">Authorize</button></a></td>
		<%} else if(rs.getString("status").equals("block"))
		{%>
			<td class="text-danger">Blocked</td>
			<td><a href="<%=url%>"><button class="btn btn-warning btn-block">Authorize</button></a></td>
		<%}else{ %>
			<td class="text-primary">Authorized</td>
			<td ><a href="<%=url2%>"><button class="btn btn-danger btn-block">Unauthorize</button></a></td>
	   <%	} %>
		</tr>
	<% }
	
%></table>
</div>