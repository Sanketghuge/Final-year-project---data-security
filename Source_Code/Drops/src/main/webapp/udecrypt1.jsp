<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>

<%
String key3=request.getParameter("key3");
int fileId=Integer.parseInt(request.getParameter("fileId"));
int userId=(Integer)session.getAttribute("userId");
int a;String url=null;

	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	Statement st2=con.createStatement();
	Statement st3=con.createStatement();
	ResultSet rs2=null,rs3=null;
	ResultSet rs=st.executeQuery("select * from files where fileId='"+fileId+"' and key3='"+key3+"'");
     if(rs.next())
     {
    	 url="udownload.jsp?fileId="+fileId;
 		response.sendRedirect(url);
     }else
     {
    	 rs2=st.executeQuery("select count from user where userId='"+userId+"'");
    		if(rs2.next())
    		{
    			if(rs2.getInt("count")>=3)
    			{
    				st3.executeUpdate("update user set status='block' where userId='"+userId+"'");
    				url="message.jsp?msg=Wrong Composite Key You Account is Blocked&color=red";
    	    		response.sendRedirect(url);
    			}else
    			{
    			st3.executeUpdate("update user set count='"+(rs2.getInt("count")+1)+"' where userId='"+userId+"'");
    			url="umessage.jsp?msg=Wrong Composite Key&color=red";
	    		response.sendRedirect(url);
    			}
    			} 
    		
     }
%>