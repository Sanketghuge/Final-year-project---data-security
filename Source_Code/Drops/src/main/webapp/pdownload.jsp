
<%@page import="javax.crypto.spec.SecretKeySpec"%>

<%@page import="java.sql.*,databaseconnection.*,action.*"%>
 <%  %>
<%   int fileId=Integer.parseInt(request.getParameter("fileId"));
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from files where fileId='"+fileId+"'");
	String url=null,url2=null,ddata=null;
	SecretKeySpec secretKey=null;
	while(rs.next())
	{   
		
		response.setContentType("text/html;charset=UTF-8");
		response.setHeader("Content-Disposition", "attachment;filename=\"" + rs.getString("fname") + "\"");
		out.write(rs.getString("fdata"));
		
	}
	%>
