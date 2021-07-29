<%@include file="Header.jsp"%>
<%

if(request.getParameter("msg")!=null)
{
	out.println("<script>alert('Registration Success ')</script>");
}

if(request.getParameter("msg1")!=null)
{
	out.println("<script>alert('Faied To Submit YOur Data.. ')</script>");
}
String exist=request.getParameter("msg2");
if(exist!=null)
{
	out.println("<script>alert('The "+exist+" Is Already Registered ')</script>");
}

%>

			<div id="main" class="container">
			<div align="center">
<div class="6u$ 12u$(medium)">

<h2> <u>Student Registration Form</u></h2>
<br/>
<br/>

								<form method="post" action="Student_Registerinsert.jsp">
									
										<div class="6u 12u$(xsmall)">
											<input type="text" name="name"  placeholder="Name" required>
										</div>
										<br/>
										
										<div class="6u 12u$(xsmall)">
											<input type="text" name="id"  placeholder="Student HtNO" required>
										</div>
										<br/>
										<div class="6u 12u$(xsmall)">
											<input type="email" name="email"   placeholder="Email" >
										</div>
										
										<br/>
										<div class="6u 12u$(xsmall)">
											<input type="password" name="password"  placeholder="Password" >
										</div>
										<br/>
										<div class="6u 12u$(xsmall)">
											<input type="text" pattern="[0-9]{10,10}" min="10" max="10" name="contact"  placeholder="Contact No" >
										</div>
										<!-- Break -->
												<br/>

										<!-- Break -->
										<div class="6u 12u$(xsmall)">
										<div class="select-wrapper">
												<select name="branch"  required>
													<option value="">- Branch-</option>
													<option value="ECE">ECE</option>
													<option value="CSE">CSE</option>
													
												</select>
											</div>
											</div>
										



											<br/>
									
								
										<!-- Break -->
										<div class="6u 12u$(xsmall)">
										<div class="select-wrapper">
												<select name="gender"  required>
													<option value="">- Gender -</option>
													<option value="Male">Male</option>
													<option value="Female">Female</option>
													
												</select>
											</div>
											</div>
												<br/>

										<!-- Break -->
										<!-- Break -->
										<div class="12u$">
											<ul class="actions">
												<li><input type="submit" class="button special"value="Register" /></li>
												<li><input type="reset" value="Reset" class="alt" /></li>
											</ul>
										</div>
									
								</form>

							

								
								</div>
								</div>
								</div>
								<%@include file="Footer.jsp"%>