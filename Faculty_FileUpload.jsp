<%@include file="Faculty_Header.jsp"%>
<%
if(request.getParameter("msg1")!=null)
{
	out.println("<script>alert('Failed To Upload.. ')</script>");
}

if(request.getParameter("msg")!=null)
{
	out.println("<script>alert('File Upload Successfully..! ')</script>");
}
%>


                            
									<div id="main" class="container">
			<div align="center">
<div class="6u$ 12u$(medium)">



<h2> <u>Upload Materials</u></h2>
<br/>


								<form method="post" action="Faculty_FileUploadDB.jsp">
									
										
										<div class="6u 12u$(xsmall)">
											<input type="file" name="file"  required>
										</div>
										<br/>
										
														
										<!-- Break -->
										<div class="12u$">
											<ul class="actions">
												<li><input type="submit" class="button special"value="Upload" /></li>
												
											</ul>
										</div>
									
								</form>

								<hr />
						
<br>
								
								</div>
								</div>
								</div>











<%@include file="Footer.jsp"%>
