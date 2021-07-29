<%@include file="Header.jsp"%>
<%



if(request.getParameter("msg1")!=null)
{
	out.println("<script>alert('Please Enter Valid Credentials.. ')</script>");
}

if(request.getParameter("session")!=null)
{
	out.println("<script>alert('Your Session Was Timeout .. Please Login To Continue Your Session..! ')</script>");
}

%>

			<div id="main" class="container">
			<div align="center">
<div class="6u$ 12u$(medium)">
<br/>
<br/><br/>

<h2> <u>Student Login</u></h2>
<br/>


								<form method="post" action="Student_LoginCheck">
									
										
										<br/>
										<div class="6u 12u$(xsmall)">
											<input type="text" name="id"   placeholder="Student HtNO" required>
										</div>
										
										<br/>
										<div class="6u 12u$(xsmall)">
											<input type="password" name="password"  placeholder="Password" required>
										</div>
										<br/>
										
														
										<!-- Break -->
										<div class="12u$">
											<ul class="actions">
												<li><input type="submit" class="button special"value="Login" /></li>
												<li><input type="reset" value="Reset" class="alt" /></li>
											</ul>
										</div>
									
								</form>

								<br><br>

					
								</div>
								</div>
								</div>

								<br><br><br/>
								<%@include file="Footer.jsp"%>