
<%@include file="Student_Header.jsp"%>
<%@ page import="database.*,java.sql.*"%>
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
</style>
</head>




<%  
try{

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from filedata where facbranch='"+stubranch+"' ");
%>




			<div id="main" class="container">
			<div align="center">

								<h4></h4>
								
									<table>
										<thead>
											<tr>
												<th>FileId</th>
												<th>File Name</th>
												<th>View</th>
											</tr>
								</thead>
								<tbody>
										<% while(rs.next()){%>
											<tr>
												<td><%=rs.getString("fid")%></td>
												<td><%=rs.getString("filename")%></td>
										<!--	<td><a target="_blank" href="Student_ViewFileData.jsp?fid=<%=rs.getString("fid")%>&&filename=<%=rs.getString("filename")%>">VIew File</a></td>-->
													<td><a href="file/<%=rs.getString("filename")%>" target="_blank" >VIew</a></td>
											</tr>
							<%}%>				
											</tbody>
																		</table>
								</div></div>
								</br></br></br>
<%
}
catch(Exception e)
{e.printStackTrace();}
%>
</br></br></br><br>
								<%@include file="Footer.jsp"%>