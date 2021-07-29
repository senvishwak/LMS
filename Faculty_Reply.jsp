
<%@include file="Faculty_Header.jsp"%>
<%@ page import="database.*,java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<head>
<style>
table thead tr:nth-child(2n + 1) {
			background-color: #ccccff;
		}
			table tbody tr:nth-child(2n + 1) {
		background-color: #f5f5f5;
		}
table tbody tr {
background-color: #f5f5f5;
	}


p{
font-family:agencyFB;
}
a{
text-decoration:none;
}
a:hover{
color:blue;
}
tr:hover {background-color:#ebebeb;}

tr:nth-child(2n + 1):hover {
		background-color: #ebebeb;
		}


		p{
font-family:agencyFB;
}
</style>
</head>
<%  

String msg=request.getParameter("msg");
if(msg!=null&&msg.equals("succ")){
out.println("<script>alert('Reply Send To Student')</script>");
}
if(msg!=null&&msg.equals("fail")){
out.println("<script>alert('Error............')</script>");
}








try{

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from message where facbranch='"+facbranch+"' and facemail='"+facemail+"'  and mstatus!='Reply' ");
%>
		<div id="main" class="container">
			<div align="center">
<div class="6u$ 12u$(medium)">
<h2> <u>Faculty Query Page</u></h2>
<br/>

<table>
										<thead>
											<tr>
												<th>Student Name</th>
												<th>Query</th>
												<th>Reply</th>
											</tr>
											</thead>
								<tbody>
										<% while(rs.next()){%>

											<tr>
												<td><%=rs.getString("stuname")%></td>
												<td><%=rs.getString("message")%></td>
											<td><a href="Faculty_QueryReply.jsp?mid=<%=rs.getString("mid")%>">Reply</a></td>
													
											</tr>
							<%}%>				
											</tbody>
																		</table>
						
									
									<br>
									
					


<%

Statement st3= con.createStatement();
ResultSet rs3=st3.executeQuery("select * from message where  facbranch='"+facbranch+"' and facemail='"+facemail+"' and mstatus='Reply' ");
while(rs3.next()){
%>
	<hr/>

<h3><strong>Query:</strong><%=rs3.getString("message")%></h3>
<p>Ask by  <font style="color:blue"><%=rs3.getString("stuname")%></font></p>
<blockquote><b>Reply:</b>
<%=rs3.getString("mreply")%>

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
<br><br><br><br>
								<%@include file="Footer.jsp"%>