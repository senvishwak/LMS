
<%@include file="Faculty_Header.jsp"%>
<%@ page import="database.*,java.sql.*"%>

<%  
try{
String mid=request.getParameter("mid");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from message where mid='"+mid+"' and facemail='"+facemail+"' and mstatus!='Reply' ");
%>






			<div id="main" class="container">
			<div align="center">
<div class="6u$ 12u$(medium)">
<br/>

<h2> <u>Reply Query</u></h2>
<br/>


							
								
										
										<br/>
									<form method="post" action="Faculty_QueryReply1.jsp">
									<%if(rs.next())%>
								
										<div class="6u 12u$(xsmall)">
										
											<input type="hidden" name="mid"  value="<%=rs.getString("mid")%>" readonly>
										</div>
										
										<br/>
										<div class="6u 12u$(xsmall)">
											<input type="text" name="stuname"  value="<%=rs.getString("stuname")%>" readonly>
										</div>
										<br/>
										<div class="6u 12u$(xsmall)">
											<textarea name="query" id="message" cols="5" rows="3" readonly><%=rs.getString("message")%></textarea>
										</div>
										<br/>
										<div class="6u 12u$(xsmall)">
											<textarea name="reply" id="message" cols="5" rows="6" required></textarea>
										</div>
												<br/>		
										<!-- Break -->
										<div class="12u$">
											<ul class="actions">
												<li><input type="submit" class="button special"value="Send Reply" /></li>
												
											</ul>
											</form>
										</div>
									
			

								<hr />

					
								</div>
								</div>
								</div>







<%
						
}
catch(Exception e)
{e.printStackTrace();}
%>
								<%@include file="Footer.jsp"%>