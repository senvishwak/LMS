import javax.servlet.*;
import database.databasecon;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(value="/Faculty_LoginCheck")
public class Faculty_LoginCheck extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{

String id= request.getParameter("id");
String password = request.getParameter("password");

try{
HttpSession session=request.getSession();
Connection con= databasecon.getconnection();
CallableStatement cs=con.prepareCall("{call faclogin(?,?)}");
cs.setString(1,id);
cs.setString(2, password);
ResultSet rs=cs.executeQuery();
if(rs.next()){
	String name=rs.getString("facname");
	String email=rs.getString("facemail");
		String branch =rs.getString("facbranch");
session.setAttribute("facid", id);
session.setAttribute("facname", name);
session.setAttribute("facemail", email);
session.setAttribute("facbranch", branch);
response.sendRedirect("Faculty_Home.jsp");
}
else
	{
	response.sendRedirect("Faculty_Login.jsp?msg1=fail");
}

}
catch(Exception e)
		{
	e.printStackTrace();
}
	}
}
