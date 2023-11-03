
<%@page import="javax.crypto.spec.SecretKeySpec"%>

<%@page import="java.sql.*,databaseconnection.*,action.*"%>
 <%  %>
<%   int fileId=Integer.parseInt(request.getParameter("fileId"));
     String fname=request.getParameter("fname");
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	Statement st2=con.createStatement();
	String url=null;
	int a=st.executeUpdate("delete from files where fileId='"+fileId+"'");
	if(a!=0)
	{   
		st2.executeUpdate("insert into notifications(fileId,fname,action,actionby,datee,utype) values('"+fileId+"','"+fname+"','DELETED','"+(String)session.getAttribute("ouname")+"',now(),'OWNER')");
		url="oviewfiles.jsp";
	    response.sendRedirect(url);
	}else
	{
		url="omessage.jsp?msg=File Fails to Delete Successfully&color=green";
	    response.sendRedirect(url);
	} 
	%>
