<%@include file="oback.jsp"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>
<div class="container">
<%

int a;String url=null,url2=null;
   
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from files"); %>
	<br><br>
	<div class="h3 text-center">Uploaded Files</div>
	<table class="table table-bordered table-responsive">
    <tr><th>File Name</th><th>View</th><th>Delete</th></tr>
	<%while(rs.next())
	{   url="odownload.jsp?fileId="+rs.getInt("fileId");
	    url2="odelete.jsp?fileId="+rs.getInt("fileId")+"&fname="+rs.getString("fname");
	%>
		<tr><td><%=rs.getString("fname")%></td><td><a href="<%=url%>"><button class="btn btn-primary btn-block">Download</button></a></td><td><a href="<%=url2%>"><button class="btn btn-danger btn-block">Delete</button></a></td></tr>
	<%}
	
%></table>
</div>