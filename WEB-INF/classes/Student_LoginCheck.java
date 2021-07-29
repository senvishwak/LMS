import javax.servlet.*;
import database.databasecon;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(value="/Student_LoginCheck")
public class Student_LoginCheck extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{

String id= request.getParameter("id");
String password = request.getParameter("password");

try{
HttpSession session=request.getSession();
Connection con= databasecon.getconnection();

CallableStatement cs=con.prepareCall("{call stulogin(?,?)}");
cs.setString(1,id);
cs.setString(2, password);
ResultSet rs=cs.executeQuery();

if(rs.next()){
	String name=rs.getString("stuname");
	String email=rs.getString("stuemail");
	String branch =rs.getString("stubranch");
session.setAttribute("stuid", id);
session.setAttribute("stuname", name);
session.setAttribute("stuemail", email);
session.setAttribute("stubranch", branch);
response.sendRedirect("Student_Home.jsp");
}
else
	{
	response.sendRedirect("Student_Login.jsp?msg1=fail");
}

}
catch(Exception e)
		{
	e.printStackTrace();
}
	}
}
