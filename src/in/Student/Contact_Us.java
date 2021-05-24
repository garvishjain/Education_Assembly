package in.Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.common.GetConnection;
import in.common.hashed;

/**
 * Servlet implementation class Contact_Us
 */
@WebServlet("/Contact_Us")
public class Contact_Us extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement ps;
	
	
	public void init(ServletConfig config) throws ServletException
	{
		GetConnection getConObj=new GetConnection();
		 con=getConObj.getCon();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String num = request.getParameter("num");
		String college = request.getParameter("college");
		String msg = request.getParameter("msg");
		
		String sql="insert into contact_us(name,email,number,college_name,message)values(?,?,?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,num);
		ps.setString(4,college);
		ps.setString(5,msg);
		int res = ps.executeUpdate();
		
		hashed gethash = new hashed();
			if(res>0)
			{
				 response.sendRedirect("student/contacts.jsp?status="+gethash.getHash("CBCtrue")); 
				
			}
			else
			{
				 response.sendRedirect("student/contacts.jsp?status="+gethash.getHash("CBCtrue")); 
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
