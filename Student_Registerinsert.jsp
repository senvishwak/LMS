<%@page import="database.*,java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date"%>

<%!
Connection con;
Statement st;
%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String contact = request.getParameter("contact");
String gender = request.getParameter("gender");
String id = request.getParameter("id");
String branch = request.getParameter("branch");
String compareemail,compareid=null;

SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
Date d=new Date();
String rdate=sdf.format(d);
System.out.println("date="+rdate);

con=databasecon.getconnection();
st=con.createStatement();
ResultSet rs=st.executeQuery("select * from sturegister where stuemail='"+email+"' or stuid='"+id+"' ");
if(rs.next()){
compareemail=rs.getString("stuemail");
compareid=rs.getString("stuid");
if(email.equals(compareemail))
	{	response.sendRedirect("Student_Register.jsp?msg2=Email "+email);}

else
	{	response.sendRedirect("Student_Register.jsp?msg2=Id "+id);}

	}

else{
	
PreparedStatement ps=con.prepareStatement("insert into sturegister(stuname,stuemail,stupswd,stumno,stugender,stureg_date,stuid,stubranch) values(?,?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,contact);
ps.setString(5,gender);
ps.setString(6,rdate);
ps.setString(7,id);
ps.setString(8,branch);

int i=ps.executeUpdate();

if(i>0){
response.sendRedirect("Student_Register.jsp?msg=succ");
}else{
response.sendRedirect("Student_Register.jsp?msg1=unsucc");
}

}
%>