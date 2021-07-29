
<%@include file="Student_Header.jsp"%>
<%@ page import="database.*,java.sql.*"%>
<head>
<style>
table {
    border-collapse: collapse;
    width: 50%;
}

th{
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}

a:link {
    text-decoration: none;
}
a:hover {
  color:blue;
}
</style>
</head>


<%  
try{
String fid=request.getParameter("fid");
String filename=request.getParameter("filename");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from filedata where facbranch='"+stubranch+"' and fid='"+fid+"' and filename='"+filename+"' ");
%>






			<div id="main" class="container">
			<div align="center">
<div class="6u$ 12u$(medium)">
<br/>

<h2> <u>View File Data</u></h2>
<br/>


							
						<%
						if(rs.next()){
						%>			
										
										<br/>
									<form method="post" action="FinalDownload.jsp">
									
								
										<div class="6u 12u$(xsmall)">
										
											<input type="text" name="id"  value="<%=rs.getString("fid")%>" readonly>
										</div>
										
										<br/>
										<div class="6u 12u$(xsmall)">
											<input type="text" name="filename"  value="<%=rs.getString("filename")%>" readonly>
										</div>
										<br/>
										<div class="6u 12u$(xsmall)">
											<textarea name="message" id="message" cols="5" rows="6" readonly><%=rs.getString("filedata")%></textarea>
										</div>
												<br/>		
										<!-- Break -->
										<div class="12u$">
											<ul class="actions">
												<li><input type="submit" class="button special"value="Download" /></li>
												
											</ul>
											</form>
										</div>
									
			

								<hr />

					
								</div>
								</div>
								</div>







<%
						}
}
catch(Exception e)
{e.printStackTrace();}
%>
								<%@include file="Footer.jsp"%>