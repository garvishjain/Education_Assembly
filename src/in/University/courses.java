package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*import javax.servlet.http.Part;*/

import in.common.GetConnection;
/*import in.common.img;*/

@WebServlet("/courses")
@MultipartConfig
public class courses extends HttpServlet {
	private PreparedStatement stmt;
	private int coursename=123;
	private Connection con;
	private int dur=12;
	private int university=1234;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		 GetConnection getConObj=new GetConnection();
			con = getConObj.getCon();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try 
		{
			String u_id = request.getParameter("u_id")!=null?request.getParameter("u_id") : "";
			String id = request.getParameter("id")!=null?request.getParameter("id") : "";
			String type = request.getParameter("type")!=null?request.getParameter("type") : "";
			String name = request.getParameter("name")!=null?request.getParameter("name") : "";
			String duration = request.getParameter("duration")!=null?request.getParameter("duration") : "";
			String fees = request.getParameter("fees")!=null?request.getParameter("fees") : "";
			String seats = request.getParameter("seats")!=null?request.getParameter("seats") : "";
			/*Part part = request.getPart("image");
			String filename = part.getSubmittedFileName();
			
			img img = new img();
			String image = img.image(filename, part)!=null?img.image(filename,part) : "";*/
			
			String brief = request.getParameter("brief")!=null?request.getParameter("brief") : "";
			
			String sql1="select pk_id from course_name where course='"+name+"'";
			stmt = con.prepareStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);
			if (rs.next()) {
			 coursename = rs.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			
			String sql2="select pk_id from duration where duration='"+duration+"'";
			stmt = con.prepareStatement(sql2);
			ResultSet rs2 = stmt.executeQuery(sql2);
			if (rs2.next()) {
					dur = rs2.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			String sql3="select pk_id from university";
			stmt = con.prepareStatement(sql3);
			ResultSet rs3 = stmt.executeQuery(sql3);
			if (rs3.next()) {
					university = rs3.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			String sql="insert into university_courses(course_id,course_type,course_name,course_duration,course_fees,course_seat,course_brief,fk_university_id)values(?,?,?,?,?,?,?,?)";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, type);
			stmt.setInt(3, coursename);
			stmt.setInt(4, dur);
			stmt.setString(5, fees);
			stmt.setString(6, seats);
			stmt.setString(7, brief);
			stmt.setInt(8, university);
			
			
			int res = stmt.executeUpdate();
			if(res>0)
			{
				request.setAttribute("status", "succesfull login");
				response.sendRedirect("university/courses.jsp");
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			}
			else
			{
				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/courses.jsp");
				out.println("<body><html><script>alert('Something Went Wrong');</script></html></body>");
			}
			
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
	}

}
