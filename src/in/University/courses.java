package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/courses")
public class courses extends HttpServlet {
	private Connection con;
	private PreparedStatement stmt;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		try {
			InitialContext cxt = new InitialContext();
			DataSource ds = (DataSource) cxt.lookup("java:comp/env/myCon");
			con = ds.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try 
		{
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String duration = request.getParameter("duration");
			String fees = request.getParameter("fees");
			String seats = request.getParameter("seats");
			
			String sql="insert into university_courses(course_id,course_name,course_duration,course_fees,course_seat)values(?,?,?,?,?)";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, name);
			stmt.setString(3, duration);
			stmt.setString(4, fees);
			stmt.setString(5, seats);
			
			int res = stmt.executeUpdate();
			if(res>0)
			{
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			}
			else
			{
				out.println("<body><html><script>alert('Something Went Wrong');</script></html></body>");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
