<%@page import="java.util.*,java.io.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@include file="oback.jsp"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*,action.*"%>
<html>
<head>
</head>
<body>
<%
String ouname=(String)session.getAttribute("ouname");
int ownerId=(Integer)session.getAttribute("ownerId");
String myKey=null;
String edata=null;
Thread.sleep(100);
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\uploads\\");
		String paramname=null;
		String myfile=null;
		
   		  File file1 = null;String fdata="",url=null;
   		
		
		try {
			 
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("myfile"))
				{
					myfile=multi.getParameter(paramname);
				}
		
				}
		
	int f = 0;String fPath=null;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			myfile = multi.getFilesystemName(paramname);
			 fPath = context.getRealPath("\\uploads\\"+myfile);
			file1 = new File(fPath);
			FileReader fr=new FileReader(fPath);
			BufferedReader br=new BufferedReader(fr);
			FileInputStream fs = new FileInputStream(file1);
			String sCurrentLine=null;
			int c = 0;
			while ((sCurrentLine = br.readLine()) != null) {
		    	fdata=fdata+sCurrentLine+"\n";
		    	c++;
			}
			
			 
// 		    FileWriter fw=new FileWriter("E://sai.txt");
// 		    BufferedWriter bw=new BufferedWriter(fw);
// 		    bw.write(fdata);
// 		    bw.flush();

			
		}	
	}   
	          DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
           java.util.Date dateobj = new java.util.Date();

             Calendar calobj = Calendar.getInstance();

	         SecretKeySpec secretKey=null;
	         secretKey=AES.setKey(df.format(calobj.getTime()).toString());
	        edata=AES.encrypt(fdata.trim(),secretKey.toString());
	         
	        FileInputStream fs1 = null;
	        
            // drive hq
      String fname=myfile;
         	Ftpcon ftpcon=new Ftpcon();
    	    File file=new File(fPath);
    	FileWriter fr;
		try {
			System.out.println("uploading");
			fr = new FileWriter(file);
			fr.write(fdata);
			fr.flush();
			
		

						// No. of lines to be split and saved in each
						double nol = 2.0;
						
						Scanner scanner = new Scanner(file);
						
						int count = 0;
						while (scanner.hasNextLine()) {
							scanner.nextLine();
							count++;
						}

						// display no. of lines in the input file.
						System.out.println("Lines in the file: " + count);

						double temp = (count / nol);
						int temp1 = (int) temp;
						int nof = 0;
						if (temp1 == temp) {
							nof = temp1;
						} else {
							nof = temp1 + 1;
						}
						System.out.println("No. of files to be generated :" + nof);

						// splitting of file into multiple files
						FileInputStream fstream = new FileInputStream(file);
						DataInputStream in = new DataInputStream(fstream);

						BufferedReader br = new BufferedReader(new InputStreamReader(in));
						String strLine;

						for (int j = 1; j <= nol; j++) {

							// location of new file
							String fnamenew = "D:/"+fname + j + ".txt";
							FileWriter fstream1 = new FileWriter(fnamenew);
							BufferedWriter out1 = new BufferedWriter(fstream1);
							for (int i = 1; i <= nof; i++) {
								strLine = br.readLine();
								if (strLine != null) {
									out1.write(strLine);
									if (i != nol) {
										out1.newLine();
									}
								}
							}
							
							
							out1.close();
							
							

						}

						in.close();
			for(int k=1;k<=2;k++){
						File filenew = new File("D:/"+fname + k + ".txt");
				    	ftpcon.upload(filenew, fname + k + ".txt");
			}
	    	//ftpcon.upload(file, fname);
	    	System.out.println("completed");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
           
			Connection con=DBCon.getConnection(); 
            Statement st=con.createStatement();
            Statement st2=con.createStatement();
            Statement st3=con.createStatement();
            PreparedStatement ps=con.prepareStatement("insert into files(fname,fdata,ouname,ownerId,key1) values(?,?,?,?,?)");
			 ps.setString(1,myfile);
			ps.setString(2,edata);
			ps.setString(3,ouname);
			ps.setInt(4,ownerId);
			ps.setString(5,secretKey.toString());
          	int x=ps.executeUpdate();
          	ResultSet rs2=st2.executeQuery("select LAST_INSERT_ID() from files");
          	if(rs2.next())
          	{
          		st3.executeUpdate("insert into notifications(fileId,fname,action,actionby,datee,utype) values('"+rs2.getInt(1)+"','"+myfile+"','UPLOADED','"+ouname+"',now(),'OWNER')");
          	}
		   
			if(x!=0)
			{
				url="omessage.jsp?msg=File Uploaded Successfully&color=green";
			    response.sendRedirect(url);
			}
			else
			{
				url="omessage.jsp?msg=Fails to Upload&color=red";
			    response.sendRedirect(url);
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>