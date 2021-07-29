
<%@include file="Student_Header.jsp"%>
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
ResultSet rs=st.executeQuery("select * from facregister where facbranch='"+stubranch+"' ");
%>
		<div id="main" class="container">
			<div align="center">
<div class="6u$ 12u$(medium)">
<h2> <u>Student</u></h2>
<br/>


								<form method="post" action="Student_Message.jsp">
									
										
										<br/>
										<div class="6u 12u$(xsmall)">
											<input type="text" name="" value="<%=stuname%> " readonly>
										</div>
										
										<br/>

										<div class="6u 12u$(xsmall)">
											<div class="select-wrapper">	
											<select name="facemail" required>
											<option value="">Select Faculty<option>
											<% while(rs.next()){%>		
													<option value="<%=rs.getString("facemail")%>"> <%=rs.getString("facemail")%></option>
													
										<%}%>
											</select>
										

	</div>
										</div>
										<br/>
										<div class="6u 12u$(xsmall)">
											<textarea name="query" id="message" cols="5" rows="6" required></textarea>
										</div>
												<br/>
										<!-- Break -->
										<div class="12u$">
											<ul class="actions">
												<li><input type="submit" class="button special"value="Submit Query" /></li>
											</ul>
										</div>
									
								</form>

					


<%
Date d=new Date();
SimpleDateFormat sdf= new SimpleDateFormat("dd-MM-yyyy");
String date=sdf.format(d);
System.out.println("date="+date);
Statement st2= con.createStatement();
String message=request.getParameter("query");
String facemail=request.getParameter("facemail");
if(facemail!=null){
ResultSet rs2=st2.executeQuery("select * from facregister where facemail='"+facemail+"' ");
rs2.next();
PreparedStatement ps=con.prepareStatement("insert into message(mdate,stuname,stuemail,stubranch,facname,facemail,facbranch,message,mstatus) values(?,?,?,?,?,?,?,?,?)");
ps.setString(1, date);
ps.setString(2, stuname);
ps.setString(3, stuemail);
ps.setString(4, stubranch);
ps.setString(5, rs2.getString("facname"));
ps.setString(6, facemail);
ps.setString(7, rs2.getString("facbranch"));
ps.setString(8, message);
ps.setString(9, "Query");
int i=ps.executeUpdate();
System.out.println("save "+i);
}

Statement st3= con.createStatement();
ResultSet rs3=st3.executeQuery("select * from message where  facbranch='"+stubranch+"' and stuemail='"+stuemail+"' and mstatus='Reply' ");
while(rs3.next()){
%>


<h3><strong>Question:</strong><%=rs3.getString("message")%></h3>
<blockquote><b>Answer:</b>
<%=rs3.getString("mreply")%>
<p>Replied by  <font style="color:red"><%=rs3.getString("facname")%></font></p>
</blockquote>
















					
											
										
											
																	
<%

}
}
catch(Exception e)
{e.printStackTrace();}
%>


											</div>
								</div>
								</div>

								<%@include file="Footer.jsp"%>