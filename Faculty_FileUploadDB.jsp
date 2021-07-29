<%@ page import="java.io.*,java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import="database.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="Faculty_Header.jsp"%>
<%! File f=null;%>
<%!String file=null; byte [] filedata=null;%>

<%  
try{

	Date d= new Date();
SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
String date=sdf.format(d);
System.out.println("date="+date);



file=request.getParameter("file");
String path="C:\\Users\\vishw\\Documents\\Apache\\webapps\\WEB_Security\\file\\";
f=new File(path+file);

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();

FileInputStream fis=new FileInputStream(f);

System.out.println("fis"+fis);
PreparedStatement p=con.prepareStatement("insert into filedata(filename,filedata,facid,facemail,facbranch,fdate) values(?,?,?,?,?,?)");
p.setString(1,file);
p.setBinaryStream(2,(InputStream)fis,(int)(f.length()));
p.setString(3, facid);
p.setString(4, facemail);
p.setString(5, facbranch);
p.setString(6, date);

int r=p.executeUpdate();
if(r>0)
	{
response.sendRedirect("Faculty_FileUpload.jsp?msg=succ");
}
else{response.sendRedirect("Faculty_FileUpload.jsp?msg1=fail");
}
}
catch(Exception e){e.printStackTrace();}


%>

