<!DOCTYPE HTML>
<!--
	Hielo by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>KMIT</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<div class="logo"><a href=""><span>STUFAC PORTAL</span></a></div>
				<a href="#menu">Menu</a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="Student_Home.jsp">Home</a></li>
					<li><a href="Student_ViewFile.jsp">View Materials</a></li>
					<li><a href="Student_Message.jsp">Messages</a></li>
					<li><a href="index.html">Logout</a></li>
					
				</ul>
			</nav>

		<!-- Banner -->
			
        <%
		String stubranch=(String)session.getAttribute("stubranch");
		String stuname=(String)session.getAttribute("stuname");
		String stuemail=(String)session.getAttribute("stuemail");
		String stuid=(String)session.getAttribute("stuid");
		if(stuid==null){
		response.sendRedirect("Student_Login.jsp?session=timeout");
		}
		
		%>
		<section id="One" class="wrapper style3">
				<div class="inner">
					<header class="align-center">
						<p>Welcome Student </p>
						<h2><%=stuname%></h2>
					</header>
				</div>
			</section>


		<!-- One -->
					

		