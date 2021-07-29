
<%@include file="Faculty_Header.jsp"%>
<%@ page import="database.*,java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<head>
<style>
p{
font-family:agencyFB;
}

</style>
</head>
<%  
try{

Connection con=databasecon.getconnection();
Statement st=con.createStatement();

String reply=request.getParameter("reply");
String mid=request.getParameter("mid");

PreparedStatement ps=con.prepareStatement("update message set mreply=?, mstatus=? where mid=? and facemail=? and mstatus!=? ");
ps.setString(1, reply);
ps.setString(2, "Reply");
ps.setString(3, mid);
ps.setString(4, facemail);
ps.setString(5, "Reply");

int i=ps.executeUpdate();
if(i>0){response.sendRedirect("Faculty_Reply.jsp?msg=succ");}

else{response.sendRedirect("Faculty_Reply.jsp?msg=fail");}
}
catch(Exception e)
{e.printStackTrace();}
%>


											</div>
								</div>
								</div>

								<%@include file="Footer.jsp"%>