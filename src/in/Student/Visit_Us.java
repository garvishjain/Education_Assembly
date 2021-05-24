package in.Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.common.GetConnection;
import in.common.date;
import in.common.hashed;

/**
 * Servlet implementation class Visit_Us
 */
@WebServlet("/Visit_Us")
public class Visit_Us extends HttpServlet {
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
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		System.out.println(name+time+date);
		
		
		date dt = new date();
		String getdate = dt.Date(date);
	
		String sql="insert into visit_us(name,email,number,college,visit_date,visit_time)values(?,?,?,?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,num);
		ps.setString(4,college);
		ps.setString(5,getdate);
		ps.setString(6,time);
		int res = ps.executeUpdate();
		hashed gethash = new hashed();
			if(res>0)
			{
				 response.sendRedirect("student/visit-us.jsp?status="+gethash.getHash("CBCtrue")); 
			}
			else
			{
				 response.sendRedirect("student/visit-us.jsp?status="+gethash.getHash("CBCtrue")); 
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
