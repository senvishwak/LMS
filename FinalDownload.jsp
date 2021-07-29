<%@ page import="java.sql.*"%>
<%@ page import="database.*,java.io.*,java.net.*"%>
<%!
public static String getMimeType(String fileUrl)
    throws java.io.IOException, MalformedURLException 
  {
    String type = null;
    URL u = new URL(fileUrl);
    URLConnection uc = null;
    uc = u.openConnection();
    type = uc.getContentType();
    return type;
  }

%>


<%
    String fid=request.getParameter("id");
    String filename=request.getParameter("filename");
 
	String fname=null;
	 

String type=getMimeType("file:"+filename);
System.out.println("type="+type);

 //File f = new File (filename);
	     
		 response.setContentType (type);
    response.setHeader ("Content-Disposition", "attachment;     filename=\""+filename+"\"");
		 Connection con=databasecon.getconnection();
		 PreparedStatement ps =con.prepareStatement("select filedata from filedata where filename='"+filename+"' and fid ='"+fid+"' ");
		 ResultSet rs = ps.executeQuery();
	if(rs.next())
		 {
		 		byte[] ba = rs.getBytes(1);

   
        ServletOutputStream outs = response.getOutputStream();

     
            try {
                   
                        outs.write(ba);
                  
                        } catch (IOException ioe) {
                        ioe.printStackTrace(System.out);
                    }
                        outs.flush();
                    outs.close();
                   // in.close(); 

		 }
%>