<%@page import="java.io.IOException"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@page import="java.sql.*,databaseconnection.*,action.*"%>
<%
int fileId=Integer.parseInt(request.getParameter("fileId"));
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
ResultSet rs=st.executeQuery("select * from files where fileId='"+fileId+"'");
String url=null,url2=null,ddata=null;
SecretKeySpec secretKey=null,secretKey2=null;
if(rs.next())
{   
    secretKey=AES.setKey(rs.getString("key1"));
    String  edata=AES.encrypt(rs.getString("fdata").trim(),secretKey.toString());
    secretKey2=AES.setKey(secretKey.toString());
	st2.executeUpdate("update files set key2='"+secretKey.toString()+"',fdata='"+edata+"',key3='"+secretKey2.toString()+"' where fileId='"+fileId+"'");
	
    
    // drive hq
        String fname=rs.getString("fname");
    ServletContext context = getServletContext();
    String dirName =context.getRealPath("\\uploads\\");
    String  fPath = context.getRealPath("\\uploads\\"+fname);
 
 
 	Ftpcon ftpcon=new Ftpcon();
    File file=new File(fPath);
FileWriter fr;
try {
	System.out.println("uploading");
	fr = new FileWriter(file);
	fr.write(edata);
	fr.flush();
	ftpcon.upload(file, fname);
	System.out.println("completed");
} catch (IOException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	
	url="pviewfiles.jsp";
    response.sendRedirect(url);
}

%>
