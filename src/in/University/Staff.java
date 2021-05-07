package in.University;

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
import javax.servlet.http.Part;

import in.common.GetConnection;
import in.common.img;

/**
 * Servlet implementation class Staff
 */
@WebServlet("/Staff")
public class Staff extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;
	private String filename;
	private Part part;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		GetConnection getConnection = new GetConnection();
		con = getConnection.getCon();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try 
		{
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String gender = request.getParameter("gender");
			String designation = request.getParameter("designation");
			String position = request.getParameter("position");
			String number = request.getParameter("number");
			String email = request.getParameter("email");
			
			img image = new img();
			String img = image.image(filename, part);
			
			
			String sql="insert into university_staff(fname,lname,gender,designation,position,number,email,image)values(?,?,?,?,?,?,?,?)";
		
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, fname);
			stmt.setString(2, lname);
			stmt.setString(3, gender);
			stmt.setString(4, designation);
			stmt.setString(5, position);
			stmt.setString(6, number);
			stmt.setString(7, email);
			stmt.setString(8, img);
			
			int res = stmt.executeUpdate();
			
			if(res>0)
			{
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			}
			else
			{
				out.println("<body><html><script>alert('Something went wrong');</script></html></body>");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
