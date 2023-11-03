
<%@page import="javax.crypto.spec.SecretKeySpec"%>

<%@page import="java.sql.*,databaseconnection.*,action.*"%>
 <%  %>
<%   int fileId=Integer.parseInt(request.getParameter("fileId"));
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	Statement st2=con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from files where fileId='"+fileId+"'");
	String url=null,url2=null,ddata=null;
	SecretKeySpec secretKey=null;
	while(rs.next())
	{ 
		st2.executeUpdate("insert into notifications(fileId,fname,action,actionby,datee,utype) values('"+fileId+"','"+rs.getString("fname")+"','DOWNLOADED','"+(String)session.getAttribute("ouname")+"',now(),'OWNER')");
		if(rs.getString("key2")!=null)
    	{
		ddata=AES.decrypt(rs.getString("fdata").trim(),rs.getString("key2"));
		ddata=AES.decrypt(ddata.trim(),rs.getString("key1"));
    	}else{
    		ddata=AES.decrypt(rs.getString("fdata").trim(),rs.getString("key1"));
    	}
		
		response.setContentType("text/html;charset=UTF-8");
		response.setHeader("Content-Disposition", "attachment;filename=\"" + rs.getString("fname") + "\"");
		out.write(ddata.trim());
		
	}
	%>
